const { PrismaClient } = require('@prisma/client')

const prisma = new PrismaClient()

async function main() {
    // ... you will write your Prisma Client queries here
    const actualizacionUsuario = await prisma.usuario.update({
        where: { cedula: 102347712 },
        data: { contrasena: 'nuevacontra' },
    })
    console.log(actualizacionUsuario)

    const actualizacionReunion = await prisma.reunion.update({
        where: { id: 1 },
        data: { tipo: 'Virtual' },
    })
    console.log(actualizacionReunion)

    const actualizacionAhorro = await prisma.ahorro.update({
        where: { id: 101 },
        data: { tarifa: 8 },
    })
    console.log(actualizacionAhorro)
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