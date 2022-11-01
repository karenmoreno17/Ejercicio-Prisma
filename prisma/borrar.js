const { PrismaClient } = require('@prisma/client')

const prisma = new PrismaClient()

async function main() {
    // ... you will write your Prisma Client queries here
    const borrarUsuario = await prisma.usuario.delete({
        where: { cedula: 104386552 }
    })
    console.log(borrarUsuario)

    const borrarReunion = await prisma.reunion.delete({
        where: { id: 2 }
    })
    console.log(borrarReunion)

    const borrarAhorro = await prisma.ahorro.delete({
        where: { id: 202 }
    })
    console.log(borrarAhorro)

}

main()
    .then(async () => {
        await prisma.$disconnect()
    })
    .catch(async (e) => {
        console.error(e)
        await prisma.$disconnect()
        process.exit(1)
    })