 initial command to make this folder
 npx try-prisma@latest \
    --template databases/prisma-postgres \
    --databaseUrl 'prisma+postgres://accelerate.prisma-data.net/?api_key=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhcGlfa2V5IjoiYTYzNzVlYmItNTIzOS00OTRjLTg3MTEtNTJhNDZhOGJjMmE4IiwidGVuYW50X2lkIjoiOTkzMWM4ZjBkZjU3NTQxNjMwMGRhMzVhOTY0ZWZlZWY0ODFiYmU0MDllMDA0MDhmM2ViMTFjNWIxMGI5ZmY3YyIsImludGVybmFsX3NlY3JldCI6ImFiMGVmZTA2LTg1ZGQtNGRkMy05MjliLTFlNWUwZTg3ZWY0ZCJ9.Oe9iwFumO1eO14Zjcbtpnusb4HNs6cdr6UInePBJsl4' \
    --name hello-prisma \
    --install npm


cd hello-prisma && npx prisma migrate dev --name init