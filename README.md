# 📄 DocScanner Pro

CamScanner-এর মতো একটি পেশাদার ডকুমেন্ট স্ক্যানার অ্যাপ — সম্পূর্ণ অফলাইন, বিজ্ঞাপনমুক্ত।

## ✨ ফিচারসমূহ
- 📁 JPG, PNG, BMP, TIFF, WEBP সাপোর্ট
- 🎨 রঙিন, গ্রেস্কেল, সাদাকালো, ম্যাজিক মোড
- ☀️ ব্রাইটনেস ও কনট্রাস্ট নিয়ন্ত্রণ
- 🔄 ছবি ঘোরানো
- 📄 PDF এক্সপোর্ট (A4/Letter)
- 🖼️ ছবি সেভ
- ⚡ বিল্ট-ইন REST API (পোর্ট 7823)
- 💻 Windows / Linux / macOS সাপোর্ট

---

## 🚀 ইনস্টলেশন

### ধাপ ১: Node.js ইনস্টল করুন
https://nodejs.org থেকে Node.js 18+ ডাউনলোড করুন।

### ধাপ ২: ডিপেন্ডেন্সি ইনস্টল করুন
```bash
cd docscanner
npm install
```

### ধাপ ৩: অ্যাপ চালু করুন (ডেভেলপমেন্ট)
```bash
npm start
```

### ধাপ ৪: ইনস্টলার তৈরি করুন

**Windows (.exe ইনস্টলার):**
```bash
npm run build-win
```
`dist/` ফোল্ডারে `DocScanner Pro Setup.exe` তৈরি হবে।

**Linux (.AppImage):**
```bash
npm run build-linux
```

**সব প্ল্যাটফর্ম:**
```bash
npm run build
```

---

## 🔌 REST API ব্যবহার

অ্যাপ চালু থাকলে API স্বয়ংক্রিয়ভাবে `http://127.0.0.1:7823` এ চলে।

### API স্ট্যাটাস চেক
```bash
curl http://127.0.0.1:7823/api/health
```

### ছবি এনহান্স করুন
```bash
curl -X POST http://127.0.0.1:7823/api/enhance \
  -F "image=@/path/to/photo.jpg" \
  -F "mode=bw" \
  -F "contrast=20" \
  -o enhanced.jpg
```

### JSON দিয়ে এনহান্স
```bash
curl -X POST http://127.0.0.1:7823/api/enhance \
  -H "Content-Type: application/json" \
  -d '{"imageBase64": "BASE64_STRING", "mode": "magic", "brightness": 10}'
```

### PDF তৈরি করুন
```bash
curl -X POST http://127.0.0.1:7823/api/pdf \
  -H "Content-Type: application/json" \
  -d '{"images": ["BASE64_1", "BASE64_2"], "pageSize": "A4"}' \
  -o output.pdf
```

### একসাথে অনেক ছবি প্রক্রিয়া
```bash
curl -X POST http://127.0.0.1:7823/api/batch \
  -F "images=@page1.jpg" \
  -F "images=@page2.jpg" \
  -F "mode=grayscale"
```

---

## 📦 API প্যারামিটার

| প্যারামিটার | মান | বিবরণ |
|---|---|---|
| `mode` | color, grayscale, bw, magic | রঙ মোড |
| `brightness` | -100 থেকে +100 | আলো নিয়ন্ত্রণ |
| `contrast` | -100 থেকে +100 | কনট্রাস্ট |
| `rotate` | 0, 90, 180, 270 | ঘোরানো |
| `sharpen` | true/false | শার্পনেস |
| `quality` | 1-100 | JPEG মান |
| `pageSize` | A4, Letter, Legal | PDF পৃষ্ঠার আকার |

---

## 🛠 প্রযুক্তি

- **Electron** — ক্রস-প্ল্যাটফর্ম ডেস্কটপ অ্যাপ
- **Express.js** — REST API সার্ভার
- **Jimp** — ছবি প্রক্রিয়াকরণ
- **PDFKit** — PDF জেনারেশন
- **electron-builder** — ইনস্টলার তৈরি

---

## 📋 সিস্টেম রিকোয়ারমেন্ট
- Windows 10/11, Ubuntu 20+, macOS 11+
- Node.js 18+
- RAM: 256MB+
- Storage: 200MB
