---
author: "ppolkadots"
ms.localizationpriority: high
ms.subservice: entra-users
ms.topic: include
---
<!-- markdownlint-disable MD041 -->

The following limits apply to any request on `/reports`.

| Operation                 | Limit per app per tenant     | Limit per tenant for all apps |
|---------------------------|------------------------------|----------------------------|
| Any request (CSV)         | 14 requests per 10 minutes   | 40 requests per 10 minutes |
| Any request (JSON, beta)  | 100 requests per 10 minutes  | n/a                        |

The preceding limits apply individually to each report API. For example, a request to the Microsoft Teams user activity report API and a request to the Outlook user activity report API within 10 minutes count as one request out of 14 for each API, not two requests out of 14 for both.

The preceding limits apply to all [usage reports](/graph/api/resources/report) resources.