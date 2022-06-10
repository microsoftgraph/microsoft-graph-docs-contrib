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

You may also specify the following properties when creating an **emailThreatSubmissionPolicy**.

| Property                                 | Type    | Description                                                                                |
|:-----------------------------------------|:--------|:-------------------------------------------------------------------------------------------|
| customizedNotificationSenderEmailAddress | String  | Customized notification sender address for review notification message.                    |
| customizedReportRecipientEmailAddress    | String  | It is used to specify the destination where the reported messages from end users will land whenever they report something as phish, junk or not junk.   |
| isAlwaysReportEnabledForUsers            | Boolean | It is used to specify whether end users can report a message as spam, phish or junk directly without a confirmation(popup). Its default value is true |
| isAskMeEnabledForUsers                   | Boolean | It is used to specify whether end users can confirm using a popup before reporting messages as spam, phish or not junk. Its default value is true |
| isCustomizedMessageEnabled               | Boolean |It is used to specify whether the email notifications sent to end users to inform them whether an email is phish, spam or junk is customized or not? |
| isCustomizedMessageEnabledForPhishing    | Boolean | It is used to specify whether the customized email notifications sent to end users is to be sent for phish or not? |
| isCustomizedNotificationSenderEnabled    | Boolean | It is used to specify whether we should use the sender email address which we will set below using customizedNotificationSenderEmailAddress for sending email notifications to end users or not? |
| isNeverReportEnabledForUsers             | Boolean | It is used to specify whether end users can simply move the message from one folder to another based on the action of spam, phish or not junk without actually reporting it. Its default value is true |
| isReportFromQuarantineEnabled            | Boolean | It is used to specify whether end users can submit from the quarantine page or not? |
| isReportToCustomizedEmailAddressEnabled  | Boolean | If enabled, the email will be sent to customizedReportRecipientEmailAddress.               |
| isReportToMicrosoftEnabled               | Boolean | If enabled, the email will be sent to Microsoft for analysis.                              |
| isReviewEmailNotificationEnabled         | Boolean | If enabled, system sends email notification to reporter when admin reviews the submission. |
| isOrganizationBrandingEnabled            | Boolean | It is used to specify whether the branding logo should be used in the email notifications or not which are being sent to end users? |




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

