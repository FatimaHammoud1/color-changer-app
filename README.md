
```markdown
# 🎨 Flutter Color Changer App

A simple Flutter app that dynamically changes the background color and gradient direction with the click of a button.

---

## 📱 **Overview**

The **Color Changer** app demonstrates the use of **stateful widgets**, **random color generation**, and **gradient direction control** in Flutter.

It contains:
- Two **buttons**:
  - **Change Color** → Changes the background to a random color and updates RGB values.
  - **Change Direction** → Cycles through 4 gradient directions:
    1. Vertical (Top → Bottom)  
    2. Horizontal (Left → Right)  
    3. Diagonal (Left-Right)  
    4. Diagonal (Right-Left)
- Two **text widgets**:
  - One displays the RGB values (Red, Green, Blue).
  - The other indicates the current gradient direction.

---

## 🧠 **Concepts Covered**

- Stateful Widgets (`StatefulWidget` / `setState`)
- Random number generation using `dart:math`
- Linear gradients with `BoxDecoration`
- Dynamic UI updates
- Basic button styling and layout with `Column`, `Center`, and `ElevatedButton`

---

## 🖼️ **App Behavior**

| Button | Function |
|--------|-----------|
| **Change Color** | Changes background to a new random color and updates RGB values. |
| **Change Direction** | Switches gradient direction sequentially (Vertical → Horizontal → Left-Right → Right-Left). |

---

## 🧩 **Code Structure**

```

lib/
│
├── main.dart        # App entry point
│   ├── MyApp        # Root widget
│   └── ColorChanger # Stateful widget handling color and direction logic

````


## 🎯 **Learning Outcome**

This project helps you understand:

* How Flutter updates its UI using **state management**.
* How to work with **colors and gradients** dynamically.
* How to build **interactive UIs** with user-driven changes.

---


