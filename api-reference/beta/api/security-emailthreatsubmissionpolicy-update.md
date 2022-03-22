---
title: "Update emailThreatSubmissionPolicy"
description: "Update the properties of an emailThreatSubmissionPolicy object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update emailThreatSubmissionPolicy
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [emailThreatSubmissionPolicy](../resources/security-emailthreatsubmissionpolicy.md) object.

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
PATCH /emailThreatSubmissionPolicy
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|isReportToMicrosoftEnabled|Boolean|**TODO: Add Description** Required.|
|isReportToCustomizedEmailAddressEnabled|Boolean|**TODO: Add Description** Required.|
|isAskMeEnabledForUsers|Boolean|**TODO: Add Description** Required.|
|isAlwaysReportEnabledForUsers|Boolean|**TODO: Add Description** Required.|
|isNeverReportEnabledForUsers|Boolean|**TODO: Add Description** Required.|
|isCustomizedMessageEnabledForPhishing|Boolean|**TODO: Add Description** Required.|
|isCustomizedMessageEnabled|Boolean|**TODO: Add Description** Required.|
|customizedReportRecipientEmailAddress|String|**TODO: Add Description** Required.|
|isReviewEmailNotificationEnabled|Boolean|**TODO: Add Description** Required.|
|isCustomizedNotificationSenderEnabled|Boolean|**TODO: Add Description** Required.|
|isOrganizationBrandingEnabled|Boolean|**TODO: Add Description** Required.|
|customizedNotificationSenderEmailAddress|String|**TODO: Add Description** Required.|
|isReportFromQuarantineEnabled|Boolean|**TODO: Add Description** Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [emailThreatSubmissionPolicy](../resources/security-emailthreatsubmissionpolicy.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_emailthreatsubmissionpolicy"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/emailThreatSubmissionPolicy
Content-Type: application/json
Content-length: 721

{
  "@odata.type": "#microsoft.graph.security.emailThreatSubmissionPolicy",
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
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
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
```

