# MNIST Dockerized Model

This project demonstrates a simple neural network trained on the MNIST dataset, containerized with Docker. It includes two Jupyter notebooks: one that builds a one-layer model from scratch, and another that uses PyTorch for a multi-layer perceptron (MLP).

## Getting Started

### 1. Clone the repo
```bash
git clone https://github.com/ThinCalligrapher/mnist-docker.git
cd mnist-docker
```

### 2. Build the Docker image
```bash
docker build -t mnist-docker .
```

### 3. Run the container
```bash
docker run -p 8888:8888 mnist-docker
```

This will start a Jupyter Notebook server inside the container. Look in your terminal for a login URL with a token, something like:

```
http://127.0.0.1:8888/?token=abcd1234...
```

Open that link in your browser or go to http://localhost:8888 and paste in the token.

## Notebooks

- oneLayer.ipynb – a simple neural net built from scratch  
- MLP-classifier.ipynb – a PyTorch multi-layer perceptron classifier

## Notes

- The Dockerfile installs CPU-only PyTorch, so no GPU is required.  
- Datasets (MNIST) are loaded automatically by PyTorch the first time you run the notebook.  
- If notebook outputs (plots, training results) are saved in the repo, you will see them directly on GitHub.  
- To clear outputs and run fresh: in Jupyter, go to Kernel > Restart & Clear Output before saving.  

## Requirements (handled by Docker)

- Python 3.10  
- PyTorch (CPU build)  
- TorchVision  
- NumPy  
- Matplotlib  
- Jupyter  

## Contact

If you have questions or want to collaborate, feel free to connect:  
- GitHub: https://github.com/ThinCalligrapher
- Email: cleino@crimson.ua.edu
- Phone: 414-627-8588
