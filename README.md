# Timestamp-Microservice

https://www.freecodecamp.org/learn/apis-and-microservices/apis-and-microservices-projects/timestamp-microservice

- A request to /api?time=1622937600000 with a valid date is return a JSON object with a unix key that is a Unix timestamp of the input date in milliseconds

- A request to /api?time=2015-12-25 with a valid date is return a JSON object with a utc key that is a string of the input date in the format: 2021-06-06

## Example Requests
 http://localhost:3000/converter/api?time=1622937600
```bash
{"unix":"1622937600000","utc":"2021-06-06T00:00:00.000+00:00"}
```

http://localhost:3000/converter/api?time=1622937600000
```bash
Reseponse 
{"unix":"1622937600000","utc":"2021-06-06T00:00:00.000+00:00"}
```

http://localhost:3000/converter/api?time=2021-06-06
```bash
Reseponse 
{"unix":"1622937600000","utc":"2021-06-06T00:00:00.000+00:00"}
```
