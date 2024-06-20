CREATE TABLE Users (
    userId SERIAL PRIMARY KEY,
    username VARCHAR(100),
    email VARCHAR(100),
    passwd  VARCHAR(200),
    team VARCHAR(200)
);

CREATE TABLE Team (
    teamId SERIAL PRIMARY KEY,
    listUsers VARCHAR(100),
);

CREATE TABLE Desk (
    deskId SERIAL PRIMARY KEY,
    deskAvailable BOOLEAN,
    position VARCHAR(100),
    -- Metadata
);

CREATE TABLE Office (
    officeId SERIAL PRIMARY KEY,
    officeName VARCHAR(100),
    listDesks VARCHAR(100),
);