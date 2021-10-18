import {Request, response, Response} from "express"

const createUser =  require("../services/CreateUserService")

class CreateUserController{
    async handle(req: Request, res: Response){
        const { name, email } = req.body

        const user = await createUser(name, email)

        return res.json(user)
    }
}

export { CreateUserController }