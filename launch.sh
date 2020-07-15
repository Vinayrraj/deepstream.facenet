gst-launch-1.0 uridecodebin \
uri=file:///home/user/videofiles/video.mp4 caps='video/x-raw(memory:NVMM)' \
! nvvideoconvert  \
! m.sink_0 nvstreammux name=m width=640 height=360 batch-size=1   \
! nvinfer config-file-path=./config_facenet_primary.txt   \
! nvvideoconvert  \
! nvdsosd   \
! nvvideoconvert  \
! nvegltransform ! nveglglessink -e


