Patient.destroy_all
p1 = Patient.create :name => "Damien Lowe", :dob =>"1988-11-06", :address => "E808/310 Oxford Street, Bondi Junction", :phone => "0403288933", :medicare => "2295414382", :health_fund => "NIB", :email => "ashleydamienlowe@gmail.com", :password => "chicken"
p2 = Patient.create :name => "Patient Two", :dob => "1983-01-02", :address => "74 Crown Street, Surry Hills", :phone => "0420193293", :medicare => "2535689584", :health_fund => "HCF", :email => "patientTwo@gmail.com", :password => "chicken"
p3 = Patient.create :name => "Patient Three", :dob => "1974-05-22", :address => "321 Gabba Street, Brisbane", :phone => "0424412328", :medicare => "9380579278", :health_fund => "Medibank", :email => "patientThree@gmail.com", :password => "chicken"
p4 = Patient.create :name => "Patient Four", :dob => "1995-07-13", :address => "999 WACA Street, Perth", :phone => "0459812863", :medicare => "9210579302", :health_fund => "Teachers Health", :email => "patientFour@gmail.com", :password => "chicken"
p5 = Patient.create :name => "Patient Five", :dob => "2004-09-28", :address => "78 MCG Avenue, Melbourne", :phone => "0402964105", :medicare => "1089872651", :health_fund => "Bupa", :email => "patientFive@gmail.com", :password => "chicken"
p6 = Patient.create :name => "Patient Six", :dob => "2001-10-03", :address => "66 SCG Parade, Sydney", :phone => "0412469444", :medicare => "1856483726", :health_fund => "NIB", :email => "patientSix@gmail.com", :password => "chicken"
p7 = Patient.create :name => "Patient Seven", :dob => "1972-12-18", :address => "32 Adelaide Oval Lane, Adelaide", :phone => "0405928001", :medicare => "1948548273", :health_fund => "Navy Health", :email => "patientSeven@gmail.com", :password => "chicken"
p8 = Patient.create :name => "Patient Eight", :dob => "1945-03-22", :address => "65 Centennial Park Drive, Sydney", :phone => "0459384723", :medicare => "0394760394", :health_fund => "NIB", :email => "patientEight@gmail.com", :password => "chicken"

Doctor.destroy_all
d1 = Doctor.create :name => "Doctor One", :provider_number => "423764A", :phone => "91234234", :dob => "1968/02/23", :address => "82 Elizabeth Street, Sydney", :email => "doctorOne@gmail.com", :password => "chicken"
d2 = Doctor.create :name => "Doctor Two", :provider_number => "928475B", :phone => "92231485", :dob => "1968/02/23", :address => "153 Macquarie Street, Sydney", :email => "doctorTwo@gmail.com", :password => "chicken"
d3 = Doctor.create :name => "Doctor Three", :provider_number => "957482C", :phone => "98822746", :dob => "1968/02/23", :address => "9 George Street, Sydney", :email => "doctorThree@gmail.com", :password => "chicken"
d4 = Doctor.create :name => "Doctor Four", :provider_number => "193875D", :phone => "91847263", :dob => "1968/02/23", :address => "3 Foveaux Street, Surry Hills", :email => "doctorFour@gmail.com", :password => "chicken"
d5 = Doctor.create :name => "Doctor Five", :provider_number => "857364E", :phone => "93378294", :dob => "1968/02/23", :address => "87 Queen Street, Woollhara", :email => "doctorFive@gmail.com", :password => "chicken"
d6 = Doctor.create :name => "Doctor Six", :provider_number => "109573F", :phone => "92551844", :dob => "1968/02/23", :address => "9 Ward Avenue, Potts Point", :email => "doctorSix@gmail.com", :password => "chicken"
d7 = Doctor.create :name => "Doctor Seven", :provider_number => "995733G", :phone => "98742212", :dob => "1968/02/23", :address => "77 Dixon Street, Alexandria", :email => "doctorSeven@gmail.com", :password => "chicken"
d8 = Doctor.create :name => "Doctor Eight", :provider_number => "987234H", :phone => "92341284", :dob => "1973/01/12", :address => "88 Liverpool Street, Sydney", :email => "doctorEight@gmail.com", :password => "chicken"

Hospital.destroy_all
h1 = Hospital.create :name => "St Vincent's Hospital", :address => "390 Victoria Street, Darlinghurst", :phone => "83821111", :email => "admin@@svha.org.au"
h2 = Hospital.create :name => "Royal Prince Alfred Hospital", :address => "50 Missenden Road, Camperdown", :phone => "95156111", :email => "admin@rpa.org.au"
h3 = Hospital.create :name => "Prince of Wales Hospital", :address => "Barker Street, Randwick", :phone => "93822222", :email => "admin@pow.org.au"
h4 = Hospital.create :name => "Sydney Eye Hospital", :address => "8 Macquarie Street, Sydney", :phone => "93827408", :email => "admin@sydhospital.org.au"
h5 = Hospital.create :name => "Royal North Shore Hospital", :address => "Reserve Road, St. Leonards", :phone => "9926 7111", :email => "rnsh@org.au"
h6 = Hospital.create :name => "St George Hospital", :address => "Belgrave Street, Kogarah", :phone => "91131111", :email => "sgh@orh.au"
h7 = Hospital.create :name => "Southern Radiology Bondi Junction", :address => "Ground Floor, 3 Waverly Street", :phone => "83057800", :email => "bondijunction@southernradiology.com.au"
h8 = Hospital.create :name => "Edgecliff Medical Centre", :address => "285 New South Head Road, Edgeclidd ", :phone => "93282900", :email => "emc@org.au"

Referral.destroy_all
r1 = Referral.create
r2 = Referral.create
r3 = Referral.create
r4 = Referral.create
r5 = Referral.create
r6 = Referral.create
r7 = Referral.create
r8 = Referral.create
