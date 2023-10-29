samtools & bcftools docker container-image for all your bioinformatic needs

Build the image
docker build -t samtools:1.18 . 

Use the image 
docker run \
    --rm \
    -it \
    -v /:/host \
    samtools:1.18 \
    sh -c '<your.samtools.or.bcftool.command>' 