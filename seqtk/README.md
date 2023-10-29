seqtk docker container-image for all your fastq and fasta needs 

Build the image
docker build -t seqtk:1.4 . 

Use the image 
docker run \
    --rm \
    -it \
    -v /:/host \
    seqtk:1.4 \
    sh -c '<your.seqtk.command>'