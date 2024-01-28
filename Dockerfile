FROM tensorflow/tensorflow:nightly-gpu

WORKDIR /model

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

EXPOSE 8888

# Run the application.
ENTRYPOINT [ "jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--no-browser" ]