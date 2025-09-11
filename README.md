# 👋 Hi, I'm **ALGHUBARI ALI**

<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=0:EEFF00,100:a82da8&height=200&section=header&text=ALGHUBARI%20ALI&fontSize=40&fontColor=ffffff" alt="Banner" width="100%"/>
</p>

<p align="center">
  <a href="https://git.io/typing-svg">
    <img src="https://readme-typing-svg.herokuapp.com?color=00F700&center=true&vCenter=true&lines=Full-Stack+Developer;ASP.NET+Core+%26+Angular+Developer;Open-Source+Contributor;Tech+Enthusiast;Always+Learning+New+Things" alt="typing"/>
  </a>
</p>

---

<p align="center">
  <!-- Core -->
  <img alt="dotnet" src="https://img.shields.io/badge/.NET-512BD4?style=for-the-badge&logo=.net&logoColor=white" />
  <img alt="aspnetcore" src="https://img.shields.io/badge/ASP.NET%20Core-512BD4?style=for-the-badge&logo=dotnet&logoColor=white" />
  <img alt="clean-architecture" src="https://img.shields.io/badge/Clean%20Architecture-FF8C00?style=for-the-badge" />
  <!-- Data & ORM -->
  <img alt="efcore" src="https://img.shields.io/badge/EF%20Core-5C2D91?style=for-the-badge&logo=dotnet&logoColor=white" />
  <img alt="dapper" src="https://img.shields.io/badge/Dapper-00BFFF?style=for-the-badge" />
  <!-- Databases -->
  <img alt="sql" src="https://img.shields.io/badge/SQL-4479A1?style=for-the-badge" />
  <img alt="sqlite" src="https://img.shields.io/badge/SQLite-003B57?style=for-the-badge&logo=sqlite&logoColor=white" />
  <img alt="mongodb" src="https://img.shields.io/badge/MongoDB-47A248?style=for-the-badge&logo=mongodb&logoColor=white" />
  <img alt="redis" src="https://img.shields.io/badge/Redis-DC382D?style=for-the-badge&logo=redis&logoColor=white" />
  <!-- Messaging / Infra -->
  <img alt="rabbitmq" src="https://img.shields.io/badge/RabbitMQ-FF6600?style=for-the-badge&logo=rabbitmq&logoColor=white" />
  <img alt="docker" src="https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white" />
  <img alt="kubernetes" src="https://img.shields.io/badge/Kubernetes-326CE5?style=for-the-badge&logo=kubernetes&logoColor=white" />
  <!-- Firebase -->
  <img alt="firebase" src="https://img.shields.io/badge/Firebase-FFCA28?style=for-the-badge&logo=firebase&logoColor=black" />
</p>

---

## 🚀 About Me

Passionate about building maintainable, testable, and scalable systems using **Clean Architecture** and modern tooling: Docker, Microservices, EF Core, Dapper, RabbitMQ, Redis, Firebase, SQLite and MongoDB. I build production-ready APIs and frontend apps (Angular / React).

---

## 🧭 Architecture Overview

A Clean Architecture design keeps business rules isolated from frameworks and infrastructure.

```
Presentation  -> WebAPI, Controllers, Swagger
Application   -> CQRS (MediatR), Use-cases, Validation
Domain        -> Entities, Value Objects, Business Rules
Infrastructure-> EF Core, Dapper, MongoDB, Redis, RabbitMQ, Firebase
```

---

## 🎯 Frontend

I create modern web frontends using **Angular** and **React** with a focus on performance, accessibility, and maintainability.

---

## 🛠️ Tech Stack (clean & grouped)

**Frontend**

* HTML5 • CSS3 • JavaScript
* Angular • React

**Backend / Architecture**

* ASP.NET Core • .NET
* Clean Architecture • CQRS (MediatR)

**Data**

* EF Core (writes / migrations)
* Dapper (fast reads)
* SQL Server / SQLite
* MongoDB (document store)

**Infrastructure**

* RabbitMQ (MassTransit) for messaging
* Redis for caching & pub/sub
* Firebase for Authentication & FCM
* Docker + Docker Compose (Kubernetes-ready)

---

## 📁 Suggested Folder Structure

```
src/
├─ Services/
│  ├─ LoanService/
│  │  ├─ Presentation.WebAPI/   # Controllers, Program.cs, Swagger
│  │  ├─ Application/           # Commands, Queries, Handlers, DTOs
│  │  ├─ Domain/                # Entities, ValueObjects, Interfaces
│  │  └─ Infrastructure/        # EF, Dapper, Mongo, Redis, RabbitMQ, Firebase
│  └─ PaymentService/          # Another microservice (same pattern)
├─ SharedKernel/               # Common utilities, DTOs, exceptions
└─ docker/                     # docker-compose.yml, env files
```

---

## ⚡ Quickstart (local with Docker Compose)

1. Copy `.env.example` → `.env` and set credentials (SQL SA password, Firebase path, etc.)
2. Build & run:

```bash
docker compose up --build
```

3. Open Swagger (example): `http://localhost:5000/swagger`

---

## ✅ RESTful API Example (Loans)

**Create Loan**

```http
POST /api/loans
Content-Type: application/json

{
  "loanNumber": "LN123",
  "amount": 10000
}
```

**Get All Loans**

```http
GET /api/loans
```

**Get Loan by ID**

```http
GET /api/loans/1
```

---

## 🧩 Integrations & Patterns

* **EF Core**: Use for domain writes and migrations.
* **Dapper**: Use for read-heavy, performance-sensitive queries (return DTOs).
* **MongoDB**: Stores logs, events, analytics snapshots.
* **Redis**: Cache expensive reads and use pub/sub for real-time features.
* **RabbitMQ**: Publish/subscribe domain events across services (MassTransit recommended).
* **Firebase**: Verify tokens and send push notifications (FCM).

---

## 📈 GitHub Stats & Activity

<p align="center">
  <img src="https://github-readme-stats.vercel.app/api?username=alghubari2017&show_icons=true&theme=radical" />
  <img src="https://github-readme-stats.vercel.app/api/top-langs/?username=alghubari2017&layout=compact&theme=radical" />
  <img src="https://github-readme-streak-stats.herokuapp.com/?user=alghubari2017&theme=radical" />
</p>

---

## 🌱 Currently Learning

* Next.js
* Cloud Computing (AWS)
* Data Analytics with Python

---

## 📫 Connect with Me

[![LinkedIn](https://img.shields.io/badge/-LinkedIn-blue?style=for-the-badge\&logo=linkedin\&logoColor=white)](https://linkedin.com/in/YOUR-LINKEDIN)
[![Portfolio](https://img.shields.io/badge/-Portfolio-000000?style=for-the-badge\&logo=vercel\&logoColor=white)](https://yourwebsite.com)
[![Email](https://img.shields.io/badge/-Email-D14836?style=for-the-badge\&logo=gmail\&logoColor=white)](mailto:alghubari.772017@gmail.com)

---

## 👁️ Profile Visits

<p align="center">
  <img src="https://komarev.com/ghpvc/?username=alghubari2017&color=blue" alt="Profile Views" />
</p>

---

⭐ **If you find this useful, please give it a star!**

---

> *Want this exported as a `README.md` file or a full starter repo (with solution + Docker)? I can generate a ZIP or push to a new GitHub repo for you.*
