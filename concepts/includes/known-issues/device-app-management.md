---
author: ombongifaith
ms.topic: include
ms.date: 02/06/2026
ms.localizationpriority: medium
---

### Accessing and updating deployment audiences is not supported

<!-- {
  "ms.author": "altang",
  "ms.reviewer": ""
} -->

Accessing and updating deployment audiences on deployment resources created via Intune is not currently supported.

- Listing deployment audience members and listing deployment audience exclusions returns `404 Not Found`.
- Updating deployment audience members and exclusions or updating by ID returns `202 Accepted` but the audience is not updated.
