FROM golang:latest 
RUN mkdir /app
RUN mkdir /backup_app
COPY . /app/ 
COPY . /usr/local/go/src/ 
WORKDIR /app/go_file/
RUN go build -o main . 
CMD ["/app/go_file/main"]



