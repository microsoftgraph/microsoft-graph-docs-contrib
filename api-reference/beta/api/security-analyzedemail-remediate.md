---
title: Trigger move and delete remediation Action 
description: Trigger move and delete action against a threat.
author: MishraSoumyaMS
ms.localizationpriority: medium
ms.prod: security
doc_type: apiPageType
---

# Trigger move and delete email remediation Action 

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Remediation means to take prescribed action against a threat. The remediate API is to remove potential threats from end-user's mailboxes.  The API can trigger email purge actions like move to junk, move to deleted items, soft delete, hard delete or move to inbox. These APIs enable scenarios and use cases such as SOAR integration, playbooks, and automations. For more information read [email remediation, trigger action and track actions](microsoft-365/security/office-365-security/remediate-malicious-email-delivered-office-365?view=o365-worldwide). 


## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-analyzedemail-remediate-permissions"
}
-->
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
|Authorization|Bearer {token}. Required.|
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
|remediateSendersCopy|Boolean| For intra-org and outbound email, triggers an action for the sender's copy. |
|analyzedEmails|[microsoft.graph.security.analyzedEmail](../resources/security-analyzedemail.md) collection|GET unique key to identify a single email. The ID can be found from the analyzedemails, analyzedemails/Id or runHuntingQuery/reportId.

## Response

If successful, this action returns a `204 No Content` response code and the action status can be tracked through the location header with bulkId. 

>**Note:** The response of the action can be tracked in https://security.microsoft.com/action-center/history. Learn more about [Action center](microsoft-365/security/defender/m365d-action-center?view=o365-worldwide)

## Examples

### Request

The following example shows a request.
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


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability. 
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
>**Note:** Track the location header
Example:
Get the tracking url at response header - 'Location'

