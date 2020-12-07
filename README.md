# agcoJetsonNano
These scripts are used to set up Jetson Nano, so that it runs image processing instead of GQS.
To install company software, see confluence for guide

After opencv has been installed, run the following in the terminal:
git clone http://agraneng02.eame.agcocorp.com/git/crystal.git
git checkout jetson_nano
cp -r crystal/projects/jetson_nano/* ~/

After this, run:
chmod +x startupScript.sh
./startupScript.sh

When the reboot is done, run:
chmod +x installOpenCV.sh
./installOpenCV.sh

python3 opencv_test/Test_libcAlgorithm2_run_img2Metrics.py