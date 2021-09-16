// initialize the inputs from CLI
const cohort = process.argv[2];

// require node-postgres
const { Pool } = require('pg');

// pool configuration
const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

// SQL query
pool.query(`
SELECT DISTINCT(teachers.name) AS teacher_name, cohorts.name AS cohort_name
FROM assistance_requests
JOIN teachers
ON assistance_requests.teacher_id = teachers.id
JOIN students
ON assistance_requests.student_id = students.id
JOIN cohorts
ON students.cohort_id = cohorts.id
WHERE cohorts.name LIKE '%${cohort}%'
ORDER BY teachers.name;
`)
.then(res => {
  res.rows.forEach(result => {
    console.log(`${result.cohort_name}: ${result.teacher_name}`);
  })
});