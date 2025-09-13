🛍️ E-Commerce Web Application
Welcome to our Java-based E-Commerce platform! This web application provides a complete online shopping experience with user authentication, product catalog, shopping cart, and order management features.

🚀 Features
👤 User Authentication (Login/Register)
🏠 Home Page with Featured Products
🔍 Product Search and Filtering
🛒 Shopping Cart Functionality
💳 Secure Checkout Process
📦 Order Tracking
👨‍💼 Admin Dashboard
📱 Responsive Design
🛠️ Tech Stack
Frontend: JSP, HTML5, CSS3, JavaScript
Backend: Java Servlets, JDBC
Database: MySQL
Server: Apache Tomcat
Build Tool: Apache Ant
📦 Prerequisites
Java Development Kit (JDK) 8 or higher
Apache Tomcat 9.x or higher
MySQL Server 5.7 or higher
Maven (for dependency management)
Git (for version control)
🚀 Getting Started
1. Clone the Repository
git clone https://github.com/Ash-D3v/E-commerce.git
cd E_commers
2. Database Setup
Create a new MySQL database
Import the database schema from database/schema.sql
Update database credentials in src/conf/database.properties
3. Build and Deploy
Build the project:
ant build
Deploy to Tomcat:
ant deploy
Access the application at: http://localhost:8080/E_commers
🏗️ Project Structure
E_commers/
├── src/                 # Java source files
├── web/                 # Web content (JSP, CSS, JS, images)
├── build/               # Compiled classes and build output
├── dist/                # Distribution files
├── nbproject/           # NetBeans project configuration
└── README.md            # This file
👥 User Roles
Guest: Browse products, search, view product details
Customer: All guest features + add to cart, place orders, view order history
Admin: Manage products, categories, view sales reports
📝 License
This project is licensed under the MIT License - see the LICENSE file for details.

🙏 Acknowledgments
Built with ❤️ using Java EE technologies
Icons from Font Awesome
Inspired by modern e-commerce platforms
📬 Contact
Have questions or suggestions? Feel free to open an issue or reach out to the project maintainers.
