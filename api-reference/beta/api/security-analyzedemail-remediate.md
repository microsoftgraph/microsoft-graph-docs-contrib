---
title: "analyzedEmail: remediate "
description: "Remove a potential threat from end users' mailboxes."
author: MishraSoumyaMS
ms.localizationpriority: medium
ms.subservice: security
doc_type: apiPageType
---

# analyzedEmail: remediate

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Remove a potential threat from end users' mailboxes.

Remediation means to take prescribed action against a threat. This API can trigger email purge actions like move to junk, move to deleted items, soft delete, hard delete, or move to Inbox. This API enables scenarios and use cases such as SOAR integration, playbooks, and automations. For more information read [email remediation, trigger action and track actions](/microsoft-365/security/office-365-security/remediate-malicious-email-delivered-office-365?view=o365-worldwide&preserve-view=true). If there is false positives admins can take move to inbox action.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_analyzedemail_remediate" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-analyzedemail-remediate-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/collaboration/analyzedEmails/remediate
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|displayName|String| The name of the remediation that is used as a reference in the action center. |
|description|String| The description of the remediation. |
|severity|microsoft.graph.security.remediationSeverity| The severity of the remediation. The possible values are: `low`, `medium`, `high`, `unknownFutureValue`.|
|action|microsoft.graph.security.remediationAction|The types of move and delete actions that are supported. The possible values are: `moveToJunk`, `moveToInbox`, `hardDelete`, `softDelete`, `moveToDeletedItems`, `unknownFutureValue`.|
|approverUpn|String| Tracks who approved the action. |
|remediateSendersCopy|Boolean| For internal or outbound email, indicates whether to remediate the sender's copy of an email. |
|analyzedEmails|[microsoft.graph.security.analyzedEmail](../resources/security-analyzedemail.md) collection|The unique ID of the analyzed email. The ID can be found from the analyzedemails, analyzedemails/Id or runHuntingQuery/reportId.

## Response

If successful, this action returns a `202 Accepted` response code and a `Location` header with a link to the tracking information.

>**Note:** The response to the action can be tracked in https://security.microsoft.com/action-center/history. To learn more, see [Use the Action center](/microsoft-365/security/defender/m365d-action-center?view=o365-worldwide&preserve-view=true).

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "analyzedemailthis.remediate"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/collaboration/analyzedEmails/remediate
Content-Type: application/json

{
    "displayName": "Clean up Phish email",
    "description": "Delete email",
    "severity": "medium",
    "action": "softDelete",
    "remediateSendersCopy": "false",
     "analyzedEmails": [
        {
            "id": "73ca4154-58d8-43d0-a890-08dc18c52e6d-1311265001240363512-1"
        },
        {
            "id": "73ca4154-58d8-43d0-a890-08dc18c52e6d-13805748846361900678-1"
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/analyzedemailthisremediate-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/analyzedemailthisremediate-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/analyzedemailthisremediate-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/analyzedemailthisremediate-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/analyzedemailthisremediate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/analyzedemailthisremediate-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/analyzedemailthisremediate-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/analyzedemailthisremediate-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 202 Accepted
Location: https://security.microsoft.com/action-center/history?filters={"bulkId":["{bulkId}"]}&tid={tid}
Content-Type: application/json;text/plain
Content-Length: 0
```




