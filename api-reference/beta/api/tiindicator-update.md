---
title: "Update tiIndicator"
description: "Update the properties of tiIndicator object."
localization_priority: Normal
author: "preetikr"
ms.prod: "security"
---

# Update tiIndicator

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of tiIndicator object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | ThreatIndicators.ReadWrite.OwnedBy |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | ThreatIndicators.ReadWrite.OwnedBy |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PATCH /security/tiIndicators/{id}
```

## Request headers

| Name       | Description|
|:-----------|:-----------|
| Authorization | Bearer {code} |

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|action|string| Possible values are: `unknown`, `allow`, `block`, `alert`.|
|activityGroupNames|String collection||
|additionalInformation|String||
|azureTenantId|String||
|confidence|Int32||
|description|String||
|diamondModel|string| Possible values are: `unknown`, `adversary`, `capability`, `infrastructure`, `victim`.|
|domainName|String||
|emailEncoding|String||
|emailLanguage|String||
|emailRecipient|String||
|emailSenderAddress|String||
|emailSenderName|String||
|emailSourceDomain|String||
|emailSourceIpAddress|String||
|emailSubject|String||
|emailXMailer|String||
|expirationDateTime|DateTimeOffset||
|externalId|String||
|fileCompileDateTime|DateTimeOffset||
|fileCreatedDateTime|DateTimeOffset||
|fileHashType|string| Possible values are: `unknown`, `sha1`, `sha256`, `md5`, `authenticodeHash256`, `lsHash`, `ctph`.|
|fileHashValue|String||
|fileMutexName|String||
|fileName|String||
|filePacker|String||
|filePath|String||
|fileSize|Int64||
|fileType|String||
|ingestedDateTime|DateTimeOffset||
|isActive|Boolean||
|killChain|String collection||
|knownFalsePositives|String||
|lastReportedDateTime|DateTimeOffset||
|malwareFamilyNames|String collection||
|networkCidrBlock|String||
|networkDestinationAsn|Int32||
|networkDestinationCidrBlock|String||
|networkDestinationIPv4|String||
|networkDestinationIPv6|String||
|networkDestinationPort|Int32||
|networkIPv4|String||
|networkIPv6|String||
|networkPort|Int32||
|networkProtocol|Int32||
|networkSourceAsn|Int32||
|networkSourceCidrBlock|String||
|networkSourceIPv4|String||
|networkSourceIPv6|String||
|networkSourcePort|Int32||
|passiveOnly|Boolean||
|severity|Int32||
|tags|String collection||
|targetProduct|String||
|threatType|String||
|tlpLevel|string| Possible values are: `unknown`, `white`, `green`, `amber`, `red`.|
|url|String||
|userAgent|String||

## Response

If successful, this method returns a `200 OK` response code and an updated [tiIndicator](../resources/tiIndicator.md) object in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_tiIndicator"
}-->

```http
PATCH https://graph.microsoft.com/beta/security/tiIndicators/{id}
Content-type: application/json

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
```

### Response

The following is an example of the response.

> [!NOTE]
> The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.tiIndicator"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

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
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update tiIndicator",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->