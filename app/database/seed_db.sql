
--- CREATE USERS TABLE ---
CREATE TABLE user (
    id  INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR(40) NOT NULL,
    last_name  VARCHAR(40) NOT NULL,
    hobbies TEXT,
    active BOOLEAN NOT NULL DEFAULT 1
);


--- INSERT DATA ---
INSERT INTO user (first_name, last_name, hobbies) VALUES ("Sergio", "Inzunza", "fishing");

--- READ DATA ---
SELECT * from user;

--- CREATE ANOTHER RECORD ---
INSERT INTO user (
    first_name, 
    last_name, 
    hobbies) 
VALUES (
    "Yuffie", 
    "Kisuragi", 
    "Materia Hunter");

INSERT INTO user (
    first_name, 
    last_name, 
    hobbies) 
VALUES (
    "Zell", 
    "Dincht", 
    "Ehreigz");
    -- Vehicles
CREATE TABLE vehicle_type (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    description VARCHAR(64)
);

CREATE TABLE vehicle (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    vtype INTEGER NOT NULL,
    license_plate VARCHAR(45) NOT NULL,
    color VARCHAR(45),
    brand VARCHAR(45) NOT NULL,
    MODEL   VARCHAR(45) NOT NULL,
    active BOOLEAN DEFAULT 1,
    user_id INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user(id)
    FOREIGN KEY (v_type) REFERENCES vehicle_type(id)
);

INSERT INTO vehicle_type (description) VALUES("motorcycle");
INSERT INTO vehicle_type (description) VALUES("car");
INSERT INTO vehicle_type (description) VALUES("truck");
INSERT INTO vehicle_type (description) VALUES("SUV");

INSERT INTO vehicle (
    color, 
    license_plate,
    v_type,
    user_id,
    brand,
    model
) VALUES (
    "red",
    "HELLO1",
    1,
    1,
    "honda",
    "Civic"
);

INSERT INTO vehicle (
    color, 
    license_plate,
    v_type,
    user_id,
    brand,
    model
) VALUES (
    "Orange",
    "Jack2",
    2,
    2,
    "Mini-Cooper",
    "2-door"
);

SELECT user.last_name,
       user.first_name,
       user.hobbies,
       user.active,
       vehicle.license_plate,
       vehicle.color,
       vehicle_type.description,
       vehicle.brand,
       vehicle.model
FROM user
INNER JOIN vehicle ON user.id = vehicle.user_id
INNER JOIN vehicle_type ON vehicle.v_type = vehicle_type.id;

{
    "ok" : True,
    "cars": [
        "last_name": "Squall",
        "first_name": "Leonhart",
        "hobbies": "Trepe Cards",
        "active": 1,
        "license_plate": "SDAWETSDAF",
        "something",
        "color": "red",
        "vehicle_type": "truck",
        "brand": "Mini-Cooper",
        "model": "Roadster"
        },
        {...}
    ]