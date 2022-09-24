import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();

async function main() {
  const result = await prisma.courses.update({
    where: {
      id: 'd502706b-5fc7-4c91-9355-cd6380e84050'
    },
    data: {
      duration: 768
    }
  });
  console.log(result);
}

main();