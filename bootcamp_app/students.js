// initialize the inputs from CLI
const cohort = process.argv[2];
const limit  = process.argv[3];

// parameterize the query
const queryString = `
  SELECT students.id as student_id, students.name as name, cohorts.name as cohort
  FROM students
  JOIN cohorts ON cohorts.id = cohort_id
  WHERE cohorts.name LIKE $1
  LIMIT $2;
  `;
const values = [`%${cohort}%`, limit];

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
pool.query(queryString, values)
.then(res => {
  res.rows.forEach(result => {
    console.log(`${result.name} has an id of ${result.student_id} and was in the ${result.cohort} cohort`);
  })
});