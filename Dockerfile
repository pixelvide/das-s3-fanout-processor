FROM public.ecr.aws/lambda/python:3.9

RUN pip install \
    aws-encryption-sdk \
    pyarrow

#COPY app.py .
COPY . .

CMD ["app.handler"]