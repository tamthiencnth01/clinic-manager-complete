class App {
    static BASE_URL_PATIENT = "http://localhost:8080/api/patients";
    static BASE_URL_WARD = "http://localhost:8080/api/wards";
    static BASE_URL_DOCTOR = "http://localhost:8080/api/doctors";
    static BASE_URL_MEDICAL_BILL = "http://localhost:8080/api/bills";
    static BASE_URL_EMPLOYEE = "http://localhost:8080/api/employees";
    static BASE_URL_EMPLOYEETYPE = "http://localhost:8080/api/employee-types";
    static BASE_URL_DEPARTMENT = "http://localhost:8080/api/departments";
    static BASE_URL_POSITION = "http://localhost:8080/api/positions";
    static BASE_URL_MEDICINE = "http://localhost:8080/api/medicines";
    static BASE_URL_MEDICINE_CATEGORY = "http://localhost:8080/api/medicineCategories";

    static showDeleteConfirmDialog() {
        return Swal.fire({
            icon: 'warning',
            text: 'Are you sure you want to delete the selected data ?',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, delete it !',
            cancelButtonText: 'Cancel',
        })
    }

    static showSuccessAlert(t) {
        Swal.fire({
            icon: 'success',
            title: t,
            position: 'top-end',
            showConfirmButton: false,
            timer: 1500
        })
    }

    static showErrorAlert(t) {
        Swal.fire({
            icon: 'error',
            title: 'Warning',
            text: t,
        })
    }
}

class Patient {
    constructor(id, name, phone, cmnd, dob, ward) {
        this.id = id;
        this.name = name;
        this.phone = phone;
        this.cmnd = cmnd;
        this.dob = dob;
        this.ward = ward;
    }
}


class MedicalBill {
    constructor(id, employee, patient,medicine, dateOnExamination, symptom) {
        this.id = id;
        this.employee = employee;
        this.patient = patient;
        this.medicine = medicine;
        this.dateOnExamination = dateOnExamination;
        this.symptom = symptom;
    }
}

class Employee {
    constructor(id, avatar, fullName, dob, gender, email, phone, address, workResume, employeeType, department, position) {
        this.id = id;
        this.avatar = avatar;
        this.fullName = fullName;
        this.dob = dob;
        this.gender = gender;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.workResume = workResume;
        this.employeeType = employeeType;
        this.department = department;
        this.position = position;
    }
}

class Medicine {
    constructor(id, name, ingredients, salePrice, importPrice, dailyDefaultAmount, unit, howToUse, note, medicineCategory) {
        this.id = id;
        this.name = name;
        this.ingredients = ingredients;
        this.salePrice = salePrice;
        this.importPrice = importPrice;
        this.dailyDefaultAmount = dailyDefaultAmount;
        this.unit = unit;
        this.howToUse = howToUse;
        this.note = note;
        this.medicineCategory = medicineCategory;
    }
}

class MedicineCategory {
    constructor(id, name) {
        this.id = id;
        this.name = name;
    }
}
