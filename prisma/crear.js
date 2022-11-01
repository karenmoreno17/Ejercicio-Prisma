//Se importa e instancia el cliente Prisma del módulo @prisma/client.

const { PrismaClient } = require('@prisma/client')

const prisma = new PrismaClient()

//Se define una función asíncrona para mandar los queries a la base de datos.
async function main() {
    // ... you will write your Prisma Client queries here
    await prisma.usuario.create({
        data: {

            cedula: 102347712,
            contrasena: 'password',
            nombre: 'Karen',
            telefono: 2851372,
        },

    })

    await prisma.usuario.create({
        data: {

            cedula: 104386552,
            contrasena: 'password1',
            nombre: 'Daniela',
            telefono: 2314812,
        },

    })

    await prisma.reunion.create({
        data: {

            id: 1,
            motivo: 'Ajuste de interés',
            tipo: 'Presencial',
        },

    })

    await prisma.reunion.create({
        data: {

            id: 2,
            motivo: 'Consulta de seguimiento',
            tipo: 'Virtual',
        },

    })

    await prisma.ahorro.create({
        data: {

            id: 101,
            monto: 1100000,
            tarifa: 7,
            descripcion: 'Ahorro 1 año',
        },

    })

    await prisma.ahorro.create({
        data: {

            id: 202,
            monto: 3400000,
            tarifa: 5,
            descripcion: 'Ahorro 3 año',
        },

    })

}

//Cierra las conexiones a la base de datos terminado el script.
main()
    .then(async () => {
        await prisma.$disconnect()
    })
    .catch(async (e) => {
        console.error(e)
        await prisma.$disconnect()
        process.exit(1)
    })