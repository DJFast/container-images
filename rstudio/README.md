Rstudio docker container for custom Rstudio enviroments accessible via a webbrowser
/build/buil_rstudio.R can be modified to install additional pacakges

Build the image
docker build -t rstudio:4.1.3 .

Use the image 
docker run \
    --rm \
    -it \
    -v /:/host \
    -p 8787:8787 \
    -e PASSWORD=password \
    rstudio:4.1.3

use a web browser an navigate 
1) for virtual machines  http://<your-ip>:8787
2) for local machine http://localhost:8787

use login rstudio and password
You are in the container from a web! Do data science