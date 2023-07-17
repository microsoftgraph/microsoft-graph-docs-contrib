---
title: "List deviceLocalCredentialInfo"
description: "Get a list of deviceLocalCredentialInfo and their properties excluding the credentials."
author: "sandeo-MSFT"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# List deviceLocalCredentialInfo
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [deviceLocalCredentialInfo](../resources/devicelocalcredentialinfo.md) objects and their properties excluding the [credentials](../resources/devicelocalcredential.md). 

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceLocalCredential.ReadBasic.All, DeviceLocalCredential.Read.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceLocalCredential.ReadBasic.All, DeviceLocalCredential.Read.All|

[!INCLUDE [rbac-device-local-credentials-basic-apis-read](../includes/rbac-for-apis/rbac-device-local-credentials-basic-apis-read.md)]

## HTTP request
To get a list of deviceLocalCredentialInfo within the tenant:

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceLocalCredentials
```
## Optional query parameters
This method supports the `$select`, `$filter`, `$search`, `$orderby`, `$top`, `$count` and `$skiptoken` OData query parameter to help customize the response.

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

If successful, this method returns a `200 OK` response code and a collection of [deviceLocalCredentialInfo](../resources/devicelocalcredentialinfo.md) objects excluding the [credentials](../resources/devicelocalcredential.md) objects in the response body.

## Examples

### Example 1: Retrieve a list of device local credentials in the tenant

#### Request
The following is an example of the request.

<!-- {
  "blockType": "request"
}
-->
``` http
GET https://graph.microsoft.com/beta/deviceLocalCredentials
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
      "id": "b465e4e8-e4e8-b465-e8e4-65b4e8e465b4",
      "deviceName": "LAPS_TEST",
      "lastBackupDateTime": "2023-04-21T13:45:30.0000000Z",
      "refreshDateTime": "2020-05-20T13:45:30.0000000Z"
    },
    {
      "id": "c9a5d9e6-d2bd-4ff6-8a47-38b98800600c",
      "deviceName": "LAPS_TEST2",
      "lastBackupDateTime": "2023-04-21T13:45:30.0000000Z",
      "refreshDateTime": "2020-05-20T13:45:30.0000000Z"
    }
  ]
}
```
