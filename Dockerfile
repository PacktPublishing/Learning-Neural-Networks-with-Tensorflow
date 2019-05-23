FROM tensorflow/tensorflow:1.3.0-py3
COPY jupyter_notebook_config.py /root/.jupyter/
COPY run_jupyter.sh /
RUN chmod +x /run_jupyter.sh
WORKDIR "/notebooks" 
RUN pip install keras
CMD ["/run_jupyter.sh"]

