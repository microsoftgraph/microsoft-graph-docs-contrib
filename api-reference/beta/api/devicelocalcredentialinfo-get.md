---
title: "Get deviceLocalCredentialInfo"
description: "Retrieve the properties of a deviceLocalCredential for a specified device object."
author: "sandeo-MSFT"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# Get deviceLocalCredentialInfo
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties of a [deviceLocalCredential](../resources/devicelocalcredential.md) for a specified device object. 

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceLocalCredential.Read.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceLocalCredential.Read.All|

[!INCLUDE [rbac-device-local-credentials-apis-read](../includes/rbac-for-apis/rbac-device-local-credentials-apis-read.md)]

## HTTP request
To get the device local credential for a specific device object:
<!-- {
  "blockType": "ignored"  
}
-->
``` http
GET /deviceLocalCredentials/{deviceId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|User-Agent|The identifier for the calling application. This value contains information about the operating system and the browser used. Required.|
|ocp-client-name|The name of the client application performing the API call. This header is used for debugging purposes. Optional.|
|ocp-client-version|The version of the client application performing the API call. This header is used for debugging purposes. Optional.|

## Optional query parameters
This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [deviceLocalCredential](../resources/devicelocalcredential.md) object in the response body.

## Examples

### Example 1: Get a device's local adminstrator account credential info

#### Request
The following is an example of the request. This example does not return the **credentials** property.

<!-- {
  "blockType": "request",
  "id": ["b465e4e8-e4e8-b465-e8e4-65b4e8e465b4"]
}
-->
``` http
GET https://graph.microsoft.com/beta/deviceLocalCredentials/b465e4e8-e4e8-b465-e8e4-65b4e8e465b4
User-Agent: "Dsreg/10.0 (Windows 10.0.19043.1466)"
ocp-client-name: "My Friendly Client"
ocp-client-version: "1.2"
```


#### Response
The following is an example of the response.

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

### Example 2: Get the device local adminstrator account credential info with the **credentials** property

#### Request
The following is an example of the request.

<!-- {
  "blockType": "request",
  "id": ["b465e4e8-e4e8-b465-e8e4-65b4e8e465b4"]
}
-->
``` http
GET https://graph.microsoft.com/beta/deviceLocalCredentials/b465e4e8-e4e8-b465-e8e4-65b4e8e465b4?$select=credentials
User-Agent: "Dsreg/10.0 (Windows 10.0.19043.1466)"
ocp-client-name: "My Friendly Client"
ocp-client-version: "1.2"
```

#### Response
The following is an example of the response.

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
