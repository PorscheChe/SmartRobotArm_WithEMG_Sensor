import csv

with open('winequality-red.csv', 'r') as csv_file:
    reader = csv.reader(csv_file)

    for row in reader:
        print(row)