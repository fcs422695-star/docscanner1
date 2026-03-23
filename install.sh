#!/bin/bash
# DocScanner Pro - Easy Setup Script

echo "========================================"
echo "  DocScanner Pro - ইনস্টলেশন শুরু হচ্ছে"
echo "========================================"
echo ""

# Check Node.js
if ! command -v node &> /dev/null; then
  echo "❌ Node.js পাওয়া যায়নি!"
  echo "   https://nodejs.org থেকে Node.js 18+ ডাউনলোড করুন"
  exit 1
fi

NODE_VER=$(node -v)
echo "✅ Node.js পাওয়া গেছে: $NODE_VER"

# Install dependencies
echo ""
echo "📦 ডিপেন্ডেন্সি ইনস্টল হচ্ছে..."
npm install

if [ $? -ne 0 ]; then
  echo "❌ ইনস্টলেশন ব্যর্থ হয়েছে!"
  exit 1
fi

echo ""
echo "✅ ইনস্টলেশন সম্পন্ন!"
echo ""
echo "========================================"
echo "  অ্যাপ চালু করতে:"
echo "  npm start"
echo ""
echo "  ইনস্টলার তৈরি করতে (Windows):"
echo "  npm run build-win"
echo ""  
echo "  ইনস্টলার তৈরি করতে (Linux):"
echo "  npm run build-linux"
echo "========================================"
