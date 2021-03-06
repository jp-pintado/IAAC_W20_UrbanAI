#neuralstyle-tf \

CONTENT_FILE='/storage/2Dmodels/robotics_building_satellite.png'
STYLE_FILE='/storage/2Dmodels/new000343.png'
OUTPUT_FILE='/artifacts/roboticsbuilding_satellite_style000343_styleweight10.jpg'
IMAGE_SIZE=500     ## image size becomes IMAGE_SIZE x 2*IMAGE_SIZE
CONTENT_WEIGHT=5e0 ## default/original 5e0
STYLE_WEIGHT=1.0   ## default/original 1.0

python neural_style.py \
  --network /storage/imagenet-vgg-verydeep-19.mat \
  --content $CONTENT_FILE \
  --styles $STYLE_FILE \
  --output $OUTPUT_FILE \
  --width $IMAGE_SIZE \
  --content-weight $CONTENT_WEIGHT \
  --style-weight $STYLE_WEIGHT 

