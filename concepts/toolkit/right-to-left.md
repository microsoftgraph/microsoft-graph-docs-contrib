---
title: "Right-To-Left Support with the Microsoft Graph Toolkit"
description: "Use LocalizationHelper to change direction"
localization_priority: Normal
author: vogtn
---

## Right to Left

The Microsoft Graph Toolkit components support bi-directional markup for right-to-left language scripts.

Each component inherits its direction via an internal property in `MgtBaseComponent` by default is `ltr`.

```ts
  @internalProperty() public direction = 'ltr';
```

this property is then updated by the `LocalizationHelper.ts`on the event that either changes:

```ts
document.body.getAttribute("dir") ||
  document.documentElement.getAttribute("dir");
```

At this time, an Web API MutationObserver is implemented to watch for further changes to the `dir` attribute. The user will be able to dynamically change this value.

## implementation

Implementation relies on the usage of the `dir` attribute which must be implemented in the document structure [w3 spec standard](https://www.w3.org/International/questions/qa-bidi-css-markup#detail), Specific the `body` tag:

```html
<body dir="rtl"></body>
```

![right-to-left](./images/rightToLeft.png)
