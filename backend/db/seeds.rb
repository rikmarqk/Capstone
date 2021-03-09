#Thisfileshouldcontainalltherecordcreationneededtoseedthedatabasewithitsdefaultvalues.
#Thedatacanthenbeloadedwiththebin/railsdb:seedcommand(orcreatedalongsidethedatabasewithdb:setup).
#
#Examples:
#
#movies=Movie.create([{name:'StarWars'},{name:'LordoftheRings'}])
#Character.create(name:'Luke',movie:movies.first)


User.destroy_all
Doctor.destroy_all
Pet.destroy_all
Playdate.destroy_all
Appointment.destroy_all
UserPet.destroy_all

#Users
ric=User.create(
username: "rikmarqk",
name:"Ricardo Marquez",
birthday:19911220,
email:"rikmarqk@gmail.com",
phone:2817984257,
img_url:"",
password: "rick"
)
mari=User.create(
username: "mardav",
name:"Mari Wafer",
birthday:19961011,
email:"maridav@gmail.com",
phone:2817984257,
img_url:"",
password: "mar"
)

#Doctors

Doctor.create(
name:"Ian Rand",
phone:2815559067,
credentials:"",
speciality:"",
bio:""
)
Doctor.create(
name:"Jenna Cawfey",
phone:7135557084,
credentials:"",
speciality:"",
bio:""
)
Doctor.create(
name:"David Fincher",
phone:8325552560,
credentials:"",
speciality:"",
bio:""
)

#Pets
speedy=Pet.create(name:"Speedy",pet_category:"Dog",breed:"Mixed Terrier",age:6,sex:"Male",status:"Adopted",cam_link:"",img_url:"https://i.ibb.co/dfG1pDH/IMG-2719.jpg",)
lark=Pet.create(name:"Lark",pet_category:"Dog",breed:"Golden Retriever",age:2,sex:"Male",status:"Available for Adoption",cam_link:"",img_url:"https://i.ibb.co/0csDy1g/B6-AB475-F-64-AB-408-C-9708-FBBB9-DBABE41.jpg",
)

Pet.create(name:"Ruby",pet_category:"Dog",breed:"Golden Retriever",age:1,sex:"Female",status:"Adopted",cam_link:"",img_url:"https://i.ibb.co/dKhthg6/8-F0-CFF05-76-EE-48-C2-977-B-FCDC3-C769948.jpg",
)


Pet.create(name:"Rudolf",pet_category:"Dog",breed:"Golden Retriever",age:9,sex:"Male",status:"Available for Adoption",cam_link:"",img_url:"https://i.ibb.co/L0T46MK/B3545-D9-C-2558-453-F-B7-F7-7-DF054544-D5-D.jpg",
)


Pet.create(name:"Mia",pet_category:"Dog",breed:"Golden Retriever",age:2,sex:"Female",status:"Fostered",cam_link:"",img_url:"https://i.ibb.co/8cR1mDz/6288-B691-4852-4003-93-F9-40-B30-D232-B82.jpg",
)

Pet.create(name:"Max",pet_category:"Dog",breed:"Doberman",age:2,sex:"Male",status:"Available for Adoption",cam_link:"",img_url:"https://i.ibb.co/nw820PD/97444-A9-F-54-E1-4-A2-F-9-EC6-EFC20815-B072.jpg",
)


Pet.create(name:"Izzy",pet_category:"Dog",breed:"Doberman",age:3,sex:"Male",status:"Adopted",cam_link:"",img_url:"https://i.ibb.co/K0XtRw8/5-A01-C014-DE9-A-42-D9-B905-22-F3-E232-B13-C.jpg",
)


Pet.create(name:"Scout",pet_category:"Dog",breed:"Doberman",age:3,sex:"Female",status:"Adopted",cam_link:"",img_url:"https://i.ibb.co/NjfMSct/E6-F40-C54-50-C5-4639-B149-3213-C3-F0-DF03.jpg",
)

Pet.create(name:"Hazel",pet_category:"Dog",breed:"Rottweiler",age:4,sex:"Female",status:"Adopted",cam_link:"",img_url:"https://i.ibb.co/4S9Vd3R/252-FC5-CF-70-DC-43-E2-9-A01-F80-E67-E32-C15.jpg",
)

Pet.create(name:"Rio",pet_category:"Dog",breed:"Rottweiler",age:4,sex:"Male",status:"Available for Adoption",cam_link:"",img_url:"https://i.ibb.co/vQ6zxFJ/AE4-DD9-B6-6-EE5-461-B-B86-D-BBD9-FD227-FB6.jpg",
)


Pet.create(name:"Luna",pet_category:"Dog",breed:"Rottweiler",age:6,sex:"Female",status:"Adopted",cam_link:"",img_url:"https://i.ibb.co/tsSqWyF/0991-BA2-F-66-A5-4-B86-939-B-B02063-CE5443.jpg",
)

Pet.create(name:"Coffee",pet_category:"Dog",breed:"Rottweiler",age:4,sex:"Male",status:"Fostered",cam_link:"",img_url:"https://i.ibb.co/b5XRZjh/701-E972-A-CB45-4-A19-BCEA-04687469-C84-A.jpg"
)

Pet.create(name:"Skye",pet_category:"Dog",breed:"Pitbull",age:4,sex:"Female",status:"Adopted",cam_link:"",img_url:"https://i.ibb.co/yFkwr4p/5-CE0097-D-1693-4550-8985-5504-D77-B9-E9-B.jpg",
)


Pet.create(name:"Jack",pet_category:"Dog",breed:"Pitbull",age:3,sex:"Male",status:"Available for Adoption",cam_link:"",img_url:"https://i.ibb.co/3RftCZK/54-FA7950-B5-E2-4510-8984-59912-A465-E1-A.jpg",
)


Pet.create(name:"Rocky",pet_category:"Dog",breed:"Pitbull",age:5,sex:"Male",status:"Available for Adoption",cam_link:"",img_url:"https://i.ibb.co/hZmK2Dn/D522-B7-EB-8-FF4-4477-92-AE-9-B0-E660195-F3.jpg",
)


Pet.create(name:"Buddy",pet_category:"Dog",breed:"Pitbull",age:2,sex:"Male",status:"Fostered",cam_link:"",img_url:"https://i.ibb.co/YNvB88B/82-E259-DB-79-A3-4326-A24-D-71799-DF5-EBBB.jpg",
)

Pet.create(name:"Holly",pet_category:"Dog",breed:"Chihuahua",age:5,sex:"Female",status:"Adopted",cam_link:"",img_url:"https://i.ibb.co/q5N75MG/D3-B204-CF-D0-A7-49-CD-B61-E-918-D3-E408-ACC.jpg",
)

Pet.create(name:"Java",pet_category:"Dog",breed:"Chihuahua",age:2,sex:"Male",status:"Available for Adoption",cam_link:"",img_url:"https://i.ibb.co/CHqtyhG/EF36-CFD4-983-E-4-C76-ADF6-A96-EAC4-B5-AEE.jpg",
)


Pet.create(name:"Mocha",pet_category:"Dog",breed:"Chihuahua",age:2,sex:"Female",status:"Available for Adoption",cam_link:"",img_url:"https://i.ibb.co/jgpj041/FF2-A49-C1-B137-4-E44-97-D0-5847-CE0-B9-FB2.jpg",
)

Pet.create(name:"Rocco",pet_category:"Dog",breed:"German Shepherd",age:10,sex:"Male",status:"Available for Adoption",cam_link:"",img_url:"https://i.ibb.co/PDz4Kgj/4922-EFBE-E929-4378-A814-4-DBD208-C8-EEC.jpg",
)

Pet.create(name:"Tesla",pet_category:"Dog",breed:"German Shepherd",age:3,sex:"Female",status:"Adopted",cam_link:"",img_url:"https://i.ibb.co/31w2ZkH/72-A1-FA4-C-F2-B8-4725-A1-E0-19-D18-AEEE895.jpg",
)

Pet.create(name:"Loki",pet_category:"Dog",breed:"German Shepherd",age:8,sex:"Male",status:"Available for Adoption",cam_link:"",img_url:"https://i.ibb.co/JBVfZgx/77-E7533-A-8530-4417-956-A-AE3791103645.jpg",
)

Pet.create(name:"Sammy",pet_category:"Dog",breed:"German Shepherd",age:4,sex:"Male",status:"Adopted",cam_link:"",img_url:"https://i.ibb.co/3fT0Xs1/18-F3-A7-E3-5114-47-B6-9-AD5-CB10692-BAC2-C.jpg",
)

Pet.create(name:"Sandie",pet_category:"Dog",breed:"Poodle",age:2,sex:"Female",status:"Fostered",cam_link:"",img_url:"https://i.ibb.co/HKFVD0Y/7-CED5-D26-3-B52-44-DA-8-C54-B2791-E19-D674.jpg",
)

Pet.create(name:"Puffin",pet_category:"Dog",breed:"Poodle",age:4,sex:"Male",status:"Adopted",cam_link:"",img_url:"https://i.ibb.co/pnFg57j/8-A76268-F-5460-4-D5-C-81-A5-9-A88-A9771783.jpg",
)

Pet.create(name:"Molly",pet_category:"Dog",breed:"Poodle",age:1,sex:"Female",status:"Available for Adoption",cam_link:"",img_url:"https://i.ibb.co/sKgFMTY/81919920-418-A-4136-A280-533362-C86467.jpg",
)

Pet.create(name:"Milo",pet_category:"Dog",breed:"Siberian Husky",age:1,sex:"Male",status:"Available for Adoption",cam_link:"",img_url:"https://i.ibb.co/8DwFDzx/7-FDBE110-44-C2-4684-8-D37-27-E7-A287-B910.jpg",
)

Pet.create(name:"Leo",pet_category:"Dog",breed:"Siberian Husky",age:2,sex:"Male",status:"Available for Adoption",cam_link:"",img_url:"https://i.ibb.co/DkmGWxn/5-B60-F4-F2-40-A6-49-AA-A644-6-C16971-D42-EA.jpg",
)

Pet.create(name:"Thor",pet_category:"Dog",breed:"Siberian Husky",age:5,sex:"Male",status:"Fostered",cam_link:"",img_url:"https://i.ibb.co/gyM7zXy/37-A23-D28-FCF5-4-E9-C-AA25-A8-E34261-B204.jpg",
)

Pet.create(name:"Stella",pet_category:"Dog",breed:"Siberian Husky",age:10,sex:"Female",status:"Adopted",cam_link:"",img_url:"https://i.ibb.co/6sKGm8m/D397-AF1-A-980-E-4-B77-85-E4-CCB4315364-E3.jpg",
)

Pet.create(name:"Mike",pet_category:"Dog",breed:"Siberian Husky",age:1,sex:"Male",status:"Available for Adoption",cam_link:"",img_url:"https://i.ibb.co/2W3JP3j/073229-CB-8121-4-D2-C-BB27-95-CD4-FF130-E8.jpg",
)

Pet.create(name:"Ale",pet_category:"Dog",breed:"Corgi",age:2,sex:"Male",status:"Adopted",cam_link:"",img_url:"https://i.ibb.co/SJQbj6R/10-F5316-F-21-BE-46-B3-B9-D5-8951-A22-A3-C16.jpg",
)


Pet.create(name:"Fred",pet_category:"Dog",breed:"Corgi",age:4,sex:"Male",status:"Available for Adoption",cam_link:"",img_url:"https://i.ibb.co/qDdNkWb/59-E00-B60-A604-4445-88-E6-677-C0364-D317.jpg",
)


Pet.create(name:"Maggie",pet_category:"Dog",breed:"Corgi",age:4,sex:"Female",status:"Available for Adoption",cam_link:"",img_url:"https://i.ibb.co/1dCV16W/3-E395-B01-70-E9-4-E94-8471-B2-A523446-A66.jpg",
)


Pet.create(name:"Zoey",pet_category:"Dog",breed:"Corgi",age:7,sex:"Female",status:"Available for Adoption",cam_link:"",img_url:"https://i.ibb.co/W0599cV/00-C7-A293-FD80-4985-8045-418-ED486-D456.jpg",
)

bacon=Pet.create(name:"Bacon",pet_category:"Dog",breed:"Corgi",age:5,sex:"Male",status:"Adopted",cam_link:"",img_url:"https://i.ibb.co/W6YWMQ6/915-CE986-DF05-486-C-B375-5-DF3-BA8-BC991.jpg",
)

Pet.create(name:"Hollister",pet_category:"Cat",breed:"Russian Blue",age:6,sex:"Male",status:"Available for Adoption",cam_link:"",img_url:"https://i.ibb.co/PtYvB8M/A98-B2502-70-FE-4-A14-84-CE-4-CD0-B9-E93-C65.jpg",
)

Pet.create(name:"Gizmo",pet_category:"Cat",breed:"Russian Blue",age:1,sex:"Male",status:"Fostered",cam_link:"",img_url:"https://i.ibb.co/XpMzj99/438092-ED-71-F7-4-FC0-8-B3-F-11-A70-A39-F357.jpg",
)

Pet.create(name:"Greybeard",pet_category:"Cat",breed:"Russian Blue",age:7,sex:"Male",status:"Adopted",cam_link:"",img_url:"https://i.ibb.co/yQWQrWt/39-D771-C0-FFEA-4497-BB1-B-F1-CA59386-AEE.jpg",
)

Pet.create(name:"Dexter",pet_category:"Cat",breed:"Birman",age:9,sex:"Male",status:"Adopted",cam_link:"",img_url:"https://i.ibb.co/GWXcM0T/C226-BE44-E04-A-443-E-B7-D5-0270-BDFF42-EF.jpg",
)

Pet.create(name:"Lola",pet_category:"Cat",breed:"Birman",age:3,sex:"Female",status:"Fostered",cam_link:"",img_url:"https://i.ibb.co/NjhKbQL/54266-CDF-0-D5-A-4-E5-F-A6-E0-8-F8-B2-C0-B0-F33.jpg",
)

Pet.create(name:"Henry",pet_category:"Cat",breed:"Maine Coon",age:6,sex:"Male",status:"Available for Adoption",cam_link:"",img_url:"https://i.ibb.co/Sdb6tvs/02-D68744-E572-4-C4-B-B526-62-D4936-A0381.jpg",
)

Pet.create(name:"Ziggy",pet_category:"Cat",breed:"Maine Coon",age:8,sex:"Female",status:"Available for Adoption",cam_link:"",img_url:"https://i.ibb.co/DLcnKyC/1589149-B-076-C-43-D4-BE5-A-E7-F693732-DA9.jpg",
)

Pet.create(name:"Cody",pet_category:"Cat",breed:"Ragdoll",age:1,sex:"Male",status:"Fostered",cam_link:"",img_url:"https://i.ibb.co/1J4rs3Q/F5632-E12-B364-479-E-93-F7-1-A78-BE9-B3-B36.jpg",
)

Pet.create(name:"Roxy",pet_category:"Cat",breed:"Ragdoll",age:4,sex:"Female",status:"Lost/Missing",cam_link:"",img_url:"https://i.ibb.co/q1NDM7L/D80-B3449-E3-B6-4-B2-F-8230-EDBC6-C8400-B7.jpg",
)

Pet.create(name:"Harriet",pet_category:"Cat",breed:"Ragdoll",age:5,sex:"Female",status:"Adopted",cam_link:"",img_url:"https://i.ibb.co/qmfKgLH/F46-FFAD6-1121-427-A-94-A0-CC5655-EDEDED.jpg",
)
Pet.create(name:"Spot",pet_category:"Dog",breed:"Dalmatian",age:3,sex:"Male",status:"Missing",cam_link:"",img_url:"https://i.ibb.co/p34khVH/IMG-6769.jpg",
)


#UserPets

UserPet.create(
user_id:ric.id,
pet_id:speedy.id,
)
UserPet.create(
user_id:mari.id,
pet_id:speedy.id,
)
UserPet.create(
user_id:ric.id,
pet_id:lark.id,
)
UserPet.create(
user_id:mari.id,
pet_id:bacon.id,
)

#Appointments

Appointment.create(
doctor_id:Doctor.first.id,
user_pet_id:UserPet.first.id,
date:20211224,
time:1300
)
Appointment.create(
doctor_id:Doctor.third.id,
user_pet_id:UserPet.second.id,
date:20211012,
time:1100
)
Appointment.create(
doctor_id:Doctor.second.id,
user_pet_id:UserPet.first.id,
date:20210128,
time:1500
)


#Playdates

Playdate.create(

user_id:User.first.id,
pet_id:Pet.first.id,
date:20201224,
time:1300,
location:"Meyer Park"
)
Playdate.create(

user_id:User.second.id,
pet_id:Pet.third.id,
date:20201012,
time:1100,
location:"Jay Edgar Hoover Dog Park"
)
Playdate.create(

user_id:User.first.id,
pet_id:Pet.first.id,
date:20200128,
time:1500,
location:"Belleview Park"
)