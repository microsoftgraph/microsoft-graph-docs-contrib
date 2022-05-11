---
title: "Create emailThreatSubmissionPolicy"
description: "Create a new emailThreatSubmissionPolicy object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create emailThreatSubmissionPolicy
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new emailThreatSubmissionPolicy object.

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
POST /security/threatSubmission/emailThreatSubmissionPolicies
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [emailThreatSubmissionPolicy](../resources/security-emailthreatsubmissionpolicy.md) object.

You can specify the following properties when creating an **emailThreatSubmissionPolicy**.

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

If successful, this method returns a `201 Created` response code and an [emailThreatSubmissionPolicy](../resources/security-emailthreatsubmissionpolicy.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_emailthreatsubmissionpolicy_from_emailthreatsubmissionpolicies"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/threatSubmission/emailThreatSubmissionPolicies
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
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.emailThreatSubmissionPolicy"
}
-->
``` http
HTTP/1.1 201 Created
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

