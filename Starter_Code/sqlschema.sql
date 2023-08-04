CREATE TABLE departments (
    dept_no VARCHAR PRIMARY KEY,
    dept_name VARCHAR NOT NULL


    CREATE TABLE departmentemp (
    emp_no INTEGER PRIMARY KEY,
    dept_no VARCHAR REFERENCES departments (dept_no)
);


CREATE TABLE dept_manager (
    dept_no VARCHAR REFERENCES departments (dept_no),
    emp_no INTEGER,
    PRIMARY KEY (dept_no, emp_no)
);


CREATE TABLE employees (
    emp_no INTEGER PRIMARY KEY,
    emp_title_id VARCHAR,
    birth_date DATE NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    sex VARCHAR NOT NULL,
    hire_date DATE NOT NULL
);


CREATE TABLE salaries (
    emp_no INTEGER REFERENCES employees (emp_no),
    salary INTEGER NOT NULL,
    PRIMARY KEY (emp_no)
);

CREATE TABLE titles (
    title_id VARCHAR PRIMARY KEY,
    title VARCHAR NOT NULL
);