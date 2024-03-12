---
title: "Get analyzedEmail"
description: "Read the properties and relationships of an analyzedEmail object."
author: "malvika-balaraj"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Get analyzedEmail

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [analyzedEmail](../resources/security-analyzedemail.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_analyzedemail_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-analyzedemail-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/collaboration/analyzedEmails/{analyzedEmailId}
```


## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.security.analyzedEmail](../resources/security-analyzedemail.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_analyzedemail"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/collaboration/analyzedEmails/{analyzedEmailId}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.analyzedEmail"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.security.analyzedEmail",
    "id": "3570a93a-82b1-ffb9-8c26-a9a2ca002a17",
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
}
```

