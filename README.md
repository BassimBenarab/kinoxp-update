# KinoXP – Biograf Reservationssystem

Spring Boot-baseret system til håndtering af filmforestillinger og billetreservationer.

## Kom i gang

VIDEOLINK: https://youtu.be/J2wm0b_UJsk

### Kør lokalt

```bash
./mvnw spring-boot:run
```

Åbn http://localhost:8080

### Admin-panel

Gå til http://localhost:8080/admin/login.html

Brugernavn: `admin` | Adgangskode: `kinoxp2024`

### Kør tests

```bash
./mvnw test
```

### Docker (kræver Docker installeret)

```bash
docker compose up --build
```

Åbn http://localhost:8080

## Arkitektur

- **Backend**: Spring Boot 4, Spring Web, Spring Data JPA, Spring Security
- **Database**: MySQL (Docker/produktion), H2 (lokal kørsel og tests)
- **Frontend**: HTML/CSS/JavaScript (ingen frameworks)
- **Java**: Java 25

## Prisregler

| Regel         | Detalje                                  |
| ------------- | ---------------------------------------- |
| Lang film     | +tillæg hvis > 170 min                   |
| 3D            | +tillæg                                  |
| Cowboy-rækker | -rabat (første 2 rækker)                 |
| Sofa-rækker   | +tillæg (sidste rækker i stor sal)       |
| Lille gruppe  | +gebyr ved ≤ 5 billetter                 |
| Stor gruppe   | 7% rabat på grundpris ved > 10 billetter |
