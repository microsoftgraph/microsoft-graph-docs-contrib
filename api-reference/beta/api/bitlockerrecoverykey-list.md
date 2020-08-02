---
title: "List bitlockerRecoveryKeys"
description: "Get a list of the bitlockerRecoveryKey objects and their properties."
author: "hafowler"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# List bitlockerRecoveryKeys
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [bitlockerRecoveryKey](../resources/bitlockerrecoverykey.md) objects and their properties. Does not return 'key' property. See [Get bitlockerRecoveryKey](../api/bitlockerrecoverykey-get.md) to retrieve 'key' property.

One of the following roles must be assigned to call this API: <br>
* Global administrator
* Cloud device administrator
* Helpdesk administrator
* Intune service administrator
* Security administrator
* Security reader
* Global reader
* Registered owner of the device that the BitLocker recovery key was originally backed up from

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|BitLocker.ReadBasic.All, BitLocker.Read.All|
|Delegated (personal Microsoft account)|Not supported|
|Application|Not supported|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /bitlocker/recoveryKeys
```

## Optional query parameters
This method supports the following OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

The response may also contain an `odata.nextLink`, which you can use to page through the result set. See [Paging Microsoft Graph data](/graph/paging) for more information.

### OData query parameters
|Parameter|Description|Example|
|:---|:---|:---|
|[$filter](/graph/query-parameters#filter-parameter)|Filters results by device|`/recoveryKeys?$filter=deviceId eq {deviceId}`|

#### Attributes supported by $filter parameter
|Attribute|Supported operators|
|:---|:---|
|deviceId|eq|

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|ocp-client-name|Name of the client application performing the API call. Required.|
|ocp-client-version|Version of the client application performing the API call. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [bitlockerRecoveryKey](../resources/bitlockerrecoverykey.md) objects in the response body.

## Examples

### Example 1: List all BitLocker keys in the tenant

#### Request
<!-- {
  "blockType": "request",
  "name": "get_bitlockerrecoverykey"
}
-->
``` http
GET https://graph.microsoft.com/beta/bitlocker/recoveryKeys
```


#### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.bitlockerRecoveryKey)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.bitlockerRecoveryKey",
      "id": "b465e4e8-e4e8-b465-e8e4-65b4e8e465b4",
      "createdDateTime": "String (timestamp)",
      "volumeType": "String",
      "deviceId": "String"
    },
    {
      "@odata.type": "#microsoft.graph.bitlockerRecoveryKey",
      "id": "6a30ed7b-247b-4d26-86b5-2f405e55ea42",
      "createdDateTime": "String (timestamp)",
      "volumeType": "String",
      "deviceId": "String"
    }
  ]
}
```
### Example 2: List all BitLocker keys for a device

#### Request
<!-- {
  "blockType": "request",
  "name": "get_bitlockerrecoverykey"
}
-->
``` http
GET https://graph.microsoft.com/beta/bitlocker/recoveryKeys?$filter=deviceId eq {deviceId}
```


#### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.bitlockerRecoveryKey)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.bitlockerRecoveryKey",
      "id": "b465e4e8-e4e8-b465-e8e4-65b4e8e465b4",
      "createdDateTime": "String (timestamp)",
      "volumeType": "String",
      "deviceId": "String"
    }
  ]
}
```