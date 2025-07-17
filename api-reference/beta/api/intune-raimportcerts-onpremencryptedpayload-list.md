---
title: "List onPremEncryptedPayloads"
description: "List properties and relationships of the onPremEncryptedPayload objects."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# List onPremEncryptedPayloads

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

List properties and relationships of the [onPremEncryptedPayload](../resources/intune-raimportcerts-onpremencryptedpayload.md) objects.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.Read.All, DeviceManagementConfiguration.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.Read.All, DeviceManagementConfiguration.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /onPremEncryptedPayloads
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [onPremEncryptedPayload](../resources/intune-raimportcerts-onpremencryptedpayload.md) objects in the response body.

## Example

### Request
Here is an example of the request.
``` http
GET https://graph.microsoft.com/beta/onPremEncryptedPayloads
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 882

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.onPremEncryptedPayload",
      "tenantId": "f9882bcd-2bcd-f988-cd2b-88f9cd2b88f9",
      "userId": "a991071c-071c-a991-1c07-91a91c0791a9",
      "deviceId": "6de0af45-af45-6de0-45af-e06d45afe06d",
      "payloadId": "f12f6c03-6c03-f12f-036c-2ff1036c2ff1",
      "deviceKeyThumbprint": "Device Key Thumbprint value",
      "cert1PayloadUUID": "Cert1Payload UUID value",
      "cert2PayloadUUID": "Cert2Payload UUID value",
      "cert3PayloadUUID": "Cert3Payload UUID value",
      "plistTemplate": "Plist Template value",
      "encryptedBlob": "ZW5jcnlwdGVkQmxvYg==",
      "payloadVersion": 14,
      "status": 6,
      "createdTime": "2017-01-01T00:03:18.9597073-08:00",
      "lastModifiedTime": "2017-01-01T00:03:18.5958204-08:00",
      "eTag": "ETag value",
      "isDeleted": true
    }
  ]
}
```