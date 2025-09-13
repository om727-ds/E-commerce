
# 🛒 E-Commerce Web Application

Welcome to our Java-based E-Commerce platform!
This web application provides a complete online shopping experience with **user authentication, product catalog, shopping cart, and order management features**.

---

## 🚀 Features

* 👤 User Authentication (Login/Register)
* 🏠 Home Page with Featured Products
* 🔍 Product Search and Filtering
* 🛒 Shopping Cart Functionality
* 💳 Secure Checkout Process
* 📦 Order Tracking
* 👨‍💼 Admin Dashboard
* 📱 Responsive Design

---

## 🛠️ Tech Stack

* **Frontend:** JSP, HTML5, CSS3, JavaScript
* **Backend:** Jakarta Servlets, JDBC
* **Database:** MySQL 
* **Server:** Apache Tomcat
* **Build Tool:** Apache Ant
* **IDE:** NetBeans

---

## 📦 Prerequisites

* **Java Development Kit (JDK 8 or higher)**
* **Apache Tomcat (10.x or higher, Jakarta-compatible)**
* **MySQL Server 8.0 **
* **NetBeans IDE (Ant-based Web Application)**
* **Jakarta Servlet API** (bundled with Tomcat 10+)
* **Git (for version control)

---

## 🚀 Getting Started

### 1️⃣ Clone the Repository

```bash
git clone https://github.com/om727-ds/E-commerce.git
cd commers
```

### 2️⃣ Database Setup

* Create a new MySQL database
* Import the database schema from:

  ```
  database/schema.sql
  ```
* Update database credentials in:

  ```
  src/conf/database.properties
  ```

### 3️⃣ Build & Deploy with Ant (NetBeans)

* Open NetBeans → File → Open Project → select `commers`
* Clean and Build project (`Shift + F11`)
* Deploy to Tomcat (Run Project `F6`)
* Access at:
  👉 [http://localhost:8080/commers](http://localhost:8090/commers)

---

## 🏗️ Project Structure

```
commers/
├── src/          # Java source files
├── web/          # Web content (JSP, HTML, etc.)
├── build/        # Compiled classes and build output
├── dist/         # Distribution files
├── lib/          # External libraries
├── nbproject/    # NetBeans project configuration
└── README.md     # this file

```

---

## 👥 User Roles

* **Guest:** Browse products, view info pages
* **Customer:** Register, login, add to cart, checkout
* **Admin:** Manage products (via Servlets)

---

## 📝 License

This project is licensed under the **MIT License** – see the [LICENSE](LICENSE) file.

---

## 🙏 Acknowledgments

* Built with ❤️ using **Jakarta EE technologies**
* Database managed in **MySQL Workbench 8.0 CE**
* Inspired by **modern e-commerce platforms**

---

## 📬 Contact

Have questions or suggestions? Feel free to open an issue or reach out to the project maintainers.

---

