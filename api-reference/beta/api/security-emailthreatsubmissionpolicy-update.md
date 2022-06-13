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

These properties are related with the user reported message settings and to know more check out this documentation - https://docs.microsoft.com/en-us/microsoft-365/security/office-365-security/user-submission?view=o365-worldwide
| Property                                 | Type    | Description                                                                                |
|:-----------------------------------------|:--------|:-------------------------------------------------------------------------------------------|
| customizedNotificationSenderEmailAddress | String  | It is used to specify the email address of the sender from which email notifications will be sent to end users to inform them whether an email is spam, phish or clean. The default value is `null`. Optional for creation.                   |
| customizedReportRecipientEmailAddress    | String  | It is used to specify the destination where the reported messages from end users will land whenever they report something as phish, junk or not junk. The default value is `null`. Optional for creation. |
| isAlwaysReportEnabledForUsers            | Boolean | It is used to specify whether end users can report a message as spam, phish or junk directly without a confirmation(popup). The default value is `true`.  Optional for creation.          |
| isAskMeEnabledForUsers                   | Boolean | It is used to specify whether end users can confirm using a popup before reporting messages as spam, phish or not junk. The default value is `true`.  Optional for creation.   |
| isCustomizedMessageEnabled               | Boolean | It is used to specify whether the email notifications sent to end users to inform them whether an email is phish, spam or junk is customized or not. The default value is `false`. Optional for creation.                  |
| isCustomizedMessageEnabledForPhishing    | Boolean | It is used to specify whether the customized email notifications sent to end users is to be sent for phish or not. The default value is `false`. Optional for creation. |
| isCustomizedNotificationSenderEnabled    | Boolean | It is used to specify whether we should use the sender email address which we set earlier using customizedNotificationSenderEmailAddress for sending email notifications to end users or not. The default value is `false`. Optional for creation.               |
| isNeverReportEnabledForUsers             | Boolean | It is used to specify whether end users can simply move the message from one folder to another based on the action of spam, phish or not junk without actually reporting it. The default value is `true`. Optional for creation.         |
| isOrganizationBrandingEnabled            | Boolean | It is used to specify whether the branding logo should be used in the email notifications or not which are being sent to end users. The default value is `false`. Optional for creation.        |
| isReportFromQuarantineEnabled            | Boolean | It is used to specify whether end users can submit from the quarantine page or not. The default value is `true`. Optional for creation.              |
| isReportToCustomizedEmailAddressEnabled  | Boolean | It is used to specify whether emails reported by end users should be send to the custom mailbox which was configured above using customizedReportRecipientEmailAddress.  The default value is `false`. Optional for creation.              |
| isReportToMicrosoftEnabled               | Boolean | It is used to specify whether the email messages reported by end users as junk, phish or not junk be sent to Microsoft or not. The default value is `false`. Requried for creation.  |
| isReviewEmailNotificationEnabled         | Boolean | It is used to specify whether an email notification be sent to the end user who reported the email when it has been reviewed by the Admin. The default value is `false`. Optional for creation.  |



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

