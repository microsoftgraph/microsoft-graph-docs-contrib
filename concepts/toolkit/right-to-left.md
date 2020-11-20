---
title: "Right-To-Left Support with the Microsoft Graph Toolkit"
description: "Use LocalizationHelper to change direction"
localization_priority: Normal
author: vogtn
---

## Right to Left

The Microsoft Graph Toolkit components support bi-directional markup for right-to-left language scripts.

Implementation relies on the usage of the `dir` attribute which must be implemented in the document structure [w3 spec standard](https://www.w3.org/International/questions/qa-bidi-css-markup#detail), Specific the `body` or `html` tag:

```html
<body dir="rtl"></body>
```

or

```html
<html dir="rtl"></html>
```

![right-to-left](./images/rightToLeft.png)
