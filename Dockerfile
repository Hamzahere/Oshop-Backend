FROM node:16.17.1-alpine

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 8000
# required for docker desktop port mapping

# Set environment variables from the .env file
ENV PORT=8000
ENV NODE_ENV=DEVELOPMENT
ENV MONGO_URI=mongodb+srv://taaha:taaha12@cluster0.fjvg81h.mongodb.net/
ENV JWT_SECRET_KEY=hbhvbhawbHbbvbkjb282rqwbubgugbgbb
ENV JWT_EXPIRES=2d
ENV SMPT_HOST=smtp.gmail.com
ENV SMPT_PORT=465
ENV SMPT_SERVICE=gmail
ENV SMPT_MAIL=muhammadtaaha.94@gmail.com
ENV SMPT_PASSWORD="timi yxdk noxy nwqr"
ENV STRIPE_SECRET_KEY=sk_test_51IcQABEFdz2fMrCkrCwM7oeamNQhOPY4Kd7CEyHaD3xgWOML83rCySx1oTh9ckDr1TDL468z3HsASx5nE4AUIcia00m0hQIQ33
ENV STRIPE_API_KEY=pk_test_51IcQABEFdz2fMrCkHVUIVCSVCUGZSC059a4u7HnatX9iQEEo28VaUxmwMUUMsLIyyhqfCUfarSCjtwpfjsFoTwZT001pIQTFSq
ENV ACTIVATION_SECRET=bnhbvgbbbhghbvhbhbhbvehbhebvuebube840948h8h

CMD ["npm", "start"]