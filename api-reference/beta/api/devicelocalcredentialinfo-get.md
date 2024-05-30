---
title: "Get deviceLocalCredentialInfo"
description: "Retrieve the properties of a deviceLocalCredential for a specified device object."
author: "sandeo-MSFT"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: apiPageType
---

# Get deviceLocalCredentialInfo
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties of a [deviceLocalCredentialInfo](../resources/devicelocalcredentialinfo.md) for a specified device object. 

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "devicelocalcredentialinfo_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/devicelocalcredentialinfo-get-permissions.md)]

To access the actual passwords on the device, done by including `$select=credentials` as part of the query parameters, the app must be assigned the *DeviceLocalCredential.Read.All* permission and *DeviceLocalCredential.ReadBasic.All* is insufficient.

[!INCLUDE [rbac-device-local-credentials-apis-read](../includes/rbac-for-apis/rbac-device-local-credentials-apis-read.md)]

## HTTP request
To get the device local credential for a specific device object:

> [!CAUTION]
> The `GET /deviceLocalCredentials` endpoint will be deprecated on December 31, 2023. Use the `GET /directory/deviceLocalCredentials` endpoint instead.
>

<!-- {
  "blockType": "ignored"  
}
-->
``` http
GET /directory/deviceLocalCredentials/{deviceId}
GET /deviceLocalCredentials/{deviceId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|User-Agent|The identifier for the calling application. This value contains information about the operating system and the browser used. Required.|
|ocp-client-name|The name of the client application performing the API call. This header is used for debugging purposes. Optional.|
|ocp-client-version|The version of the client application performing the API call. This header is used for debugging purposes. Optional.|

## Optional query parameters
This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [deviceLocalCredential](../resources/devicelocalcredential.md) object in the response body.

## Examples

### Example 1: Get a device's local administrator account credential info

#### Request
The following example shows a request. This example doesn't return the **credentials** property.

<!-- {
  "blockType": "request",
  "name": "devicelocalcredentialinfo_get",
  "id": ["b465e4e8-e4e8-b465-e8e4-65b4e8e465b4"]
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/deviceLocalCredentials/b465e4e8-e4e8-b465-e8e4-65b4e8e465b4
User-Agent: "Dsreg/10.0 (Windows 10.0.19043.1466)"
ocp-client-name: "My Friendly Client"
ocp-client-version: "1.2"
```


#### Response
The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.deviceLocalCredentialInfo"
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.deviceLocalCredentialInfo",
    "id": "b465e4e8-e4e8-b465-e8e4-65b4e8e465b4",
    "deviceName": "LAPS_TEST",
    "lastBackupDateTime": "2023-04-21T13:45:30.0000000Z",
    "refreshDateTime": "2020-05-20T13:45:30.0000000Z"
  }
}
```

### Example 2: Get the device local administrator account credential info with the **credentials** property

#### Request
The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "devicelocalcredentialinfo_get_credentials",
  "id": ["b465e4e8-e4e8-b465-e8e4-65b4e8e465b4"]
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/deviceLocalCredentials/b465e4e8-e4e8-b465-e8e4-65b4e8e465b4?$select=credentials
User-Agent: "Dsreg/10.0 (Windows 10.0.19043.1466)"
ocp-client-name: "My Friendly Client"
ocp-client-version: "1.2"
```

#### Response
The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.deviceLocalCredentialInfo"
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.deviceLocalCredentialInfo",
    "id": "b465e4e8-e4e8-b465-e8e4-65b4e8e465b4",
    "deviceName": "LAPS_TEST",
    "lastBackupDateTime": "2023-04-21T13:45:30.0000000Z",
    "refreshDateTime": "2020-05-20T13:45:30.0000000Z",
    "credentials": [
      {
        "accountName": "ContosoLocalAdminAccount",
        "accountSid": "S-1-5-21-2318549658-1590267884-3984890135-1965",
        "backupDateTime": "2023-04-21T13:45:30.0000000Z",
        "passwordBase64": "UQBRAEAAZAA4AGYAOABnAFkA"
      },
      {
        "accountName": "ContosoLocalAdminAccount",
        "accountSid": "S-1-5-21-2318549658-1590267884-3984890135-1965",
        "backupDateTime": "2023-03-22T13:45:30.0000000Z",
        "passwordBase64": "KgBEADkAawBsAGsAZgAjADQA"
      },
      {
        "accountName": "Administrator",
        "accountSid": "S-1-5-21-2318549658-1590267884-3984890135-500",
        "backupDateTime": "2023-02-23T13:45:30.0000000Z",
        "passwordBase64": "TABwAGQAOQAqACgAKQAzADQA"
      }
    ]
  }
}
```
