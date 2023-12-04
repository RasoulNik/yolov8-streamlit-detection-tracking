

# Real-time Object Detection and Tracking with YOLOv8 and Streamlit

This repository, now enhanced with additional features, demonstrates the integration of object detection and tracking using the YOLOv8 object detection algorithm and Streamlit. Originally a local execution-based application, it has been modified for remote deployments with real-time webcam functionality in the browser, leveraging the `streamlit-webrtc` package.

## Enhanced Features

**Remote Webcam Functionality in Browser:** The application now supports real-time video streaming and processing through browsers, making it suitable for remote deployments. This is enabled by integrating the `streamlit-webrtc` package. The `play_webcam` function in the helper module has been revised to process video frames from the WebRTC streamer using the YOLOv8 model.

**Performance Metrics:** The system demonstrates efficient processing times with an average inference time per image of approximately 11.75ms. Preprocessing and postprocessing times average around 2.15ms and 2.6ms, respectively, ensuring minimal latency for real-time applications.

## Original Features

- User-friendly and customizable interface for real-time video stream object detection and tracking.
- Choice between detection or segmentation tasks with adjustable model confidence.


## Docker Installation

To run this application in a Docker container, follow these steps:

1. **Build the Docker Image:**
   ```bash
   docker build -t yolov8-streamlit-app .
   ```
   This command builds a Docker image named `yolov8-streamlit-app` from the Dockerfile in the current directory.

2. **Run the Docker Container:**
   ```bash
   docker run --gpus all -p 8501:8501 yolov8-streamlit-app
   ```
   This command runs the Docker container, mapping port 8501 of the container to port 8501 on the host machine.


### Running with Self-Signed Certificate

To securely access the Streamlit application over HTTPS using a self-signed certificate, follow these steps:

1. **Generate a Self-Signed Certificate:**
   Use OpenSSL to create a self-signed certificate and a private key without a passphrase:
   ```bash
   openssl req -x509 -newkey rsa:4096 -keyout private.key -out certchain.pem -days 365 -nodes
   ```
   Place these files in a known directory.

2. **Configure Streamlit for HTTPS:**
   In the `.streamlit/config.toml` file, specify the paths to the certificate and key:
   ```toml
   [server]
   sslCertFile = '/path/to/certchain.pem'
   sslKeyFile = '/path/to/private.key'
   ```
   Ensure these paths correctly point to where you stored the certificate and key.

3. **Build and Run the Docker Container:**
   Build the Docker image and run the container with port mapping as described in the Docker Installation section. The Streamlit app will now be accessible over HTTPS.

Self-signed certificates are typically used for testing and should not be used in production environments.

The current repo is preconfigured for HTTPS access with a self-signed certificate. To use your own certificate, replace the `certchain.pem` and `private.key` files in the `certs` directory with your own certificate and key, respectively. Then, follow the steps above to configure Streamlit for HTTPS.


## Requirements

- streamlit
- ultralytics
- Pillow
- opencv-python-headless
- pytube
- streamlit-webrtc

```bash
pip install -r requirements.txt
```


## Accessing the Application

After successfully setting up and running the application, you can access the Streamlit web interface securely over HTTPS:

1. Open your web browser.

2. Navigate to `https://localhost:8501`.

   - Since a self-signed certificate is used, your browser may warn you that the connection is not private. You will need to proceed past this warning (the exact method varies by browser).

Remember, this method is for testing purposes only. For production environments, it's recommended to use a certificate from a trusted certificate authority.

## Installation and Usage

Follow the original instructions for installation and usage. Refer to the updated `settings.py` for configuring video sources, including RTSP streams and YouTube videos.

For further documentation on the Docker setup and containerization, refer to the [original README file](https://github.com/CodingMantras/yolov8-streamlit-detection-tracking/blob/master/README.md).

## Acknowledgements

This app is based on the YOLOv8 object detection algorithm and uses the Streamlit library for the user interface. The recent enhancements have been made to facilitate remote deployment and real-time browser-based object detection.

### Disclaimer

This project is for educational purposes and not recommended for production environments.

**If you appreciate these enhancements, consider giving a star ⭐ to this repo!**
