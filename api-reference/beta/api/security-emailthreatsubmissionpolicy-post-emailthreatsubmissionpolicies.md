---
title: "Create emailThreatSubmissionPolicy"
description: "Create a new emailThreatSubmissionPolicy object."
author: "caigen"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Create emailThreatSubmissionPolicy
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [emailThreatSubmissionPolicy](../resources/security-emailthreatsubmissionpolicy.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|ThreatSubmissionPolicies.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported|
|Application|ThreatSubmissionPolicy.ReadWrite.All|

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

| Property                                 | Type    | Description                                                                                |
|:-----------------------------------------|:--------|:-------------------------------------------------------------------------------------------|
| customizedNotificationSenderEmailAddress | String  | Customized notification sender address for review notification message.                    |
| customizedReportRecipientEmailAddress    | String  | When customized address enabled, the message will be sent to this address.                 |
| isAlwaysReportEnabledForUsers            | Boolean | User could use 'Always report the message' option. The default value is true.              |
| isAskMeEnabledForUsers                   | Boolean | User could use 'Ask me before reporting the message' option. The default value is true.    |
| isCustomizedMessageEnabled               | Boolean | If enabled, customized message is enabled.                                                 |
| isCustomizedMessageEnabledForPhishing    | Boolean | If enabled, customized message only shows when email is reported as phishing.              |
| isCustomizedNotificationSenderEnabled    | Boolean | If enabled, notificationSenderAddress is used by review notification email.                |
| isNeverReportEnabledForUsers             | Boolean | User could use 'Never report the message' option. The default value is true.               |
| isReportFromQuarantineEnabled            | Boolean | If enabled, submission could be created from security portal quarantine page.              |
| isReportToCustomizedEmailAddressEnabled  | Boolean | If enabled, the email will be sent to customizedReportRecipientEmailAddress.               |
| isReportToMicrosoftEnabled               | Boolean | If enabled, the email will be sent to Microsoft for analysis.                              |
| isReviewEmailNotificationEnabled         | Boolean | If enabled, system sends email notification to reporter when admin reviews the submission. |
| isOrganizationBrandingEnabled            | Boolean | If enabled, tenant branding logo will be used in review notification message.              |




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
POST https://graph.microsoft.com/beta/security/threatSubmission/emailthreatSubmissionPolicies
Content-type: application/json

{
  "isReportToMicrosoftEnabled": true
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
  "@odata.type": "#microsoft.graph.emailThreatSubmissionPolicy",
  "id": "DefaultReportSubmissionPolicy",
  "isReportToMicrosoftEnabled": true,
  "isReportToCustomizedEmailAddressEnabled": false,
  "isAskMeEnabledForUsers": true,
  "isAlwaysReportEnabledForUsers": true,
  "isNeverReportEnabledForUsers": true,
  "isCustomizedMessageEnabledForPhishing": false,
  "isCustomizedMessageEnabled": false,
  "customizedReportRecipientEmailAddress": null,
  "isReviewEmailNotificationEnabled": false,
  "isCustomNotificationSenderEnabled": false,
  "isOrganizationBrandingEnabled": false,
  "customizedNotificationSenderEmailAddress": null,
  "isReportFromQuarantineEnabled": false
}
```

