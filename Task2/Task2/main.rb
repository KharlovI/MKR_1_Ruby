class Patient
  def SetId(value)
    @id = value
  end
  def GetId
    @id
  end
  def SetLastName(value)
    @last_name = value
  end
  def GetLastName
    @last_name
  end
  def SetFirstName(value)
    @first_name = value
  end
  def GetFirstName
    @first_name
  end
  def SetMiddleName(value)
    @middle_name = value
  end
  def GetMiddleName
    @middle_name
  end
  def SetAddress(value)
    @address = value
  end
  def GetAddress
    @address
  end
  def SetMedicalCardNumber(value)
    @medical_card_number = value
  end
  def GetMedicalCardNumber
    @medical_card_number
  end
  def SetDiagnosis(value)
    @diagnosis = value
  end
  def GetDiagnosis
    @diagnosis
  end

  def initialize(id, last_name, first_name, middle_name, address, medical_card_number, diagnosis)
    @id = id
    @last_name = last_name
    @first_name = first_name
    @middle_name = middle_name
    @address = address
    @medical_card_number = medical_card_number
    @diagnosis = diagnosis
  end

  def self.create_patient_array(size)
    patients = []
    size.times do |id|
      patients << Patient.new(id + 1, "Patient " + id.to_s, "Name "+id.to_s, "Middle name "+id.to_s, "Address "+id.to_s, id, "Diagnosis " + (id%5).to_s)
    end
    return patients
  end

  def toString
    "Patient: #{@last_name} #{@first_name} #{@middle_name}\nAddress: #{@address}\nMCN: #{@medical_card_number}\nDiagnosis: #{@diagnosis}"
  end

  def display_patient(criteria)
    if criteria[:id] && criteria[:id] != @id
      return
    end

    if criteria[:last_name] && criteria[:last_name] != @last_name
      return
    end

    if criteria[:first_name] && criteria[:first_name] != @first_name
      return
    end

    if criteria[:diagnosis] && criteria[:diagnosis] != @diagnosis
      return
    end

    puts "Patient: #{@last_name} #{@first_name} #{@middle_name}"
    puts "Address: #{@address}"
    puts "MCN: #{@medical_card_number}"
    puts "Diagnosis: #{@diagnosis}"
    puts "-------------------------"
  end

end

def find_patients_with_diagnosis(patients, diagnosis)
  patients_with_diagnosis = patients.select { |patient| patient.GetDiagnosis == diagnosis }
  if patients_with_diagnosis.empty?
    puts "Patient not found"
  else
    puts "Patient with diagnosis '#{diagnosis}':"
    patients_with_diagnosis.each do |patient|
      puts patient.toString
      puts "-------------------------"
    end
  end
end

def patients_in_card_number_range(patients, a, b)
  matching_patients = patients.select { |patient| (a..b).cover?(patient.GetMedicalCardNumber.to_i) }
  if matching_patients.empty?
    puts "Patient not found"
  else
    puts "Patient:"
    matching_patients.each do |patient|
      puts patient.toString
      puts "-------------------------"
    end
  end
end