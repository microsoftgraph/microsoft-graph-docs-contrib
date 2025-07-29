---
author: "dkershaw10"
ms.localizationpriority: high
ms.subservice: entra-sign-in
ms.topic: include
---
<!-- markdownlint-disable MD041 -->

| Request type | Limit per tenant |
| ------------ | ---------------- |
| POST on `exportPersonalData` | 1,000 requests per day for any subject and 100 per subject per day |
| Any other request | 10,000 requests per hour |

The preceding limits apply to the following resources:

- [dataPolicyOperation](/graph/api/resources/datapolicyoperation)

> [!NOTE]
> The resources listed earlier don't return a `Retry-After` header on `429 Too Many Requests` responses.