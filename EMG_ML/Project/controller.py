import serial
import joblib
import sklearn
import pandas as pd
from sklearn.model_selection import train_test_split
#filename = '../rfModel.joblib'
#data = pd.read_csv('../data.csv')
#X = data.drop('status', axis=1)
#y = data['status']
#X_train, X_test, y_train, y_test = train_test_split(X, y, test_size =0.20, random_state =101)
#
#try:
#    rfModel = joblib.load(filename)
#    print("Model Loaded Successfully")
#    print(f'Prediction Score {rfModel.score(X_test,y_test)}')
#except Exception as e:
#    print(e)

try:
    ser = serial.Serial(port='COM3', baudrate=9600)
    while True:
        controller = input("Select Controller >> ")
        match controller:
            case '1':
                ser.write("1".encode())
                print(ser.readlines(4096).decode())
                if input("Proxy Prediction") == 1:
                    ser.write(1)
                    recv = ser.readlines(4096)
                    print(recv.decode())
                else:
                    ser.write(bytes('0', 'utf-8'))
                    recv = ser.readlines(4096)
                    print(recv.decode())
        if input("Change Mode? (N to quit) Y/N >> ").lower() != 'y':
            break
                
except KeyboardInterrupt:
    print(KeyboardInterrupt)