<p align="center">
  <a href="http://nestjs.com/" target="blank"><img src="https://nestjs.com/img/logo-small.svg" width="200" alt="Nest Logo" /></a>
</p>

# [Your Project Name] - NestJS REST API Template

A comprehensive NestJS REST API template designed for rapid development of scalable backend applications. This template includes user authentication, database integration with Prisma, session management, health checks, and more. Perfect for building modern web APIs with TypeScript, PostgreSQL, and Docker support.

## Features

- **User Authentication**: Secure login and session management using Passport.js and Iron Session
- **Database Integration**: PostgreSQL with Prisma ORM for type-safe database operations
- **Health Checks**: Built-in health endpoint for monitoring application status
- **Modular Architecture**: Organized modules for easy extension and maintenance
- **Validation**: Class Validator and Class Transformer for request validation
- **Docker Support**: Containerized setup for easy deployment and development
- **Code Quality**: Biome for linting and formatting, Lefthook for Git hooks
- **Testing**: Jest configuration for unit and integration tests

## Tech Stack

- **Framework**: NestJS
- **Database**: PostgreSQL with Prisma ORM
- **Authentication**: Passport.js with Local Strategy and Iron Session
- **Validation**: Class Validator and Class Transformer
- **Linting/Formatting**: Biome
- **Containerization**: Docker & Docker Compose

## Getting Started

### Prerequisites

- Node.js (v18 or higher)
- pnpm
- Docker & Docker Compose
- PostgreSQL (or use Docker)

### Using this Template

1. Click "Use this template" on GitHub to create a new repository
2. Clone your new repository
3. Copy the `.env.example` file to `.env` and configure your environment variables
4. Run `pnpm install` to install dependencies (this also installs Git hooks automatically)
5. Run `docker compose -f compose.yml up -d` to start PostgreSQL and pgAdmin
   - This will start a PostgreSQL instance and a pgAdmin instance for database management
   - To stop the instances, run `docker compose -f compose.yml down`
6. Run `pnpm run prisma:migrate` to apply database migrations
7. Run `pnpm run prisma:seed` to seed the database with initial data (optional)
8. Run `pnpm run start:dev` to start the development server

## Environment Variables

The application requires the following environment variables (defined in `.env`):

- `PORT`: Server port (default: 3000)
- `STAGE`: Application stage (dev, prod)
- `DATABASE_URL`: PostgreSQL connection string
- `SESSION_SECRET`: Secret key for session encryption
- `SESSION_COOKIE_NAME`: Name of the session cookie
- `SESSION_COOKIE_MAX_AGE`: Session cookie max age in seconds

## API Endpoints

This template includes example endpoints for authentication and health checks. Customize and add your own endpoints as needed.

### Authentication
- `POST /auth/login` - User login

### Health
- `GET /health` - Application health check

### [Your Module]
- Add your custom endpoints here

## Git Hooks Setup

This project uses Lefthook for code quality. Hooks are installed automatically with `pnpm install`.

### What happens automatically:

**On commit:**

- Biome checks and fixes code issues
- Biome formats your code
- TypeScript checks for errors

**On push:**

- Checks code quality

### Commit message format:

```bash
git commit -m "feat: description"
git commit -m "fix: description"
```

### Manual commands:

```bash
pnpm run lint              # Fix code issues and format
pnpm run prisma:studio     # Open Prisma Studio for database management
```

## Development

### Running the app
```bash
pnpm run start:dev    # Development mode with hot reload and Prisma Studio
pnpm run start:debug  # Debug mode
pnpm run start:prod   # Production mode
```

### Database
```bash
pnpm run prisma:migrate  # Apply migrations
pnpm run prisma:seed     # Seed database
pnpm run prisma:studio   # Open Prisma Studio
```

### Code Quality
```bash
pnpm run format       # Format code
pnpm run lint         # Lint and fix code
```

## Docker

### Development
```bash
docker compose -f compose.yml up -d
```

### Production
```bash
docker compose -f compose.prod.yml up -d
```

### Build
```bash
docker compose -f compose.build.yml up --build
```

## Make Commands (Optional)

This project includes a Makefile for convenient command execution. Run `make help` to see all available commands.

### Common Commands

- `make dev` - Start the application in development mode
- `make debug` - Start the application in debug mode
- `make prod` - Start the application in production mode
- `make docker-build` - Build Docker images
- `make docker-run` - Run the application with Docker Compose (development)
- `make docker-run-prod` - Run the application with Docker Compose (production)
- `make docker-stop` - Stop all Docker containers
- `make docker-logs` - Show Docker container logs (development)
- `make docker-logs-prod` - Show production Docker container logs

## Project Structure

```
src/
├── app.module.ts          # Main application module
├── main.ts                # Application entry point
├── config/                # Configuration modules
├── exceptions/            # Custom exceptions
├── filters/               # Exception filters
├── modules/               # Feature modules
│   ├── auth/              # Authentication module
│   ├── common/            # Shared utilities
│   ├── health/            # Health check module
│   └── [your-module]/     # Add your modules here
├── prisma/                # Database related files
└── types/                 # TypeScript type definitions
```

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Run linting
5. Commit with conventional commit messages
6. Push to your fork
7. Create a pull request

## License

This project is licensed under the MIT License.
