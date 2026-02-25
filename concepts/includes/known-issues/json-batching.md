---
author: ombongifaith
ms.topic: include
ms.date: 02/06/2026
ms.localizationpriority: medium
---

### Request dependencies are limited

<!-- {
  "ms.author": "sriramd",
  "ms.reviewer": ""
} -->

Individual requests can depend on other individual requests. Currently, requests can only depend on a single other request, and must follow one of these three patterns:

- **Parallel** - no individual request states a dependency in the **dependsOn** property.
- **Serial** - all individual requests depend on the previous individual request.
- **Same** - all individual requests that state a dependency in the **dependsOn** property, state the same dependency. Note: Requests made using this pattern will run sequentially.

As JSON batching matures, these limitations will be removed.
