# 📘 User Booking Management System

A simple **Spring MVC + Hibernate JPA + MySQL** web application for managing user booking details.
The application supports **Create, View, Edit, Delete**, and **List** operations for user game bookings.

---

## 🚀 Features

* Add new user booking details
* View all booking entries in a list
* Edit existing booking
* Delete booking
* View full details of a selected booking
* Uses **Spring MVC (XML-based configuration)**
* Uses **Hibernate/JPA** for ORM
* JSP + JSTL for front-end
* MySQL as the database

---

## 🛠️ Technologies Used

| Layer      | Technology             |
| ---------- | ---------------------- |
| Backend    | Java, Spring MVC       |
| ORM        | Hibernate JPA          |
| Frontend   | JSP, JSTL, HTML        |
| Build Tool | Maven                  |
| Database   | MySQL                  |
| Server     | Tomcat / Apache Tomcat |

---

## 📂 Project Structure

```
src/main/java
 └── com
      ├── controller
      │   └── BookingController.java
      ├── model
      │   └── UserBooking.java
      ├── repository
      │   └── UserBookingRepository.java
      └── service
          └── BookingService.java

src/main/webapp
 ├── WEB-INF
 │    ├── multi.xml          # Spring configuration
 │    ├── web.xml            # Dispatcher servlet config
 │    └── views              # JSP pages
 │         ├── create.jsp
 │         ├── list-userbooking.jsp
 │         ├── view-userbooking.jsp
 │         └── home.jsp
 └── index.jsp (if present)

pom.xml
```

---

## 📦 Database Setup (MySQL)

Create the table manually or let Hibernate auto-generate it using `hibernate.hbm2ddl.auto=update`.

### SQL Schema

```sql
CREATE TABLE UserBookingDetails (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  uname VARCHAR(100),
  mobileno BIGINT,
  gname VARCHAR(100),
  playTimeFrom VARCHAR(50),
  playTimeTo VARCHAR(50),
  amountPayed FLOAT
);
```

---

## ⚙️ How to Run the Project

### **1️⃣ Clone the repository**

```bash
https://github.com/Ranjithapriya14/BookingDetails.git
cd <your-repository>
```

### **2️⃣ Configure MySQL**

Update your DB username & password in:

```
src/main/webapp/WEB-INF/multi.xml
```

Example:

```xml
<property name="url" value="jdbc:mysql://localhost:3306/java1"/>
<property name="username" value="root"/>
<property name="password" value="Ranjurp1408@"/>
```

### **3️⃣ Build the project**

```bash
mvn clean install
```

### **4️⃣ Deploy to Tomcat**

* Copy the generated WAR file from `target/`
* Deploy on Tomcat (webapps folder or via manager console)

### **5️⃣ Run the Application**

Open browser:

```
http://localhost:8080/BookingDetails/
```

---

## 📌 URL Endpoints

| URL                               | Purpose               |
| --------------------------------- | --------------------- |
| `/userbookingdetails/new`         | Add new booking       |
| `/userbookingdetails/list`        | View all bookings     |
| `/userbookingdetails/view/{id}`   | View a single booking |
| `/userbookingdetails/edit/{id}`   | Edit booking          |
| `/userbookingdetails/delete/{id}` | Delete booking        |

---

## 🤝 Contributing

Pull requests are welcome!
Feel free to fork this repository and submit improvements.

---

## 📝 License

This project is open-source and available under the **MIT License**.
