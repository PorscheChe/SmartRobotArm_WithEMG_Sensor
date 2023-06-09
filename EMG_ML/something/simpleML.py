from collections import Counter

def predict(fruit):
	# Count the number of apples and oranges in the training data
    num_apples = sum([1 for f in training_data if f[-1] == 'apple'])
    num_oranges = sum([1 for f in training_data if f[-1] == 'orange'])
    if fruit == "apple":  
        print(num_apples)
    else:
        print(num_oranges)
	
# Create a training dataset
training_data = [
	['red', 'round', 'apple'],
	['red', 'oval', 'apple'],
    ['red','square','apple'],
    ['red','hexagon','apple'],
	['yellow', 'round', 'orange'],
	['yellow', 'oval', 'orange']
]

# Predict the label of the test fruit
prediction = predict("orange")   