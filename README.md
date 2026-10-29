# Hi, I'm Ali Abdullah Alghubari

<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=0:0F766E,100:7C3AED&height=200&section=header&text=ALGHUBARI%20ALI&fontSize=40&fontColor=ffffff&desc=AI-Integrated%20Full-Stack%20Engineer&descSize=18&descAlignY=70" alt="Banner" width="100%"/>
</p>

<p align="center">
  <a href="https://git.io/typing-svg">
    <img src="https://readme-typing-svg.herokuapp.com?color=2DD4BF&center=true&vCenter=true&lines=Full-Stack+Developer+%7C+ASP.NET+Core+%26+Angular;Building+AI-Powered+Microservices;LLMs+%2B+RAG+%2B+Clean+Architecture;Always+Learning+New+Things" alt="typing"/>
  </a>
</p>

---

<p align="center">
  <!-- AI -->
  <img alt="claude" src="https://img.shields.io/badge/Claude%20API-D97757?style=for-the-badge&logo=anthropic&logoColor=white" />
  <img alt="mcp" src="https://img.shields.io/badge/MCP-Model%20Context%20Protocol-7C3AED?style=for-the-badge" />
  <img alt="rag" src="https://img.shields.io/badge/RAG-Vector%20Search-0F766E?style=for-the-badge" />
  <img alt="agents" src="https://img.shields.io/badge/AI%20Agents-111827?style=for-the-badge" />
  <br/>
  <!-- Core -->
  <img alt="dotnet" src="https://img.shields.io/badge/.NET-512BD4?style=for-the-badge&logo=.net&logoColor=white" />
  <img alt="aspnetcore" src="https://img.shields.io/badge/ASP.NET%20Core-512BD4?style=for-the-badge&logo=dotnet&logoColor=white" />
  <img alt="clean-architecture" src="https://img.shields.io/badge/Clean%20Architecture-FF8C00?style=for-the-badge" />
  <img alt="angular" src="https://img.shields.io/badge/Angular-DD0031?style=for-the-badge&logo=angular&logoColor=white" />
  <img alt="react" src="https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB" />
  <br/>
  <!-- Data -->
  <img alt="efcore" src="https://img.shields.io/badge/EF%20Core-5C2D91?style=for-the-badge&logo=dotnet&logoColor=white" />
  <img alt="dapper" src="https://img.shields.io/badge/Dapper-00BFFF?style=for-the-badge" />
  <img alt="sql" src="https://img.shields.io/badge/SQL%20Server-4479A1?style=for-the-badge" />
  <img alt="sqlite" src="https://img.shields.io/badge/SQLite-003B57?style=for-the-badge&logo=sqlite&logoColor=white" />
  <img alt="mongodb" src="https://img.shields.io/badge/MongoDB-47A248?style=for-the-badge&logo=mongodb&logoColor=white" />
  <img alt="redis" src="https://img.shields.io/badge/Redis-DC382D?style=for-the-badge&logo=redis&logoColor=white" />
  <br/>
  <!-- Infra -->
  <img alt="rabbitmq" src="https://img.shields.io/badge/RabbitMQ-FF6600?style=for-the-badge&logo=rabbitmq&logoColor=white" />
  <img alt="docker" src="https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white" />
  <img alt="kubernetes" src="https://img.shields.io/badge/Kubernetes-326CE5?style=for-the-badge&logo=kubernetes&logoColor=white" />
  <img alt="firebase" src="https://img.shields.io/badge/Firebase-FFCA28?style=for-the-badge&logo=firebase&logoColor=black" />
</p>

---

## About Me

I build maintainable, testable, scalable systems with **Clean Architecture**, and I connect them to **AI**: LLM-powered features, retrieval over business data, and tool-using agents that sit behind the same APIs my frontends already use.

* Production-ready APIs with ASP.NET Core, CQRS, EF Core and Dapper
* AI features as a first-class layer: chat assistants, document Q&A, summarization, smart search
* Modern frontends in Angular and React, with streaming AI responses
* Daily workflow accelerated by AI coding assistants (Claude Code)

---

## Architecture: AI as a Layer, Not a Hack

Business rules stay isolated from frameworks, and so does AI. Models sit behind interfaces in Infrastructure, so providers can be swapped and handlers can be tested without a network call.

```
Presentation   -> WebAPI, Controllers, Swagger, SSE/SignalR streaming
Application    -> CQRS (MediatR), Use-cases, Validation, IAiService / IEmbeddingService
Domain         -> Entities, Value Objects, Business Rules (no AI dependencies)
Infrastructure -> EF Core, Dapper, MongoDB, Redis, RabbitMQ, Firebase
                  + AI: LLM client, Vector store, MCP tools
```

### How a request flows through the AI layer

```
Angular / React
      |  (stream tokens)
      v
  WebAPI  ->  MediatR Command/Query
                    |
                    v
          IAiService (Application)
           |        |          |
           v        v          v
      LLM client  Vector DB   Domain tools (MCP)
      (Claude)    (RAG)       (loans, payments)
                    |
                    v
   Result cached in Redis, audit log in MongoDB,
   long-running jobs published to RabbitMQ
```

---

## Tech Stack

**AI**

* LLM APIs (Claude) with streaming and tool use
* RAG: embeddings + vector search over business documents
* MCP servers that expose service operations as tools
* Prompt versioning, output validation, token and cost logging

**Frontend**

* HTML5, CSS3, JavaScript, TypeScript
* Angular, React (chat UIs with streamed responses)

**Backend / Architecture**

* ASP.NET Core, .NET
* Clean Architecture, CQRS (MediatR), Microservices

**Data**

* EF Core (writes, migrations)
* Dapper (fast reads)
* SQL Server / SQLite
* MongoDB (logs, AI audit trail, analytics snapshots)

**Infrastructure**

* RabbitMQ (MassTransit) for events and async AI jobs
* Redis for caching, rate limiting and pub/sub
* Firebase for Authentication and FCM
* Docker + Docker Compose (Kubernetes-ready)

---

## Suggested Folder Structure

```
src/
├─ Services/
│  ├─ LoanService/
│  │  ├─ Presentation.WebAPI/   # Controllers, Program.cs, Swagger
│  │  ├─ Application/           # Commands, Queries, Handlers, DTOs, AI abstractions
│  │  ├─ Domain/                # Entities, ValueObjects, Interfaces
│  │  └─ Infrastructure/        # EF, Dapper, Mongo, Redis, RabbitMQ, Firebase
│  │     └─ AI/                 # LLM client, embeddings, vector store, MCP tools, prompts
│  └─ PaymentService/           # Another microservice (same pattern)
├─ SharedKernel/                # Common utilities, DTOs, exceptions
└─ docker/                      # docker-compose.yml, env files
```

---

## Quickstart (local with Docker Compose)

1. Copy `.env.example` to `.env` and set credentials (SQL SA password, Firebase path, `AI__ApiKey`, etc.)
2. Build and run:

```bash
docker compose up --build
```

3. Open Swagger (example): `http://localhost:5000/swagger`

---

## RESTful API Example (Loans + AI)

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

**Ask the AI assistant about a loan** (RAG over the loan's documents and history)

```http
POST /api/loans/1/assistant
Content-Type: application/json

{
  "question": "Summarize the repayment status and flag anything unusual."
}
```

**Stream the answer** (Server-Sent Events)

```http
GET /api/loans/1/assistant/stream?question=...
Accept: text/event-stream
```

---

## Integrations and Patterns

* **EF Core**: domain writes and migrations.
* **Dapper**: read-heavy, performance-sensitive queries returning DTOs.
* **MongoDB**: logs, events, analytics snapshots, and the AI audit trail (prompt, response, tokens, latency).
* **Redis**: cache expensive reads and repeated AI answers; pub/sub for real-time features.
* **RabbitMQ**: publish and subscribe domain events across services (MassTransit); run slow AI jobs asynchronously.
* **Firebase**: verify tokens and send push notifications (FCM) when an AI job finishes.
* **LLM + RAG**: embed documents, retrieve relevant chunks, and ground answers in the service's own data.
* **MCP**: expose safe, scoped service operations as tools so an AI agent can call them with the user's permissions.
* **Guardrails**: validate model output against typed DTOs, never let the model write to the database directly.

---

## GitHub Stats and Activity

<p align="center">
  <img src="https://github-readme-stats.vercel.app/api?username=alghubari2017&show_icons=true&theme=radical" />
  <img src="https://github-readme-stats.vercel.app/api/top-langs/?username=alghubari2017&layout=compact&theme=radical" />
  <img src="https://github-readme-streak-stats.herokuapp.com/?user=alghubari2017&theme=radical" />
</p>

---

## Currently Learning

* AI engineering: RAG, agents, evaluation, prompt design
* Building MCP servers in .NET
* Next.js
* Cloud Computing (AWS)

---

## Connect with Me

[![LinkedIn](https://img.shields.io/badge/-LinkedIn-blue?style=for-the-badge&logo=linkedin&logoColor=white)](https://linkedin.com/in/YOUR-LINKEDIN)
[![Portfolio](https://img.shields.io/badge/-Portfolio-000000?style=for-the-badge&logo=vercel&logoColor=white)](https://yourwebsite.com)
[![Email](https://img.shields.io/badge/-Email-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:alghubari.772017@gmail.com)

---

## Profile Visits

<p align="center">
  <img src="https://komarev.com/ghpvc/?username=alghubari2017&color=blue" alt="Profile Views" />
</p>
