-- Active: 1748232154750@@127.0.0.1@5432@test
CREATE TABLE user_group (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO user_group (name, description) VALUES
('Admin', 'Administrators with full access'),
('User', 'Regular users with limited access'),
('Guest', 'Guests with minimal access');    

SELECT * FROM user_group;

CREATE TABLE post (
    id BIGSERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    user_id INTEGER REFERENCES user_group(id)
);

INSERT INTO post (user_id, title, content) VALUES
(1, 'Admin Post', 'This is a post by an admin.'),
(2, 'User Post', 'This is a post by a regular user.'),
(3, 'Guest Post', 'This is a post by a guest.');

SELECT * FROM post
WHERE user_id = 2;