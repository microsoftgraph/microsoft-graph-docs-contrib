---
title: "analyzedEmail: remediate"
description: "**Remediation means to take prescribed action against a threat. The analyzedEmails/remediate API is to remove potential threats from end-user's mailboxes by triggering email purge actions like move to junk, move to deleted items, soft delete, hard delete or move to inbox etc. These APIs enable scenarios and use cases such as SOAR integration, playbooks, and automations.**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# analyzedEmail: remediate

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Remediation means to take prescribed action against a threat. The analyzedEmails/remediate API is to remove potential threats from end-user's mailboxes by triggering email purge actions like move to junk, move to deleted items, soft delete, hard delete or move to inbox etc. These APIs enable scenarios and use cases such as SOAR integration, playbooks, and automations.

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
|displayName|String| Name of the remediation. This will also be used as reference in the action center |
|description|String| Description of the Remediation |
|severity|microsoft.graph.security.remediationSeverity| Severity of the remediation .The possible values are: `low`, `medium`, `high`, `unknownFutureValue`.|
|action|microsoft.graph.security.remediationAction|Types of Move and Delete actions supported.The possible values are: `moveToJunk`, `moveToInbox`, `hardDelete`, `softDelete`, `moveToDeletedItems`, `unknownFutureValue`.|
|approverUpn|String| This is the person to trcak |
|remediateSendersCopy|Boolean|This will ensures purge sender's copy of the email in case of intra org and out bound emails|
|analyzedEmails|[microsoft.graph.security.analyzedEmail](../resources/security-analyzedemail.md) collection|GET unique key to identify single email ; this can be found from the analyzedemails or analyzedemails/Id|

## Response

If successful, this action returns a `204 No Content` response code.

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
  "displayName": "String",
  "description": "String",
  "severity": "String",
  "action": "String",
  "approverUpn": "String",
  "remediateSendersCopy": "Boolean",
  "analyzedEmails": [
    {
      "@odata.type": "#microsoft.graph.security.analyzedEmail",
      "id": "String (identifier)",
      "loggedDateTime": "String (timestamp)",
      "networkMessageId": "String",
      "internetMessageId": "String",
      "senderDetail": {
        "@odata.type": "microsoft.graph.security.analyzedEmailSenderDetail"
      },
      "recipientEmailAddresses": [
        "String"
      ],
      "distributionList": "String",
      "subject": "String",
      "returnPath": "String",
      "directionality": "String",
      "originalDelivery": {
        "@odata.type": "microsoft.graph.security.analyzedEmailDeliveryDetail"
      },
      "latestDelivery": {
        "@odata.type": "microsoft.graph.security.analyzedEmailDeliveryDetail"
      },
      "attachmentsCount": "Integer",
      "attachments": [
        {
          "@odata.type": "microsoft.graph.security.analyzedEmailAttachment"
        }
      ],
      "urlsCount": "Integer",
      "urls": [
        {
          "@odata.type": "microsoft.graph.security.analyzedEmailUrl"
        }
      ],
      "language": "String",
      "sizeInBytes": "Integer",
      "alertIds": [
        "String"
      ],
      "exchangeTransportRules": [
        {
          "@odata.type": "microsoft.graph.security.analyzedEmailExchangeTransportRuleInfo"
        }
      ],
      "overrideSources": [
        "String"
      ],
      "threatType": "String",
      "detectionMethods": [
        "String"
      ],
      "contexts": [
        "String"
      ],
      "authenticationDetails": {
        "@odata.type": "microsoft.graph.security.analyzedEmailAuthenticationDetail"
      },
      "phishConfidenceLevel": "String",
      "spamConfidenceLevel": "String",
      "bulkComplaintLevel": "String",
      "emailClusterId": "String",
      "policyAction": "String",
      "policy": "String"
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

