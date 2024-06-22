CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(100),
    email VARCHAR(100),
    password  VARCHAR(200),
    team VARCHAR(200)
);

CREATE TABLE team (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    CONSTRAINT fk_user FOREIGN KEY(user_id) REFERENCES users(id)
);

CREATE TABLE desk (
    id SERIAL PRIMARY KEY,
    isDeskAvailable BOOLEAN,
    feature VARCHAR(100),
    position VARCHAR(100),
    -- Metadata
);

CREATE TABLE office (
    id SERIAL PRIMARY KEY,
    officeName VARCHAR(100),
    desk_id INT NOT NULL,
    CONSTRAINT fk_desk FOREIGN KEY(desk_id) REFERENCES desk(id)
);

CREATE TABLE bookings (
    id SERIAL PRIMARY KEY,
    bookingStartDate DATE NOT NULL,
    bookingEndDate DATE NOT NULL,
    bookingTimeFrame VARCHAR(50),
    floorPlan SVG
);

CREATE TABLE users_bookings (
    user_id INT,
    booking_id INT,
    PRIMARY KEY (user_id, bookings_id),
    CONSTRAINT fk_user FOREIGN KEY(user_id) REFERENCES users(id),
    CONSTRAINT fk_booking FOREIGN KEY(booking_id) REFERENCES bookings(id)
)

CREATE TABLE team_bookings (
    team_id INT,
    booking_id INT,
    PRIMARY KEY (team_id, bookings_id),
    CONSTRAINT fk_team FOREIGN KEY(team_id) REFERENCES team(id),
    CONSTRAINT fk_booking FOREIGN KEY(booking_id) REFERENCES bookings(id)
)

CREATE TABLE visitor (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);


