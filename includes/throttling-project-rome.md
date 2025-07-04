---
author: "ailae"
ms.localizationpriority: high
ms.subservice: project-rome
ms.topic: include
---
<!-- markdownlint-disable MD041 -->

| Request type | Limit per user for all apps |
| ------------ | --------------------------- |
| GET          | 400 requests per 5 minutes and 12,000 requests per one day |
| POST, PUT, PATCH, DELETE | 100 requests per 5 minutes and 8,000 requests per one day |

The preceding limits apply to the following resources:

- [activityHistoryItem](/graph/api/resources/projectrome-historyitem)
- [userActivity](/graph/api/resources/projectrome-activity)