#FOR PUI HACKATHON - ENERGY USE ESTIMATION - DASH WEBAPP

#used https://hub.docker.com/r/michaelerasmus/dash/~/dockerfile/ as reference
#https://github.com/michael-erasmus/dash-docker

FROM python:3-alpine

MAINTAINER marvin mananghaya <msm796@nyu.edu>

RUN pip install dash==0.17.7 dash-renderer==0.7.4 dash-html-components==0.7.0 dash-core-components==0.12.0 plotly==2.0.13
# Plotly graphing

EXPOSE 8050 

CMD ["python", "app.py"]

#note to self to build app
#docker build -t dash-energy-dashboard .

#note to self to run docker file
#sudo docker run --rm -it --net=host -v "$PWD":/usr/src/myapp dash-energy-dashboard
