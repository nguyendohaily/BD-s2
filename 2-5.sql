USE test_db;

-- 1. Tạo bảng classes (Bảng cha)
CREATE TABLE class (
    class_id VARCHAR(20) PRIMARY KEY,
    class_name VARCHAR(100) NOT NULL,
    academic_year VARCHAR(20) NOT NULL
);

-- 2. Tạo bảng students (Bảng con, chứa khóa ngoại)
CREATE TABLE student (
    student_id VARCHAR(20) PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    date_of_birth DATE NOT NULL,
    gender VARCHAR(10),
    class_id VARCHAR(20) NOT NULL,
    FOREIGN KEY (class_id) REFERENCES classes(class_id)
);

DESCRIBE classes;
DESCRIBE students;