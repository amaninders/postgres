// initialize the inputs from CLI
const cohort = process.argv[2];
const limit  = process.argv[3];

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
SELECT students.id AS student_id, students.name AS student_name, cohorts.name AS cohort_name
FROM students
JOIN cohorts ON cohorts.id = students.cohort_id
WHERE cohorts.name LIKE '%${cohort}%'
LIMIT ${limit};
`)
.then(res => {
  res.rows.forEach(result => {
    console.log(`${result.student_name} has an id of ${result.student_id} and was in the ${result.cohort_name} cohort`);
  })
});