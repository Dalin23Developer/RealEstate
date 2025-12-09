# Full-Stack Web Application

A full-stack web application with a **Laravel backend** and **React.js frontend**.

---

## Description
This project includes:
- **Backend:** Laravel handles API requests, authentication, and database operations.
- **Frontend:** React.js provides an interactive user interface and communicates with the backend API.

---

## Technologies
**Backend:** Laravel, PHP, MySQL/PostgreSQL  
**Frontend:** React.js, JavaScript, HTML, CSS, Axios  

---

## Installation

### Backend
```bash
cd back-end
composer install
cp .env.example .env
php artisan key:generate
php artisan migrate
php artisan serve

cd front-end
npm install
npm start
