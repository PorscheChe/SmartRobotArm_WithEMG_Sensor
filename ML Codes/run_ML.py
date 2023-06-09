import serial
import time
import joblib
import pandas as pd
from sklearn.model_selection import train_test_split
import sklearn
import numpy as np
filename = '../rfModel.joblib'

rf_model = joblib.load(filename)
data = pd.read_csv('../data.csv')
X = data.drop('status', axis=1)
y = data['status']
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size =0.20, random_state =101)

serialcomm = serial.Serial('COM3', 9600)
serialcomm.timeout = 2
serialPico = serial.Serial('COM9', 9600)
serialPico.timeout = 2

print("SMART ROBOTIC HAND WITH EMG SENSOR")
print("Please Select 1 of 3 Modes")
print(" - EMG        (emg)")
print(" - Flex Glove (flex)")
print(" - CLI        (cli)")
while True:
    i = input("Enter Input: ").lower().strip()
    if i == "ex":
        print('Quiting Program...')
        break
    elif i == "emg":
        in_data = []
        while(True):
            incoming_data = serialPico.readline().decode()
            if incoming_data:
                in_data.append(float(incoming_data))
            if len(in_data)> 500:
                break
        in_dataDF = pd.DataFrame(in_data, columns=['inData'])
        print(str(in_dataDF.mean()).replace("inData","").replace("dtype: float64",""))
        #status = np.array([[str(in_dataDF.mean()).replace("inData","").replace("dtype: float64","").strip()],[str(in_dataDF.median()).replace("inData","").replace("dtype: float64","").strip()],[ str(in_dataDF.std()).replace("inData","").replace("dtype: float64","").strip()]])
        prediction = pd.DataFrame(pd.DataFrame({'Mean Val':str(in_dataDF.mean()).replace("inData","").replace("dtype: float64","").strip(), 'Med Val':str(in_dataDF.median()).replace("inData","").replace("dtype: float64","").strip(), 'SD Val': str(in_dataDF.std()).replace("inData","").replace("dtype: float64","").strip()},index=['row1']))
        print(prediction)
        result = str(rf_model.predict(prediction)).replace("[","").replace("]","")
        print('The predicted value is {}'.format(result))
        serialcomm.write(i.encode())
        print(serialcomm.readline().decode('ascii'))
        serialcomm.write(result.encode())
        print(serialcomm.readline().decode('ascii'))
        del in_dataDF
        del in_data
    serialcomm.write(i.encode())
    time.sleep(0.5)
    print(serialcomm.readline().decode('ascii'))

serialcomm.close()
serialPico.close()