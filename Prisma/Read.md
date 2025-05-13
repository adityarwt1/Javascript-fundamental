1.  first command when you use prisma into the next js

npm install prisma tsx --save-dev
npm install @prisma/client @prisma/extension-accelerate

2. 

 npx prisma init --db --output ../app/generated/prisma

 3. 

  npx prisma init --db --output ../app/generated/prisma

  4. 
  
  npx prisma migrate dev --name init

  5. 

  mkdir -p lib && touch lib/prisma.ts

  6. 

  npx prisma studio
  