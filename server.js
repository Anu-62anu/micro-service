// Entry point: starts the Express server
const app = require('./src/app');

const port = process.env.PORT || 8080;
// const host = 'x-468277386481.us-east1.run.app';

app.listen(port, () => {
  console.log(`Looker Microservice running on port ${port}`);
});
