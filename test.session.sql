-- @block
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(255) NOT NULL UNIQUE,
    password TEXT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
-- @block
INSERT INTO users (username, password)
VALUES ('Daniela', '3199');
-- @block
INSERT INTO users (username, password)
VALUES ('Isaac', 'Or@nge247');
-- @block
SELECT *
FROM users;
-- @block
CREATE TABLE furniture (
    id INT AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    furniture_img BLOB NOT NULL,
    owner_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (owner_id) REFERENCES users(id)
);
-- @block
INSERT INTO furniture (
        name,
        description,
        price,
        furniture_img,
        owner_id
    )
VALUES (
        'Kallax',
        'Shelving Unit',
        35.00,
        'C:\Users\Isaac\Documents\Projects\JavaScript\furniture-management\images\20231217_141946.jpg',
        1
    );
-- @block
SELECT *
FROM furniture;
-- @block
SELECT users.username,
    furniture.furniture_name,
    furniture.price,
    furniture.furniture_img
FROM users
    INNER JOIN furniture ON users.id = furniture.owner_id;