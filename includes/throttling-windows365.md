---
author: "AshleyYangSZ"
ms.localizationpriority: high
ms.subservice: cloud-pc
ms.topic: include
---
<!-- markdownlint-disable MD041 -->

#### Windows 365 service limits

| Request type | Limit per tenant for all apps or users | Limit per app or user per tenant |
| ------------ | ----------------------------- | ------------------------ |
| List CloudPCs | 180 requests per 60 seconds | 162 requests per 60 seconds |
| Get CloudPC   | 540 requests per 60 seconds | 486 requests per 60 seconds |

From 2025 September 30th, the per app/user per tenant throttling limit would become the half of limit of per tenant for all apps/users to avoid one user/app exhausted all quota under a tenant. 
Please be notified of this change and take action to avoid breaking.
| Request type | Limit per tenant for all apps or users | Limit per app or user per tenant |
| ------------ | ----------------------------- | ------------------------ |
| List CloudPCs | 180 requests per 60 seconds | 90 requests per 20 seconds |
| Get CloudPC   | 540 requests per 60 seconds | 270 requests per 20 seconds |