// Entry Point Index.js

// import express.js
import express from "express";

// import dotenv
import dotenv from "dotenv";

// import cookie-parser
import cookieParser from "cookie-parser";

// import CORS
import cors from "cors";

// import db
import db from "./config/Database.js";

// import router
import router from './routes/index.js';

// import tabel secara langsung
// => import Users from "./models/UserModel.js";

dotenv.config();

const app = express();

// check connection 
try {
    await db.authenticate();
    console.log('Database Terkoneksi');

    // Generate Tabel => await Users.sync();

} catch (error) {
    console.log('Database ERROR');
}

// middleware
app.use(cors({ credentials: true, origin:'http://localhost:3000'}));
app.use(cookieParser());
app.use(express.json());
app.use(router);

app.listen(3000, ()=> console.log('Server berjalan pada port 3000'));