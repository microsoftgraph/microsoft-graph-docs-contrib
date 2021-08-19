---
author: "davidmu1"
localization_priority: Priority
ms.prod: "msgraph"
ms.topic: include
---
<!-- markdownlint-disable MD041 -->
<!-- this file is auto-generated don't edit it manually! -->

| Limit type | Limit per app per user (delegated context) | Limit per app (app-only context) |
| ------------ | ------- | ------- |
| Requests rate | 120 requests per 1 minute and 400 per 1 hour | 240 requests per 1 minute and 800 per 1 hour |
| Concurrent requests | 5 concurrent requests | 20 concurrent requests |

The preceding limits apply to the following resources:

|                                                            |                                                               |
|------------------------------------------------------------|---------------------------------------------------------------|
| <li> [onenote](/graph/api/resources/onenote)               | <li> [onenotePage](/graph/api/resources/onenotepage)          |
| <li> [notebook](/graph/api/resources/notebook)             | <li> [onenoteResource](/graph/api/resources/onenoteresource)  |
| <li> [sectionGroup](/graph/api/resources/sectiongroup)     | <li> [onenoteOperation](/graph/api/resources/onenoteresource) |
| <li> [onenoteSection](/graph/api/resources/onenotesection) |                                                               |

You can find additional information about best practices in [OneNote API throttling and how to avoid it](https://developer.microsoft.com/en-us/office/blogs/onenote-api-throttling-and-how-to-avoid-it/).  

**Note:** The resources listed above do not return a `Retry-After` header on `429 Too Many Requests` responses.

