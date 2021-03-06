const express = require('express')

import { Request, Response} from 'express'
import { router } from './routes'

const app = express();

app.use(express.json())

app.use(router)

app.listen(3000, () => console.log("server is running"))