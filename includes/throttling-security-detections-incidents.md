---
author: "preetikr"
ms.localizationpriority: high
ms.subservice: security
ms.topic: include
---
<!-- markdownlint-disable MD041 -->

The following limits apply to any request on `/security`.

| Operation                  | Limit per app per tenant     |
|----------------------------|------------------------------|
| Any operation on `alert`, `securityActions`,  `secureScore` | 150 requests per minute      |
| Any operation on `tiIndicator` | 1,000 requests per minute |
| Any operation on `secureScore` or `secureScorecontrolProfile` | 10,000 API requests in a 10-minute period |
| Any operation on `secureScore` or `secureScorecontrolProfile` | Four concurrent requests |