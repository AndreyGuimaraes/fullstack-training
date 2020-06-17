import { config } from 'dotenv';
import app from './router';

config();
const port = process.env.PORT as unknown as number;

app.listen(port, () => {
  console.log(`Listening on port ${port}`);
});
