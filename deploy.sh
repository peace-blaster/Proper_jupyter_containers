run this beforehand: chcon -Rt svirt_sandbox_file_t /home/USER/jupyter_stuff
podman run -p 8888:8888 -e JUPYTER_TOKEN=yoursecurepassword -e NB_UID=1000 -e CHOWN_EXTRA="/home/jovyan/work" --user root -v /home/USER/jupyter_stuff:/home/jovyan/work jupyter/pyspark-notebook
