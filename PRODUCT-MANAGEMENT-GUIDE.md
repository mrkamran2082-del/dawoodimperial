# Product Management Guide - Dawood Imperial

## 📁 Image Folder Structure

### New Image Folders Created:
```
shop/
  └── images/
      ├── perfumes/     (Perfume ki images yahan save karein)
      └── watches/      (Watch ki images yahan save karein)
```

### Image Save Karne Ka Tareeqa:
1. Apni perfume ki image ko `shop/images/perfumes/` folder mein save karein
2. Apni watch ki image ko `shop/images/watches/` folder mein save karein
3. Image ka naam simple rakhein jaise: `perfume1.jpg`, `perfume2.jpg`, `watch1.jpg`, etc.

---

## 🛍️ Product Add/Edit/Delete Kaise Karein

### File Location:
**Main File:** `js/products.js`

### 1️⃣ NAYI PRODUCT ADD KARNA

**Step 1:** `js/products.js` file open karein

**Step 2:** Products array mein nayi product add karein:

```javascript
{
    id: 19,  // Unique ID (sabse badi ID se 1 zyada)
    name: "Apni Product Ka Naam",
    category: "perfumes",  // ya "watches"
    brand: "Brand Name",
    price: 15000,  // Actual price
    originalPrice: 18000,  // Original price (discount dikhane ke liye)
    discount: 17,  // Discount percentage
    image: "shop/images/perfumes/perfume1.jpg",  // Main image path
    images: [
        "shop/images/perfumes/perfume1.jpg",
        "shop/images/perfumes/perfume2.jpg"
    ],
    description: "Product ki description yahan likhein",
    rating: 4.8,  // Rating (1-5)
    reviews: 156,  // Reviews ki count
    stock: 25,  // Stock quantity
    featured: true,  // Homepage par dikhana hai to true
    gender: "men",  // "men", "women", ya "unisex"
    season: "winter",  // "winter", "summer", "spring", "autumn", "all"
    scentType: "Oriental",  // Perfume ke liye: "Oriental", "Woody", "Floral", etc.
    details: {
        size: "100ml",
        type: "Eau de Parfum",
        longevity: "8-12 hours",
        sillage: "Strong",
        notes: "Top: Rose | Heart: Oud | Base: Musk"
    }
}
```

**Watch ke liye example:**
```javascript
{
    id: 20,
    name: "Luxury Watch",
    category: "watches",
    gender: "men",
    brand: "Rolex",
    price: 850000,
    originalPrice: 950000,
    discount: 11,
    image: "shop/images/watches/watch1.jpg",
    images: ["shop/images/watches/watch1.jpg"],
    description: "Luxury watch description",
    rating: 5.0,
    reviews: 456,
    stock: 3,
    featured: true,
    luxury: true,  // Luxury watch ke liye
    watchType: "Automatic",  // "Automatic", "Quartz", "Chronograph"
    details: {
        movement: "Swiss Automatic",
        caseMaterial: "Stainless Steel",
        dialColor: "Black",
        waterResistance: "100m",
        caseSize: "42mm",
        strapMaterial: "Leather"
    }
}
```

---

### 2️⃣ PRODUCT EDIT KARNA (Name, Price, Details Change)

**Step 1:** `js/products.js` file open karein

**Step 2:** Jo product edit karni hai, uski ID se search karein (Ctrl+F)

**Step 3:** Values change karein:

```javascript
// Price change karna:
price: 20000,  // Nayi price yahan likhein
originalPrice: 25000,  // Original price

// Name change karna:
name: "Nayi Product Name",

// Description change karna:
description: "Nayi description yahan likhein",

// Stock change karna:
stock: 50,  // Nayi stock quantity

// Image change karna:
image: "shop/images/perfumes/new-image.jpg",
```

---

### 3️⃣ PRODUCT DELETE KARNA

**Step 1:** `js/products.js` file open karein

**Step 2:** Jo product delete karni hai, uski puri entry delete kar dein

**Example:**
```javascript
// YE PURI ENTRY DELETE KAR DEIN:
{
    id: 5,
    name: "Amber Nights",
    category: "perfumes",
    // ... baaki sab
},  // <-- Comma bhi delete karein agar last product hai
```

⚠️ **Important:** Agar beech ki product delete kar rahe hain to comma (,) zaroor check karein!

---

### 4️⃣ HOMEPAGE PAR PRODUCT DIKHANA/CHUPANA

**Homepage par dikhane ke liye:**
```javascript
featured: true,  // Homepage par dikhega
```

**Homepage se hatane ke liye:**
```javascript
featured: false,  // Sirf shop page par dikhega
```

---

## 💰 Price Change Karne Ka Quick Guide

### Single Product Ki Price Change:
1. `js/products.js` open karein
2. Product ID se search karein (Ctrl+F)
3. Price change karein:
```javascript
price: 15000,        // Nayi selling price
originalPrice: 18000, // Original price (discount dikhane ke liye)
discount: 17,        // Auto calculate: ((18000-15000)/18000)*100 = 17%
```

### Discount Calculate Karna:
```
Discount % = ((Original Price - Sale Price) / Original Price) × 100
```

**Example:**
- Original Price: 20,000
- Sale Price: 16,000
- Discount: ((20000-16000)/20000) × 100 = 20%

---

## 📸 Image Path Format

### Perfume Images:
```javascript
image: "shop/images/perfumes/perfume1.jpg"
```

### Watch Images:
```javascript
image: "shop/images/watches/watch1.jpg"
```

### Multiple Images:
```javascript
images: [
    "shop/images/perfumes/perfume1.jpg",
    "shop/images/perfumes/perfume2.jpg",
    "shop/images/perfumes/perfume3.jpg"
]
```

---

## ✅ Changes Save Karne Ke Baad

1. File save karein (Ctrl+S)
2. Browser refresh karein (F5)
3. Changes check karein homepage ya shop page par

---

## 🆘 Common Issues & Solutions

### Issue 1: Product nahi dikh rahi
**Solution:** 
- Check karein `featured: true` hai
- Image path sahi hai
- File save ki hai

### Issue 2: Image nahi dikh rahi
**Solution:**
- Image path check karein
- Image folder mein hai ya nahi
- Image name spelling sahi hai

### Issue 3: Price update nahi ho rahi
**Solution:**
- Browser cache clear karein (Ctrl+Shift+Delete)
- Hard refresh karein (Ctrl+F5)

---

## 📝 Quick Reference

| Kaam | File | Location |
|------|------|----------|
| Product Add/Edit/Delete | `js/products.js` | Line 2 se start |
| Images Save | `shop/images/perfumes/` ya `shop/images/watches/` | - |
| Homepage Settings | `index.html` | - |
| Shop Page Settings | `shop.html` | - |

---

## 🎯 Important Notes

1. **ID unique honi chahiye** - Koi bhi 2 products ki same ID nahi honi chahiye
2. **Image size** - Images 500KB se kam rakhein (fast loading ke liye)
3. **Backup** - Changes se pehle `products.js` ki backup le lein
4. **Testing** - Har change ke baad test zaroor karein

---

**Need Help?** Agar koi problem ho to mujhe batayein! 😊
