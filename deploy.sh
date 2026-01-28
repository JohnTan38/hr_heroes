#!/bin/bash

# HR Heroes Vercel Deployment Script
# This script helps you deploy your HR Heroes webpage to Vercel

echo "🚀 HR Heroes Deployment Helper"
echo "================================"
echo ""

# Check if we're in the right directory
if [ ! -f "public/index.html" ]; then
    echo "❌ Error: public/index.html not found!"
    echo "Please run this script from the hr_heroes_deploy directory"
    exit 1
fi

echo "✅ Found project files"
echo ""

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "📦 Initializing Git repository..."
    git init
    git add .
    git config user.email "john@example.com"
    git config user.name "John Tan"
    git commit -m "Initial commit: HR Heroes webpage"
    echo "✅ Git repository initialized"
else
    echo "✅ Git repository already initialized"
fi

echo ""
echo "🎯 Deployment Options:"
echo "====================="
echo ""
echo "1. GitHub + Vercel (Recommended)"
echo "   - Create repo: https://github.com/new"
echo "   - Name it: hr_heroes"
echo "   - Then run:"
echo "     git remote add origin https://github.com/JohnTan38/hr_heroes.git"
echo "     git branch -M main"
echo "     git push -u origin main"
echo "   - Deploy on Vercel: https://vercel.com/new"
echo ""
echo "2. Vercel CLI"
echo "   - Install: npm i -g vercel"
echo "   - Login: vercel login"
echo "   - Deploy: vercel --prod"
echo ""
echo "3. Drag & Drop"
echo "   - Go to: https://vercel.com/new"
echo "   - Drag the 'public' folder"
echo ""

echo "📝 After deployment, you'll get a URL like:"
echo "   https://hr-heroes.vercel.app"
echo ""

# Offer to open browser
read -p "🌐 Would you like to open Vercel dashboard? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    if command -v xdg-open &> /dev/null; then
        xdg-open "https://vercel.com/new"
    elif command -v open &> /dev/null; then
        open "https://vercel.com/new"
    else
        echo "Please open https://vercel.com/new in your browser"
    fi
fi

echo ""
echo "✨ Happy deploying!"
