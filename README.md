
# 🧠 Swift Generative AI Avatar App (Swifty)

This is a cutting-edge iOS app that generates **custom AI avatars** from user photos — powered by **CoreML**, **Stable Diffusion**, and Swift. Using a fine-tuned diffusion model running directly on-device, it ensures privacy and blazing-fast results. Perfect for profile pictures, social avatars, and more!

---

## 🌟 Project Description

The Swift Generative AI Avatar App empowers users to generate artistic and unique avatars using a custom-trained diffusion model. Built for privacy and personalization, it works entirely offline using CoreML. Whether you're a developer exploring on-device generative AI, or an iOS user wanting awesome avatars — this app delivers.

---

## 🚀 How to Run

### Requirements

- macOS with Xcode 15+
- iPhone with iOS 16+ and A12 Bionic chip or newer
- Swift 5.9+
- CoreMLTools
- Precompiled Stable Diffusion CoreML model (see below)

### Steps

1. Clone the repository:

```bash
git clone https://github.com/yourusername/ai-avatar-generator-swifty.git
```

2. Download the Stable Diffusion CoreML model  
   👉 [apple/coreml-stable-diffusion](https://github.com/apple/ml-stable-diffusion)  
   Follow the instructions to convert to `.mlpackage`.

3. Open the project in Xcode:

```bash
open AIAvatarGenerator.xcodeproj
```

4. Add the `.mlpackage` file to your Xcode project.

5. Build and run the app on a real device (not simulator).

---

## ✨ Features

- 📸 Upload or capture a photo
- 🎨 Generate AI-based avatars with custom styles
- 🚀 On-device inference using CoreML
- 🔒 Works offline — no photo ever leaves your device
- 🧠 Optimized for Apple Neural Engine (ANE)
- 🖼️ Output preview + save to photo library

---

## 🛠 Tech Stack

| Tech            | Purpose                                |
|-----------------|----------------------------------------|
| Swift           | App logic and UI                       |
| CoreML          | Run Stable Diffusion locally           |
| UIKit / SwiftUI | User Interface                         |
| Stable Diffusion| Image generation backend               |

---

## 🧩 Future Ideas

- 🎭 Let users choose art styles (anime, pixel, painting)
- ☁️ Add iCloud sync for avatar history
- 🌐 Optionally integrate OpenAI DALL·E via API
- 🧑‍🎨 Fine-tune avatars using multiple selfies

---

## 💬 Why This Project?

Generative AI is changing how we create and express. This project puts that power in your pocket — with full privacy. It's a unique portfolio project combining iOS skills, CoreML, and GenAI.

Let your code make people smile — one avatar at a time 😊
