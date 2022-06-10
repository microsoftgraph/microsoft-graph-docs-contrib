---
title: "Update emailThreatSubmissionPolicy"
description: "Update the properties of an emailThreatSubmissionPolicy object."
author: "caigen"
ms.localizationpriority: medium
ms.prod: "security"
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
|Delegated (work or school account)|ThreatSubmissionPolicies.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported|
|Application|ThreatSubmissionPolicy.ReadWrite.All|

## HTTP request
Only HTTP `PATCH` request is supported as of today. HTTP `PUT` is not supported.

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH security/threatSubmission/emailThreatSubmissionPolicies/{emailThreatSubmissionPoliciesId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


| Property                                 | Type    | Description                                                                                |
|:-----------------------------------------|:--------|:-------------------------------------------------------------------------------------------|
| customizedNotificationSenderEmailAddress | String  | Customized notification sender address for review notification message.                    |
| customizedReportRecipientEmailAddress    | String  | When customized address enabled, the message will be sent to this address.                 |
| isAlwaysReportEnabledForUsers            | Boolean | It is used to specify whether end users can report a message as spam, phish or junk directly without a confirmation(popup). Its default value is true|
| isAskMeEnabledForUsers                   | Boolean | User could use 'Ask me before reporting the message' option. The default value is true.    |
| isCustomizedMessageEnabled               | Boolean | It is used to specify whether the email notifications sent to end users to inform them whether an email is phish, spam or junk is customized or not? |
| isCustomizedMessageEnabledForPhishing    | Boolean | If enabled, customized message only shows when email is reported as phishing.              |
| isCustomizedNotificationSenderEnabled    | Boolean | It is used to specify whether we should use the sender email address which we will set below using customizedNotificationSenderEmailAddress for sending email notifications to end users or not?|
| isNeverReportEnabledForUsers             | Boolean | User could use 'Never report the message' option. The default value is true.               |
| isOrganizationBrandingEnabled            | Boolean | It is used to specify whether the branding logo should be used in the email notifications or not which are being sent to end users? |
| isReportFromQuarantineEnabled            | Boolean | It is used to specify whether end users can submit from the quarantine page or not?|
| isReportToCustomizedEmailAddressEnabled  | Boolean | If enabled, the email will be sent to customizedReportRecipientEmailAddress.               |
| isReportToMicrosoftEnabled               | Boolean | If enabled, the email will be sent to Microsoft for analysis.                              |
| isReviewEmailNotificationEnabled         | Boolean | If enabled, system sends email notification to reporter when admin reviews the submission. |



## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_emailthreatsubmissionpolicy"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/security/threatSubmission/emailthreatSubmissionPolicies/DefaultReportSubmissionPolicy
Content-type: application/json

{
  "isReportToMicrosoftEnabled": false
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

