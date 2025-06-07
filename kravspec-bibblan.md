# Kravspecifikation - Bibliotekssystem

## Entiteter
Se den medföljande SQLite-databasen (`library.db`) för exakt struktur av:
- **books** (book_id, title, publication_year, available_copies, total_copies, author_id)
- **authors** (author_id, first_name, last_name, birth_year, nationality)
- **users** (user_id, first_name, last_name, email, password, registration_date)
- **loans** (loan_id, user_id, book_id, borrowed_date, due_date, returned_date)

---

## G-krav (Grundläggande nivå)

### Book Management
- **GET /books** - Lista alla böcker
- **GET /books/search** - Sök böcker på title eller author (query parameters)
- **POST /books** - Skapa ny bok

### Author Management
- **GET /authors** - Lista alla författare
- **GET /authors/name/{lastName}** - Hämta författare via efternamn
- **POST /authors** - Skapa ny författare

### User Management
- **GET /users/email/{email}** - Hämta användare via email
- **POST /users** - Skapa ny användare

### Loan Management
- **GET /users/{userId}/loans** - Hämta användarens lån
- **POST /loans** - Låna bok (kräver userId och bookId)
- **PUT /loans/{id}/return** - Returnera bok
- **PUT /loans/{id}/extend** - Förläng lån

### Service Logic (G)
- Kontrollera boktillgänglighet vid låning
- Minska/öka availableCopies vid lån/retur
- Sätt dueDate till +14 dagar vid låning

### DTOs (G)
- Grundläggande DTOs för alla entiteter
- BookWithDetailsDTO (med Author-info)
- UserDTO (utan password)

### Testing (G)
- Unittest för LoanService.createLoan()
- Integrationstest för POST /loans

---

## VG-krav (Avancerad nivå)

### 1. Transactional Management
- **@Transactional** för LoanService.createLoan()
- **@Transactional(readOnly = true)** för read operations

### 2. Pagination
- Implementera **Pageable** för GET /books
- Support för sorting och filtering

### 3. ResponseEntity
- Använd **ResponseEntity** för alla endpoints
- Korrekt HTTP status codes (200, 201, 404, 400)

### 4. DTO Mapping Patterns
- Visa minst 3 olika mappningstekniker:
  - Manuell mappning
  - Builder pattern 
  - Stream API för listor

### 5. Custom Queries
- **@Query** med JPQL och native SQL
- Optional return types

### 6. Exception Handling
- **@ControllerAdvice** för global exception handling
- Custom exceptions (BookNotFoundException, etc.)

### Extended Testing (VG)
- Mock testing med **@MockBean**
- Repository tests med **@DataJpaTest**
- Tester för felscenarier

---

## Teknisk Stack
- Spring Boot 3.x
- Spring Web + Spring Data JPA
- SQLite databas
- Maven
