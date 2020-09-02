FROM mcr.microsoft.com/dotnet/core/sdk:3.1

RUN apt-get update && apt-get install -y xinetd
RUN mkdir -p /var/ctf /app
COPY flag /var/ctf/
COPY myservice /etc/xinetd.d/
COPY Program.fs /app
COPY *.fsproj /app

RUN echo "myservice 4000/tcp" >> /etc/services
RUN service xinetd restart

WORKDIR /app
CMD ["xinetd", "-dontfork"]
