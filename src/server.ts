const express = require('express')
import {Request, Response} from 'express'

const app = express();

app.use(express.json())

// app.get('/', (req: Request, res: Response) => {
//     res.send('Hello World')
// })

app.listen(3000, () => console.log("server is running"))