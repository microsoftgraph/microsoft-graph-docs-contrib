---
title: "tiIndicator: submitTiIndicators"
description: "Used to upload multiple TI indicators in one request instead of multiple requests."
localization_priority: Normal
author: "preetikr"
ms.prod: "security"
---

# tiIndicator: submitTiIndicators

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used to upload multiple TI indicators in one request instead of multiple requests.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | ThreatIndicators.ReadWrite.OwnedBy |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | ThreatIndicators.ReadWrite.OwnedBy |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /security/tiIndicators/submitTiIndicators
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {code} |

## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter    | Type        | Description |
|:-------------|:------------|:------------|
|value|tiIndicator collection| JSON collection of tiIndicators to be created. |

## Response

If successful, this method returns `200, OK` response code and [tiIndicator](../resources/tiindicator.md) collection object in the response body.

## Examples

The following is an example of how to call this API.

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "tiindicator_submittiindicators"
}-->

```http
POST https://graph.microsoft.com/beta/security/tiIndicators/submitTiIndicators
Content-type: application/json

{
  "value": [
    {
      "action": "action-value",
      "activityGroupNames": [
        "activityGroupNames-value"
      ],
      "additionalInformation": "additionalInformation-value",
      "azureTenantId": "azureTenantId-value",
      "confidence": 99,
      "description": "description-value",
      "diamondModel": "diamondModel-value",
      "domainName": "domainName-value",
      "emailEncoding": "emailEncoding-value",
      "emailLanguage": "emailLanguage-value",
      "emailRecipient": "emailRecipient-value",
      "emailSenderAddress": "emailSenderAddress-value",
      "emailSenderName": "emailSenderName-value",
      "emailSourceDomain": "emailSourceDomain-value",
      "emailSourceIpAddress": "emailSourceIpAddress-value",
      "emailSubject": "emailSubject-value",
      "emailXMailer": "emailXMailer-value",
      "expirationDateTime": "datetime-value",
      "externalId": "externalId-value",
      "fileCompileDateTime": "datetime-value",
      "fileCreatedDateTime": "datetime-value",
      "fileHashType": "fileHashType-value",
      "fileHashValue": "fileHashValue-value",
      "fileMutexName": "fileMutexName-value",
      "fileName": "fileName-value",
      "filePacker": "filePacker-value",
      "filePath": "filePath-value",
      "fileSize": 99,
      "fileType": "fileType-value",
      "id": "id-value",
      "ingestedDateTime": "datetime-value",
      "isActive": true,
      "killChain": [
        "killChain-value"
      ],
      "knownFalsePositives": "knownFalsePositives-value",
      "lastReportedDateTime": "datetime-value",
      "malwareFamilyNames": [
        "malwareFamilyNames-value"
      ],
      "networkCidrBlock": "networkCidrBlock-value",
      "networkDestinationAsn": 99,
      "networkDestinationCidrBlock": "networkDestinationCidrBlock-value",
      "networkDestinationIPv4": "networkDestinationIPv4-value",
      "networkDestinationIPv6": "networkDestinationIPv6-value",
      "networkDestinationPort": 99,
      "networkIPv4": "networkIPv4-value",
      "networkIPv6": "networkIPv6-value",
      "networkPort": 99,
      "networkProtocol": 99,
      "networkSourceAsn": 99,
      "networkSourceCidrBlock": "networkSourceCidrBlock-value",
      "networkSourceIPv4": "networkSourceIPv4-value",
      "networkSourceIPv6": "networkSourceIPv6-value",
      "networkSourcePort": 99,
      "passiveOnly": true,
      "severity": 99,
      "tags": [
        "tags-value"
      ],
      "targetProduct": "targetProduct-value",
      "threatType": "threatType-value",
      "tlpLevel": "tlpLevel-value",
      "url": "url-value",
      "userAgent": "userAgent-value"
    }
  ]
}
```

### Response

The following is an example of the response.

> [!NOTE]
> The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.tiIndicator",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
{
  "value": [
    {
      "action": "action-value",
      "activityGroupNames": [
        "activityGroupNames-value"
      ],
      "additionalInformation": "additionalInformation-value",
      "azureTenantId": "azureTenantId-value",
      "confidence": 99,
      "description": "description-value"
    }
  ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "tiIndicator: submitTiIndicators",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->