#Default to amd64 image
FROM usuit/sysadmin-exercise:amd64
#Switch to arm64 if needed for your computer's architecture
#FROM usuit/sysadmin-exercise:arm64

RUN git clone https://git@github.com/utahstate/sysadmin-exercise-webapp.git
