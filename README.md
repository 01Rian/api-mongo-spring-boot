# User and Role Management API

## Description
This project is an API built with Spring Boot and MongoDB to manage users and roles.

## Entities

### User
- **Attributes:**
    - `id`: Unique identifier for the user.
    - `userName`: User's name.
    - `lastName`: User's last name.
    - `role`: Role reference

### Role
- **Attributes:**
    - `id`: Unique identifier for the role.
    - `name`: Role name.

## Prerequisites
- Gradle 8+: [Gradle Installation Guide](https://gradle.org/install/)
- Docker installed: [Docker Installation Guide](https://docs.docker.com/get-docker/)
- Docker Compose installed: [Docker Compose Installation Guide](https://docs.docker.com/compose/install/)

## How to Run the Application

1. Run the gradle to build jar:
    ```bash
   ./gradlew bootjar
    ```

2. Run the application with Docker Compose:
    ```bash
    docker-compose up -d
    ```

## API Endpoints

Access the API at: [http://localhost:8080/api/user](http://localhost:8080)

### Users (User)

- **Create User:**
    - **Endpoint:** `POST /user`
    - **Body:** JSON containing user attributes.
    - **Example:**
      ```bash
      curl -X POST -H "Content-Type: application/json" -d '{"userName":"john_doe","lastName":"Doe","role":{"id":"1","roleName":"admin"}}' http://localhost:8080/api/user
      ```

- **Get User by ID:**
    - **Endpoint:** `GET /user/{userId}`
    - **Example:**
      ```bash
      curl http://localhost:8080/api/user/1
      ```

- **Get All Users:**
    - **Endpoint:** `GET /user`
    - **Example:**
      ```bash
      curl http://localhost:8080/api/user
      ```

- **Update User:**
    - **Endpoint:** `PUT /user`
    - **Body:** JSON containing updated user attributes.
    - **Example:**
      ```bash
      curl -X PUT -H "Content-Type: application/json" -d '{"id":"1","userName":"updated_user","lastName":"Updated","role":{"id":"1","roleName":"admin"}}' http://localhost:8080/api/user
      ```

- **Delete User:**
    - **Endpoint:** `DELETE /user/{id}`
    - **Example:**
      ```bash
      curl -X DELETE http://localhost:8080/api/user/1
      ```

### Roles (Role)

- **Create Role:**
    - **Endpoint:** `POST /role`
    - **Body:** JSON containing role attributes.
    - **Example:**
      ```bash
      curl -X POST -H "Content-Type: application/json" -d '{"roleName":"admin"}' http://localhost:8080/api/role
      ```

- **Get Role by ID:**
    - **Endpoint:** `GET /role/{roleId}`
    - **Example:**
      ```bash
      curl http://localhost:8080/role/api/1
      ```

- **Get All Roles:**
    - **Endpoint:** `GET /role`
    - **Example:**
      ```bash
      curl http://localhost:8080/api/role
      ```

- **Delete Role:**
    - **Endpoint:** `DELETE /role/{id}`
    - **Example:**
      ```bash
      curl -X DELETE http://localhost:8080/api/role/1
      ```