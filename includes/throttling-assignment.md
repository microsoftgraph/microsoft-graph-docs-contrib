---
author: "cristobal-buenrostro"
ms.localizationpriority: high
ms.subservice: education
ms.topic: include
---
<!-- markdownlint-disable MD041 -->

| Request type     | Limit per app per tenant     | Limit per tenant for all apps     |
|------------------|------------------------------|-----------------------------------|
| Any              | 350 requests per 10 seconds  | 700 requests per 10 seconds       |
| Any              | 10,000 requests per 3,600 seconds | 20,000 requests per 3,600 seconds |
| POST /publish    | 25 requests per 10 seconds   | 25 requests per 10 seconds        |

The preceding limits apply to the following resources:

- [educationAssignment](/graph/api/resources/educationassignment)
- [educationSubmission](/graph/api/resources/educationsubmission)
- [trending](/graph/api/resources/insights-trending)
- [educationResource](/graph/api/resources/educationresource)