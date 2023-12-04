To update your current README file with information about the Dockerfile you've used, you can add a new section titled "Docker Installation" that explains how to build and run the Docker container. Here's how you can incorporate this into your README:

---

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

After running these commands, the Streamlit app should be accessible at `http://localhost:8501`.

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

## Installation and Usage

Follow the original instructions for installation and usage. Refer to the updated `settings.py` for configuring video sources, including RTSP streams and YouTube videos.

For further documentation on the Docker setup and containerization, refer to the [original README file](https://github.com/CodingMantras/yolov8-streamlit-detection-tracking/blob/master/README.md).

## Acknowledgements

This app is based on the YOLOv8 object detection algorithm and uses the Streamlit library for the user interface. The recent enhancements have been made to facilitate remote deployment and real-time browser-based object detection.

### Disclaimer

This project is for educational purposes and not recommended for production environments.

**If you appreciate these enhancements, consider giving a star ⭐ to this repo!**

---

This updated README now includes instructions for building and running the Docker container and a link to the original README for further documentation.