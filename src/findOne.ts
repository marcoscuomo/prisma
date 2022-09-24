import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();

async function main() {
    const courses = await prisma.courses.findFirst();
    console.log(courses);
}

main();