---
title: "List tiIndicators"
description: "Get a list of the tiIndicator objects and their properties."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List tiIndicators
Namespace: microsoft.graph

Get a list of the [tiIndicator](../resources/tiindicator.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/tiIndicators
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [tiIndicator](../resources/tiindicator.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_tiindicator"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/tiIndicators
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.tiIndicator)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.tiIndicator",
      "id": "0b4fa7b7-a7b7-0b4f-b7a7-4f0bb7a74f0b",
      "action": "String",
      "activityGroupNames": [
        "String"
      ],
      "additionalInformation": "String",
      "azureTenantId": "String",
      "confidence": "Integer",
      "description": "String",
      "diamondModel": "String",
      "domainName": "String",
      "emailEncoding": "String",
      "emailLanguage": "String",
      "emailRecipient": "String",
      "emailSenderAddress": "String",
      "emailSenderName": "String",
      "emailSourceDomain": "String",
      "emailSourceIpAddress": "String",
      "emailSubject": "String",
      "emailXMailer": "String",
      "expirationDateTime": "String (timestamp)",
      "externalId": "String",
      "fileCompileDateTime": "String (timestamp)",
      "fileCreatedDateTime": "String (timestamp)",
      "fileHashType": "String",
      "fileHashValue": "String",
      "fileMutexName": "String",
      "fileName": "String",
      "filePacker": "String",
      "filePath": "String",
      "fileSize": "Integer",
      "fileType": "String",
      "ingestedDateTime": "String (timestamp)",
      "isActive": "Boolean",
      "killChain": [
        "String"
      ],
      "knownFalsePositives": "String",
      "lastReportedDateTime": "String (timestamp)",
      "malwareFamilyNames": [
        "String"
      ],
      "networkCidrBlock": "String",
      "networkDestinationAsn": "Integer",
      "networkDestinationCidrBlock": "String",
      "networkDestinationIPv4": "String",
      "networkDestinationIPv6": "String",
      "networkDestinationPort": "Integer",
      "networkIPv4": "String",
      "networkIPv6": "String",
      "networkPort": "Integer",
      "networkProtocol": "Integer",
      "networkSourceAsn": "Integer",
      "networkSourceCidrBlock": "String",
      "networkSourceIPv4": "String",
      "networkSourceIPv6": "String",
      "networkSourcePort": "Integer",
      "passiveOnly": "Boolean",
      "severity": "Integer",
      "tags": [
        "String"
      ],
      "targetProduct": "String",
      "threatType": "String",
      "tlpLevel": "String",
      "url": "String",
      "userAgent": "String"
    }
  ]
}
```

