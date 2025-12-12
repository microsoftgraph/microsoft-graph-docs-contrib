---
title: "Get analyzedEmail"
description: "Read the properties and relationships of an analyzedEmail object."
author: "malvika-balaraj"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
ms.date: 05/03/2024
---

# Get analyzedEmail

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [analyzedEmail](../resources/security-analyzedemail.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_analyzedemail_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-analyzedemail-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
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

### Example 1: Get an analyzedEmail

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_analyzedemail"
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/security/collaboration/analyzedEmails/{analyzedEmailId}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-analyzedemail-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-analyzedemail-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-analyzedemail-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-analyzedemail-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-analyzedemail-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-analyzedemail-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-analyzedemail-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.analyzedEmail",
  "name" : "get_analyzedemail"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.security.analyzedEmail",
    "id": "String",
    "loggedDateTime": "Datetime",
    "networkMessageId": "String",
    "internetMessageId": "String",
    "senderDetail": {
      "@odata.type": "microsoft.graph.security.analyzedEmailSenderDetail"
    },
    "recipientEmailAddress": "String",
    "distributionList": "String",
    "subject": "String",
    "returnPath": "String",
    "directionality": "microsoft.graph.security.antispamDirectionality",
    "originalDelivery": {
      "@odata.type": "microsoft.graph.security.analyzedEmailDeliveryDetail"
    },
    "latestDelivery": {
      "@odata.type": "microsoft.graph.security.analyzedEmailDeliveryDetail"
    },
    "attachments": [
      {
        "@odata.type": "microsoft.graph.security.analyzedEmailAttachment"
      }
    ],
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
    "threatTypes": [
      "microsoft.graph.security.threatType"
    ],
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
    "policy": "String",
    "timelineEvents": [
      {
        "@odata.type": "microsoft.graph.security.timelineEvent"
      }
    ],
    "threatDetectionDetails": [
      {
        "@odata.type": "microsoft.graph.security.threatDetectionDetail"
      }
    ],
    "primaryOverrideSource": "String",
    "inboundConnectorFormattedName": "String",
    "policyType": "String",
    "clientType": "String",
    "dlpRules": [
      {
        "@odata.type": "microsoft.graph.security.analyzedEmailDlpRuleInfo"
      }
    ],
    "forwardingDetail": "String",
    "recipientDetail": {
      "@odata.type": "microsoft.graph.security.analyzedEmailRecipientDetail"
    }
  }
}
```

### Example 2: Get the URLs from an analyzedEmail

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_analyzedemail_urls"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/security/collaboration/analyzedEmails/{analyzedEmailId}/Urls
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-analyzedemail-urls-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.analyzedEmailUrl",
  "name" : "get_analyzedemail_urls"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.analyzedEmailUrl",
      "url": "String",
      "threatType": "String",
      "detectionMethod": "String",
      "tenantAllowBlockListDetailInfo": "String",
      "detonationDetails": {
        "@odata.type": "microsoft.graph.security.detonationDetails"
      }
    }
  ]
}
```

### Example 3: Get the attachments of an analyzedEmail

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_analyzedemail_attachments"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/security/collaboration/analyzedEmails/{analyzedEmailId}/attachments
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-analyzedemail-attachments-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

---
### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.analyzedEmailAttachment",
  "name" : "get_analyzedemail_attachments"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.analyzedEmailAttachment",
      "fileName": "String",
      "fileType": "String",
      "fileSize": "Integer",
      "fileExtension": "String",
      "threatType": "String",
      "malwareFamily": "String",
      "tenantAllowBlockListDetailInfo": "String",
      "sha256": "String",
      "detonationDetails": {
        "@odata.type": "microsoft.graph.security.detonationDetails"
      }
    }
  ]
}
```
