---
title: "List deviceLocalCredentials"
description: "Get a list of deviceLocalCredentials (excluding passwords) and their properties."
author: "sandeo-MSFT"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# List recoveryKeys
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [deviceLocalCredentials](../resources/devicelocalcredentialinfo.md) objects and their properties excluding local admin passwords. 

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceLocalCredential.ReadBasic.All, DeviceLocalCredential.Read.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceLocalCredential.ReadBasic.All, DeviceLocalCredential.Read.All|

For delegated permissions to allow apps to get [**deviceCredentialInfo**](../resources/devicelocalcredentialinfo.md) resources excluding [**deviceCredential**](../resources/devicelocalcredential.md) resources, the signed-in user must be in one of the following directory roles:

* Global administrator
* Cloud device administrator
* Helpdesk administrator
* Intune service administrator
* Security administrator
* Security reader
* Global reader

## HTTP request
To get a list of deviceLocalCredentials within the tenant:

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /directory/deviceLocalCredentials
```

The response might also contain an `odata.nextLink`, which you can use to page through the result set. For details, see [Paging Microsoft Graph data](/graph/paging).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|User-Agent|The identifier for the calling application. This value contains information about the operating system and the browser used. Required.|
|ocp-client-name|The name of the client application performing the API call. This header is used for debugging purposes. Optional.|
|ocp-client-version|The version of the client application performing the API call. This header is used for debugging purposes. Optional.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [deviceLocalCredentialInfo](../resources/devicelocalcredentialinfo.md) objects excluding [**deviceCredential**](../resources/devicelocalcredential.md) objects in the response body.

## Examples

### Example 1: Retrieve a list of device local credentials in the tenant

#### Request
The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "get_deviceLocalCredentials"
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/deviceLocalCredentials
User-Agent: "Dsreg/10.0 (Windows 10.0.19043.1466)"
ocp-client-name: "My Friendly Client"
ocp-client-version: "1.2"
```

#### Response
The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.deviceLocalCredentialInfo)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.deviceLocalCredentialInfo",
      "id": "String (identifier)",
      "deviceName": "TString"
      "lastBackupDateDateTime": "DateTimeOffset",
      "refreshDateDateTime": "DateTimeOffset"
    },
    {
      "@odata.type": "#microsoft.graph.deviceLocalCredentialInfo",
      "id": "String (identifier)",
      "deviceName": "TString"
      "lastBackupDateDateTime": "DateTimeOffset",
      "refreshDateDateTime": "DateTimeOffset"
    }
  ]
}
```
