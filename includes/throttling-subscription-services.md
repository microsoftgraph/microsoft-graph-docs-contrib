---
author: "keylimesoda"
ms.localizationpriority: high
ms.subservice: change-notifications
ms.topic: include
---
<!-- markdownlint-disable MD041 -->

| Request type | Limit per app for all tenants | Limit per app per tenant |
| ------------- | ----------------------------- | ----------------------------- |
| POST, PUT, DELETE, PATCH | 2000 requests per 20 seconds | 500 requests per 20 seconds |
| POST /reauthorize subscription by ID  |  4000 requests per 20 seconds  |  1000 requests per 20 seconds |
| GET Subscription by Id | 2000 requests per 20 seconds | 500 requests per 20 seconds |
| GET Subscription List | 40 requests per 20 seconds | 25 requests per 20 seconds |


The preceding limits apply to the [subscription](/graph/api/resources/subscription) resource.  
