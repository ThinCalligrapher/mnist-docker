FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .

# Install CPU-only PyTorch + torchvision (compatible versions)
RUN pip install --no-cache-dir \
    torch==2.1.2+cpu torchvision==0.16.2+cpu \
    -f https://download.pytorch.org/whl/cpu/torch_stable.html && \
    pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--allow-root", "--no-browser"]

