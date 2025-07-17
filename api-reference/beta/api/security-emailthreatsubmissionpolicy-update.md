---
title: "Update emailThreatSubmissionPolicy"
description: "Update the properties of an emailThreatSubmissionPolicy object."
author: "caigen"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
ms.date: 04/04/2024
---

# Update emailThreatSubmissionPolicy
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [emailThreatSubmissionPolicy](../resources/security-emailthreatsubmissionpolicy.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_emailthreatsubmissionpolicy_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-emailthreatsubmissionpolicy-update-permissions.md)]

## HTTP request

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
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

These properties are related to the **user reported message settings**. For details, see [User reported message settings](/microsoft-365/security/office-365-security/user-submission).

| Property                                 | Type    | Description                                                                                |
|:-----------------------------------------|:--------|:-------------------------------------------------------------------------------------------|
| customizedNotificationSenderEmailAddress | String  | Specifies the email address of the sender from which email notifications will be sent to end users to inform them whether an email is spam, phish or clean. The default value is `null`. Optional for creation.                   |
| customizedReportRecipientEmailAddress    | String  | Specifies the destination where the reported messages from end users will land whenever they report something as phish, junk or not junk. The default value is `null`. Optional for creation. |
| isAlwaysReportEnabledForUsers            | Boolean | Indicates whether end users can report a message as spam, phish or junk directly without a confirmation(popup). The default value is `true`.  Optional for creation.          |
| isAskMeEnabledForUsers                   | Boolean | Indicates whether end users can confirm using a popup before reporting messages as spam, phish or not junk. The default value is `true`.  Optional for creation. |
| isCustomizedMessageEnabled               | Boolean | Indicates whether the email notifications sent to end users to inform them if an email is phish, spam or junk is customized or not. The default value is `false`. Optional for creation.                  |
| isCustomizedMessageEnabledForPhishing    | Boolean | If enabled, customized message only shows when email is reported as phishing. The default value is `false`. Optional for creation. |
| isCustomizedNotificationSenderEnabled    | Boolean | Indicates whether to use the sender email address set using customizedNotificationSenderEmailAddress for sending email notifications to end users. The default value is `false`. Optional for creation.               |
| isNeverReportEnabledForUsers             | Boolean | Indicates whether end users can simply move the message from one folder to another based on the action of spam, phish or not junk without actually reporting it. The default value is `true`. Optional for creation.         |
| isOrganizationBrandingEnabled            | Boolean | Indicates whether the branding logo should be used in the email notifications sent to end users. The default value is `false`. Optional for creation.        |
| isReportFromQuarantineEnabled            | Boolean | Indicates whether end users can submit from the quarantine page. The default value is `true`. Optional for creation.              |
| isReportToCustomizedEmailAddressEnabled  | Boolean | Indicates whether emails reported by end users should be send to the custom mailbox configured using customizedReportRecipientEmailAddress.  The default value is `false`. Optional for creation.              |
| isReportToMicrosoftEnabled               | Boolean | If enabled, the email will be sent to Microsoft for analysis. The default value is `false`. Requried for creation.  |
| isReviewEmailNotificationEnabled         | Boolean | Indicates whether an email notification is sent to the end user who reported the email when it has been reviewed by the admin. The default value is `false`. Optional for creation.  |



## Response

If successful, this method returns a `204 No Content` response code. It doesn't return anything in the response body.

## Examples

### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_emailthreatsubmissionpolicy",
  "sampleKeys": ["DefaultReportSubmissionPolicy"]
}
-->
``` http
PATCH https://graph.microsoft.com/beta/security/threatSubmission/emailthreatSubmissionPolicies/DefaultReportSubmissionPolicy
Content-type: application/json

{
  "isReportToMicrosoftEnabled": false
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-emailthreatsubmissionpolicy-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-emailthreatsubmissionpolicy-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-emailthreatsubmissionpolicy-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-emailthreatsubmissionpolicy-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-emailthreatsubmissionpolicy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-emailthreatsubmissionpolicy-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-emailthreatsubmissionpolicy-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-emailthreatsubmissionpolicy-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

