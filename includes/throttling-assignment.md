---
author: "cristobal-buenrostro"
ms.localizationpriority: high
ms.subservice: education
ms.topic: include
---
<!-- markdownlint-disable MD041 -->

| Request type                 | Limit per app per tenant     | Limit per tenant for all apps |
|---------------------------|------------------------------|----------------------------|
| Any         | 500 requests per 10 seconds   | 1,000 requests per 10 seconds
|Any          | 15,000 requests per 3,600 seconds|30,000 requests per 3,600 seconds|
| GET me/Assignment  | 50 requests per 10 seconds | 150 requests per 10 seconds |


The preceding limits apply to the following resources:

- [educationAssignment](/graph/api/resources/educationassignment)
- [educationSubmission](/graph/api/resources/educationsubmission)
- [trending](/graph/api/resources/insights-trending)
- [educationResource](/graph/api/resources/educationresource)