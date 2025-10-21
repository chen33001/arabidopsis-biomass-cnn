# 🌿 Arabidopsis Biomass CNN

**A user-friendly, GUI-based toolkit for estimating _Arabidopsis thaliana_ biomass from top-view images using Convolutional Neural Networks (CNNs).**

---

## 🌱 Overview

**Arabidopsis Biomass CNN** provides a simple way for biologists to measure plant biomass automatically from photographs.  
Users can upload top-view RGB images of _Arabidopsis thaliana_ and instantly receive:

- Estimated **biomass values (grams)**
- Optional **Grad-CAM heatmaps** showing which plant areas influenced the prediction

Built with **Streamlit**, it runs locally or inside Docker with no coding required.

---

## 👩‍🔬 Designed For

- Plant scientists and phenotyping researchers who need fast, objective biomass measurements  
- Students in **Bioimage Analysis and Extended Phenotyping** courses  
- Developers who want to extend CNN pipelines for plant imaging  

---

## ⚙️ Key Features

✅ Streamlit graphical interface (drag-and-drop images)  
✅ Pretrained CNN (ResNet-based) for biomass prediction  
✅ Grad-CAM visualization of important regions  
✅ Batch prediction support  
✅ Cross-platform: Windows / macOS / Linux / Docker  
✅ Ready-to-run demo data and Colab notebook  

---

## 🚀 Quick Start for Biologists

### Option 1 — Run Locally (Recommended)

1. **Download or clone the repository**
   ```bash
   git clone https://github.com/<your-username>/arabidopsis-biomass-cnn.git
   cd arabidopsis-biomass-cnn
   ```

2. **Install requirements**
   ```bash
   pip install -r requirements.txt
   ```

3. **Launch the GUI**
   ```bash
   streamlit run app/gui_app.py
   ```

4. **Use the App**
   - A browser window opens at [http://localhost:8501](http://localhost:8501)  
   - Upload your plant image(s)  
   - View predicted biomass and optional visualization  
   - Download `.csv` results if desired

---

### Option 2 — Docker (Zero Setup)

```bash
docker build -t arabidopsis-biomass-cnn .
docker run -p 8501:8501 arabidopsis-biomass-cnn
```

Then open [http://localhost:8501](http://localhost:8501) in your browser.

---

### Option 3 — Google Colab

[![Open in Colab](https://colab.research.google.com/assets/colab-badge.svg)](examples/demo_notebook.ipynb)  
Run the notebook online — no installation or local environment needed.

---

## 🧠 How It Works

1. Uploaded images are preprocessed (cropped / normalized).  
2. A pretrained **ResNet-18 CNN** predicts biomass directly from pixels.  
3. **Grad-CAM** generates an activation map showing informative regions.  
4. Results are displayed and optionally saved as CSV.

---

## 📂 Repository Structure

```
arabidopsis-biomass-cnn/
├── biomasscnn/          # Core backend logic (model, predictor, visualization)
├── app/                 # Streamlit GUI for biologists
│   └── assets/          # Icons, style, and example images
├── examples/            # Demo images and notebooks
├── installers/          # Easy install scripts (Windows / macOS / Linux)
├── docs/                # Quick-start & troubleshooting guides
├── weights/             # Pretrained CNN weights (or download link)
├── data/                # Your input & processed image folders
├── results/             # Logs, figures, and prediction outputs
├── tests/               # Unit tests (for developers)
├── README.md
├── requirements.txt
├── setup.py
├── Dockerfile
└── LICENSE
```

---

## 🧾 Requirements

| Package | Minimum Version |
|----------|----------------|
| Python | ≥ 3.9 |
| torch | ≥ 2.2 |
| torchvision | ≥ 0.17 |
| streamlit | ≥ 1.38 |
| scikit-image | ≥ 0.22 |
| opencv-python | ≥ 4.9 |
| pandas / numpy / matplotlib | latest stable |

Full list → [`requirements.txt`](requirements.txt)

---

## 📊 Example Output

| Image | Predicted Biomass (g) | Visualization |
|:--|:--:|:--:|
| `plant_01.png` | 0.823 | ![GradCAM](app/assets/example_cam.png) |

---

## 📘 Documentation

- [Quick Start for Biologists](docs/quick_start_for_biologists.md)  
- [Troubleshooting Guide](docs/troubleshooting.md)  
- [Developer Reference](docs/reference.md)

---

## 📚 References

- **Arvidsson S., Pérez-Rodríguez P., Müller-Röber B.** (2011).  
  _A growth phenotyping pipeline for Arabidopsis thaliana integrating image analysis and rosette area modeling._  
- **Furbank R.T., Tester M.** (2011). _Phenomics – Technologies to relieve the phenotyping bottleneck._  
- **Zhang X., Hause R.J., Borevitz J.** (2012).  
  _Natural genetic variation for growth and development revealed by high-throughput phenotyping in Arabidopsis thaliana._  
- Course: **Bioimage Analysis and Extended Phenotyping (WS 2025/26)** — Dr. Christian Kappel, University of Potsdam

---

## 📦 Citation

> Wei-Fu Chen (2025). _Arabidopsis Biomass CNN: A GUI-based CNN toolkit for image-based biomass estimation._  
> University of Potsdam

---

## 🧠 License

MIT License © 2025 Wei-Fu Chen.  
You’re free to use, modify, and distribute this project with attribution.
