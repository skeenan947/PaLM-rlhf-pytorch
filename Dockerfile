FROM pytorch/pytorch:2.0.0-cuda11.7-cudnn8-runtime

ADD ./ palm-rlhf
RUN pip install -r palm-rlhf/requirements.txt

WORKDIR palm-rlhf
CMD python train.py
