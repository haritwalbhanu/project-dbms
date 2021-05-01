# This file will be used to generate all required csv files for this project
# This will generate random data for Hospital, patient and patient_report entity.

import csv
import random
import os

# Code to write hospital.csv file
# Writing for 50 hospitals with random data
with open('hospitals.csv', 'w', newline='') as csv_file:
    fieldNames = ['id', 'name', 'loc_x', 'loc_y', 'oxygen_beds_available', 'icu_beds_available']
    csv_writer = csv.DictWriter(csv_file, fieldnames=fieldNames)

    for _i in range(1,51):
        line = {}
        line['id'] = _i
        line['name'] = 'hospital'+str(_i)
        line['loc_x'] = random.randint(0, 100)
        line['loc_y'] = random.randint(0, 100)
        line['oxygen_beds_available'] = random.randint(0, 50)
        line['icu_beds_available'] = random.randint(0, 20)
        csv_writer.writerow(line)


# Code to write patient.csv file
# Writing for 10000 patients with random data
with open('patients.csv', 'w', newline='') as csv_file:
    fieldNames = ['id', 'name', 'loc_x', 'loc_y', 'covid_sev']
    csv_writer = csv.DictWriter(csv_file, fieldnames=fieldNames)

    for _i in range(1,10001):
        line = {}
        line['id'] = _i
        line['name'] = 'patient'+str(_i)
        line['loc_x'] = random.randint(0, 100)
        line['loc_y'] = random.randint(0, 100)
        line['covid_sev'] = random.randint(1, 5)
        csv_writer.writerow(line)

# Code to write patient_report.csv file
# Writing for 10000 patients and 50 hospitals with random data
with open('patient_reports.csv', 'w', newline='') as csv_file:
    fieldNames = ['id', 'patient_id', 'hospital_id', 'is_fatal']
    csv_writer = csv.DictWriter(csv_file, fieldnames=fieldNames)

    for _i in range(1,10001):
        line = {}
        line['id'] = _i
        line['patient_id'] = _i
        line['hospital_id'] = random.randint(1, 50)
        line['is_fatal'] = random.randint(0, 1)
        csv_writer.writerow(line)
        

