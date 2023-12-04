
# Real-time Object Detection and Tracking with YOLOv8 and Streamlit

This repository, now enhanced with additional features, demonstrates the integration of object detection and tracking using the YOLOv8 object detection algorithm and Streamlit. Originally a local execution-based application, it has been modified for remote deployments with real-time webcam functionality in the browser, leveraging the `streamlit-webrtc` package.

## Enhanced Features

**Remote Webcam Functionality in Browser:** The application now supports real-time video streaming and processing through browsers, making it suitable for remote deployments. This is enabled by integrating the `streamlit-webrtc` package. The `play_webcam` function in the helper module has been revised to process video frames from the WebRTC streamer using the YOLOv8 model.

**Performance Metrics:** The system demonstrates efficient processing times with an average inference time per image of approximately 11.75ms. Preprocessing and postprocessing times average around 2.15ms and 2.6ms, respectively, ensuring minimal latency for real-time applications.

## Original Features

- User-friendly and customizable interface for real-time video stream object detection and tracking.
- Choice between detection or segmentation tasks with adjustable model confidence.

### Demo WebApp

The app is available on the Streamlit cloud server. Check the demo [here](https://codingmantras-yolov8-streamlit-detection-tracking-app-njcqjg.streamlit.app/).



## Requirements

- Python 3.6+
- YOLOv8
- Streamlit

```bash
pip install ultralytics streamlit pytube
```

## Installation and Usage

Follow the original instructions for installation and usage. Refer to the updated `settings.py` for configuring video sources, including RTSP streams and YouTube videos.

## Acknowledgements

This app is based on the YOLOv8 object detection algorithm and uses the Streamlit library for the user interface. The recent enhancements have been made to facilitate remote deployment and real-time browser-based object detection.

### Disclaimer

This project is for educational purposes and not recommended for production environments.

**If you appreciate these enhancements, consider giving a star ⭐ to this repo!**
