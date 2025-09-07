---
title: "Display Microsoft Graph Toolkit components right-to-left (rtl)"
description: "Describes right-to-left (rtl) support in the Microsoft Graph Toolkit components."
ms.localizationpriority: medium
author: sebastienlevert
ms.date: 11/07/2024
ms.custom: sfi-image-nochange
ms.topic: how-to
---

# Display Microsoft Graph Toolkit components right-to-left (rtl)

> [!CAUTION]
> The Microsoft Graph Toolkit is deprecated. The retirement period begins September 1, 2025, with full retirement planned for August 28, 2026. Developers should migrate to using the Microsoft Graph SDKs or other supported Microsoft Graph tools for building web experiences. For more information, see the [deprecation announcement](https://devblogs.microsoft.com/microsoft365dev/microsoft-graph-toolkit-retirement/).

The Microsoft Graph Toolkit components support bidirectional markup for right-to-left language scripts.

To change the direction of all components on the page, set the `dir` attribute on the document `html` or `body` tag to `rtl`, as shown in the following examples.

```html
<body dir="rtl"></body>
```

or

```html
<html dir="rtl"></html>
```

![right-to-left](../images/rightToLeft.png)
