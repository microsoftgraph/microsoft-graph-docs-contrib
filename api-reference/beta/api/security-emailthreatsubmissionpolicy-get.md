---
title: "Get emailThreatSubmissionPolicy"
description: "Read the properties and relationships of an emailThreatSubmissionPolicy object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Get emailThreatSubmissionPolicy
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [emailThreatSubmissionPolicy](../resources/security-emailthreatsubmissionpolicy.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /emailThreatSubmissionPolicy
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [emailThreatSubmissionPolicy](../resources/security-emailthreatsubmissionpolicy.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_emailthreatsubmissionpolicy"
}
-->
``` http
GET https://graph.microsoft.com/beta/emailThreatSubmissionPolicy
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.emailThreatSubmissionPolicy"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.security.emailThreatSubmissionPolicy",
    "id": "3df67ecc-11b4-b5b4-9bae-b0729940b3d1",
    "isReportToMicrosoftEnabled": "Boolean",
    "isReportToCustomizedEmailAddressEnabled": "Boolean",
    "isAskMeEnabledForUsers": "Boolean",
    "isAlwaysReportEnabledForUsers": "Boolean",
    "isNeverReportEnabledForUsers": "Boolean",
    "isCustomizedMessageEnabledForPhishing": "Boolean",
    "isCustomizedMessageEnabled": "Boolean",
    "customizedReportRecipientEmailAddress": "String",
    "isReviewEmailNotificationEnabled": "Boolean",
    "isCustomizedNotificationSenderEnabled": "Boolean",
    "isOrganizationBrandingEnabled": "Boolean",
    "customizedNotificationSenderEmailAddress": "String",
    "isReportFromQuarantineEnabled": "Boolean"
  }
}
```

