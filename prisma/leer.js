const { PrismaClient } = require('@prisma/client')

const prisma = new PrismaClient()

async function main() {
    // ... you will write your Prisma Client queries here
    const usuarios = await prisma.usuario.findMany()
    console.dir(usuarios, { depth: null })

    const reuniones = await prisma.reunion.findMany()
    console.dir(reuniones, { depth: null })

    const ahorros = await prisma.ahorro.findMany()
    console.dir(ahorros, { depth: null })

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