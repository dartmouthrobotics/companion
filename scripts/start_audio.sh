export LD_LIBRARY_PATH=/usr/local/lib/

# load gstreamer options
gstOptions=$(tr '\n' ' ' < $HOME/gstreamer2-audio.param)

cd $HOME/
gst-launch-1.0 -v -e alsasrc device=hw:1,0 $gstOptions


#gst-launch-1.0 -v -e alsasrc device=hw:1,0 ! audioconvert ! tcpserversink host=192.168.2.2 port=5700

# This one fo-sho works
#gst-launch-1.0 -v -e alsasrc device=hw:1,0 ! audioconvert ! lamemp3enc ! tcpserversink host=192.168.2.2 port=5700
