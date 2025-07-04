---
author: "hafen-ms"
ms.localizationpriority: high
ms.susbervice: security
ms.topic: include
---
<!-- markdownlint-disable MD041 -->

The following limits apply to any request on `/informationProtection`.

For email, the resource is a unique network message ID/recipient pair. For example, submitting an email with the same message ID sent to the same person multiple times in a 15-minute period triggers the limit per resource limits listed in the following table. However, you can submit up to 150 unique emails every 15 minutes (tenant limit).

| Operation                 | Limit per tenant                                            | Limit per resource (email, URL, file)                |
|---------------------------|-------------------------------------------------------------|------------------------------------------------------|
| POST                      | 150 requests per 15 minutes and 10,000 requests per 24 hours | One request per 15 minutes and 3 requests per 24 hours |

| <!-- fake header--> |
|---|
| <ul><li> [threatAssessmentRequest](/graph/api/resources/threatassessmentrequest)  <li> [threatAssessmentResult](/graph/api/resources/threatassessmentresult) <li> [mailAssessmentRequest](/graph/api/resources/mailassessmentrequest) <li> [emailFileAssessmentRequest](/graph/api/resources/emailfileassessmentrequest) <li> [fileAssessmentRequest](/graph/api/resources/fileassessmentrequest) <li> [urlAssessmentRequest](/graph/api/resources/urlassessmentrequest) </ul> |
