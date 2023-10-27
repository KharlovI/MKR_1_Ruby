require_relative 'main'

patient = Patient.new(1, 'Doe', 'John', 'Smith', '123 Main St', 12345, 'Fever')
unless patient.GetId == 1 && patient.GetLastName == 'Doe' && patient.GetFirstName == 'John' &&
  patient.GetMiddleName == 'Smith' && patient.GetAddress == '123 Main St' &&
  patient.GetMedicalCardNumber == 12345 && patient.GetDiagnosis == 'Fever'
  puts 'Test 1: Failed'
end

patients = Patient.create_patient_array(3)
unless patients.length == 3
  puts 'Test 2: Failed'
end

patient = Patient.new(1, 'Doe', 'John', 'Smith', '123 Main St', 12345, 'Fever')
expected_string = "Patient: Doe John Smith\nAddress: 123 Main St\nMCN: 12345\nDiagnosis: Fever"
unless patient.toString == expected_string
  puts 'Test 3: Failed'
end

patients = [
  Patient.new(1, 'Doe', 'John', 'Smith', '123 Main St', 12345, 'Fever'),
  Patient.new(2, 'Smith', 'Jane', 'Doe', '456 Elm St', 54321, 'Cough'),
  Patient.new(3, 'Johnson', 'Bob', 'Brown', '789 Oak St', 98765, 'Fever')
]

find_patients_with_diagnosis(patients, 'Cough')
patients = [
  Patient.new(1, 'Doe', 'John', 'Smith', '123 Main St', 12345, 'Fever'),
  Patient.new(2, 'Smith', 'Jane', 'Doe', '456 Elm St', 54321, 'Cough'),
  Patient.new(3, 'Johnson', 'Bob', 'Brown', '789 Oak St', 98765, 'Fever')
]

patients_in_card_number_range(patients, 54320, 98766)