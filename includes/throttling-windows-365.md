---
author: "AshleyYangSZ"
ms.localizationpriority: high
ms.subservice: cloud-pc
ms.topic: include
---
<!-- markdownlint-disable MD041 -->

| Request type   | Limit per tenant for all apps or users | Limit per app or user per tenant |
|:---------------|:---------------------------------------|:---------------------------------|
| List Cloud PCs | 180 requests per 60 seconds            | 162 requests per 60 seconds      |
| Get Cloud PC   | 540 requests per 60 seconds            | 486 requests per 60 seconds      |

Starting September 30, 2025, the per-app/per-user per-tenant throttling limit will be reduced to half of the total per-tenant limit to prevent a single user or app from consuming all the quota within a tenant.

| Request type   | Limit per tenant for all apps or users | Limit per app or user per tenant |
|:---------------|:---------------------------------------|:---------------------------------|
| List Cloud PCs | 180 requests per 60 seconds            | 90 requests per 60 seconds       |
| Get Cloud PC   | 540 requests per 60 seconds            | 270 requests per 60 seconds      |
