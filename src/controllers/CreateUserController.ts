import {Request, response, Response} from "express"

class CreateUserController{
    async handle(req: Request, res: Response){
        const {name, email, birthday} = req.body

        const createUserService = new CreateUserService();

        const user = await createUserService.execute({name, email})
        
        return response.json(user)
    }
}