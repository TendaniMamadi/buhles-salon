import express from 'express';
import { engine } from 'express-handlebars';
import bodyParser from 'body-parser';
import flash from 'express-flash';
import session from 'express-session';
import pgPromise from 'pg-promise';
import 'dotenv/config';
import salonBooking from './services/salon-booking.js';
import dbQueries from './services/db_queries.js';
import routes from './routes/route.js';


const app = express();
const connectionString = process.env.DATABASE_URL
const pgp = pgPromise({});
const db = pgp(connectionString);
const frontEndInstance = salonBooking();
const backEndInstance = dbQueries(db);
const routeInstance = routes(frontEndInstance,backEndInstance);

app.engine('handlebars', engine({
    layoutsDir: './views/layouts'
}));
app.use(session({
    secret: "Buhles-salon",
    resave: false,
    saveUninitialized: true
}));
app.use(flash());
app.set('view engine', 'handlebars');
app.set('views', './views');
app.use(express.static('public'));
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
app.use(express.json());

const PORT = process.env.PORT || 2000;
app.listen(PORT, (req, res) => {
    console.log('We taking off on port:', PORT)
});
