# 👥 EmployeeHub (JSP + Servlet + JDBC)

A comprehensive Java-based web application for managing employee records with user authentication, registration, and employee directory features. Built with JSP, Servlet, and MySQL, featuring a responsive web interface.

## ✅ Features

* 🔐 **User Login** - Secure employee login with authentication
* 📝 **User Registration** - New user account creation with validation
* 👤 **User Profile** - View and manage employee profile information
* 📋 **Employee Directory** - Browse complete list of all employees
* 📞 **Contact Information** - View employee contact details
* ℹ️ **About Section** - Company and application information
* 🎨 **Responsive UI** - Mobile-friendly web interface
* 💾 **MySQL Database** - Persistent data storage with JDBC
* 🧱 **Modular Architecture** - Clean separation of concerns with MVC pattern

## 📁 Project Structure

```
EmployeeHub/
│
├── src/main/java/com/jbk/
│   ├── Directory.java                  # Employee directory servlet
│   ├── HrLogin.java                    # HR login servlet
│   ├── Login.java                      # Employee login servlet
│   └── Registration.java               # User registration servlet
│
├── webapp/
│   ├── META-INF/                       # Manifest files
│   ├── WEB-INF/                        # Web configuration files
│   ├── registration.css                # Registration page styles
│   ├── Registration.html               # Registration page
│   ├── about.html                      # About page
│   ├── contact.html                    # Contact page
│   ├── directory.jsp                   # Employee directory (JSP)
│   ├── home.css                        # Home page styles
│   ├── Home.html                       # Home page
│   ├── hrlogin.html                    # HR login page
│   ├── hrprofile.html                  # HR profile page
│   └── login.css                       # Login page styles
│
└── README.md                           # Project documentation
```

## 🛠 Technologies Used

* **💻 Java** - JDK 8+ (Backend logic and servlets)
* **🌐 JSP (JavaServer Pages)** - Dynamic web content generation
* **⚙️ Servlet API** - Request-response handling
* **🗃 MySQL** - Database for persistent data storage
* **🔌 JDBC** - Java Database Connectivity
* **🎨 HTML5** - Web page structure
* **💅 CSS3** - Styling and responsive design
* **📦 Apache Tomcat** - Web server (recommended v9.0+)
* **🖥️ IDE** - Eclipse IDE for Enterprise Java Developers (recommended)

## 🗄 Database Configuration

### Step 1: Create MySQL Database

### Step 2: Update Database Credentials

Update your database connection with MySQL credentials in your connection utility

### Step 3: Download MySQL JDBC Driver

Download `mysql-connector-java-8.0.x.jar` from [MySQL Official Website](https://dev.mysql.com/downloads/connector/j/) and add it to WEB-INF/lib/ directory.

## 🚀 How to Run

### Using Eclipse IDE

1. **Clone or Import the repository:**
   ```bash
   git clone https://github.com/YourUsername/EmployeeHub.git
   ```

2. **Import project into Eclipse:**
   - File → Import → Existing Projects into Workspace
   - Select the project folder
   - Click Finish

3. **Add MySQL JDBC Driver:**
   - Right-click on project → Build Path → Configure Build Path
   - Click "Add External JARs"
   - Select `mysql-connector-java-8.0.x.jar`
   - Click Apply and Close

4. **Configure Apache Tomcat Server:**
   - Window → Preferences → Server → Runtime Environments
   - Click "Add" → Apache Tomcat v9.0
   - Select Tomcat installation directory
   - Click Apply and Close

5. **Run the application:**
   - Right-click on project → Run As → Run on Server
   - Select Apache Tomcat
   - Click Finish
  

## 📖 Usage Guide

Once the application runs, navigate to `http://localhost:8080/EmployeeHub/Home.html` and use the following pages:

**Home Page** - Landing page with navigation and quick access buttons

**Registration** - Create new user account with name, email, password, and username

**Employee Login** - Login with employee credentials to access profile and directory

**HR Login** - Separate login for HR department with admin access

**Employee Directory** - Browse and search all employees in the system

**Employee Profile** - View and edit logged-in employee's profile information

**About** - Company and application information

**Contact** - Contact form for inquiries and support

## 🏗️ Architecture Overview

### Class Responsibilities

**Directory.java** - Employee directory servlet
- Retrieves all employees from database
- Displays employee list in JSP
- Handles search and filtering

**HrLogin.java** - HR authentication servlet
- Validates HR credentials
- Creates HR session
- Routes to HR dashboard

**Login.java** - Employee authentication servlet
- Validates employee login credentials
- Creates user session
- Manages session timeout
- Routes to employee dashboard

**Registration.java** - User registration servlet
- Validates input data
- Checks for duplicate username/email
- Inserts new user into database
- Handles registration errors

---

## 👨‍💻 Author

**Shweta Nilkanth Narkhede**  
🔗 [GitHub Profile](https://github.com/Shwetannarkhede)

Feel free to fork this repository and contribute improvements!

---

**Happy Coding! 🚀**

*Last Updated: October 2025*
*Version: 1.0*
