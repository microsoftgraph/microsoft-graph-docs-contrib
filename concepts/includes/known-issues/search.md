---
author: ombongifaith
ms.topic: include
ms.date: 02/06/2026
ms.localizationpriority: medium
---

### Creating an externalConnection with a broken adaptive card returns a 503 Service Unavailable response followed by a 409 Conflict error

<!-- {
  "ms.author": "emzho",
  "ms.reviewer": ""
} -->

When you use Microsoft Graph APIs to create an external connection with a broken adaptive card for the result layout, the first call fails with a `503 Service Unavailable` error. Then the second call fails with `409 Conflict` error that indicates that a connection with the same name already exists.

Although the first request failed with a 503 response, the connection was still created. However, the adaptive card template was not registered because it is broken.
