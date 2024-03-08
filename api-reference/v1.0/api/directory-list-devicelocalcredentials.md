---
title: "List deviceLocalCredentialInfo"
description: "Get a list of deviceLocalCredentialInfo and their properties, excluding the credentials property."
author: "sandeo-MSFT"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: apiPageType
---

# List deviceLocalCredentialInfo
Namespace: microsoft.graph

Get a list of the [deviceLocalCredentialInfo](../resources/devicelocalcredentialinfo.md) objects and their properties, excluding the [credentials](../resources/devicelocalcredential.md) property. 

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "directory_list_devicelocalcredentials" } -->
[!INCLUDE [permissions-table](../includes/permissions/directory-list-devicelocalcredentials-permissions.md)]

[!INCLUDE [rbac-device-local-credentials-basic-apis-read](../includes/rbac-for-apis/rbac-device-local-credentials-basic-apis-read.md)]

## HTTP request
To get a list of **deviceLocalCredentialInfo** objects within the tenant:

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /directory/deviceLocalCredentials
```
## Optional query parameters
This method supports the `$select`, `$filter`, `$search`, `$orderby`, `$top`, `$count` and `$skiptoken` OData query parameter to help customize the response.

The response might also contain an `odata.nextLink`, which you can use to page through the result set. For details, see [Paging Microsoft Graph data](/graph/paging).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|User-Agent|The identifier for the calling application. This value contains information about the operating system and the browser used. Required.|
|ocp-client-name|The name of the client application performing the API call. This header is used for debugging purposes. Optional.|
|ocp-client-version|The version of the client application performing the API call. This header is used for debugging purposes. Optional.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [deviceLocalCredentialInfo](../resources/devicelocalcredentialinfo.md) objects, excluding the [credentials](../resources/devicelocalcredential.md) properties, in the response body.

## Examples


### Request
The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "devicelocalcredentialinfo_list"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/directory/deviceLocalCredentials
User-Agent: "Dsreg/10.0 (Windows 10.0.19043.1466)"
ocp-client-name: "My Friendly Client"
ocp-client-version: "1.2"
```

### Response
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
