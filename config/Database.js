import { Sequelize } from "sequelize";

const db = new Sequelize ('backend_test_db','root','',{
    host : "localhost",
    dialect : "mysql"
});

export default db;