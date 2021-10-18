import { Request } from "express"

const { PrismaClient } = require('@prisma/client')

const prisma = new PrismaClient()

module.exports = async (name: string, email: string) =>{

    if(!email){
        throw new Error("Incorrect email")
    }

    const userAlreadyExists = await prisma.user.findUnique({
        where: {
            email: email
        }
    })

    if(userAlreadyExists){
        throw new Error("User already exists")
    }

    const newUser = await prisma.user.create({
        data:{
            name : name,
            email: email
        }
    })
    
    return newUser
}