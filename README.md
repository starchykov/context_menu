# Context menu

Context menu for Flutter projects.

Overview:


<img alt="img.png" src="https://github.com/starchykov/context_menu/blob/main/assets/Screenshot_1661554576.png" width="400"/>


Basic Usage:
```
ContextMenu(
        bottomOffsetHeight: 8,
        borderRadius: 8,
        actions: [
          ContextMenuAction(title: 'Share', icon: IconData, onPress: () {}),
          ContextMenuAction(title: 'Copy', icon: IconData, onPress: () {}),
          ContextMenuAction(title: 'Delete', icon: IconData, negativeAction: true, onPress: () {})
        ],
        child: ChildWidget()
      ),
```
## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
