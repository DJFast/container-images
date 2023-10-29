fastqc docker container-image for all your fastq quality control needs

Build the image
docker build -t fastqc:0.12.1 .

Use the image 
docker run \
    --rm \
    -it \
    -v /:/host \
    fastqc:0.12.1 \
    sh -c '<your.fastqc.command>' 