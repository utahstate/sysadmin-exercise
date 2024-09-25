#Default to amd64 image
FROM usuit/sysadmin-exercise:amd64
#Switch to arm64 if needed for your computer's architecture
#FROM usuit/sysadmin-exercise:arm64

COPY requirements.txt /opt/app/ 

RUN pip install --no-cache-dir -r requirements.txt
