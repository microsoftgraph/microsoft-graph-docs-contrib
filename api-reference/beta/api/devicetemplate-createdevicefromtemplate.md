---
title: "deviceTemplate: createDeviceFromTemplate"
description: "Create new device from a device template."
author: "atastrophic"
ms.date: 11/24/2024
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: apiPageType
---

# deviceTemplate: createDeviceFromTemplate

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new device based on a `deviceTemplate`. This action creates a new `graph.device` entity.

Returns an object of type [device](../resources/device.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "devicetemplate-createdevicefromtemplate-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/devicetemplate-createdevicefromtemplate-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /directory/templates/deviceTemplates/{deviceTemplateId}/createDeviceFromTemplate
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|externalDeviceId|String|UUID of the device by IoT registry. Must be unique within a tenant.|
|operatingSystemVersion|String|Operating System of the device specified |
|externalSourceName|String|String identifying the SourceName of the device |
|keyCredential|[keyCredential](../resources/keycredential.md)| String representing the key credential when using self-signed certs|
|accountEnabled|Boolean|`true` if the account is enabled; otherwise, `false`. Default is `true`. A disabled device cannot authenticate with Entra ID.|
|alternativeNames|String collection|A colleciton of ARM Resource IDs associated with device if any.|

## Response

- If successful, this action returns a `200 OK` response code and a [device](../resources/device.md) in the response body.
- Reference [MSGraph error responses and resource types](/graph/errors) for more information regarding general error codes and error conditions.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "devicetemplatethis.createdevicefromtemplate"
}
-->
``` http
POST https://graph.microsoft.com/beta/templates/deviceTemplates/2d62b12a-0163-457d-9796-9602e9807e1/createDeviceFromTemplate
Content-Type: application/json

{
  "externalDeviceId": "2fa9424e-7ab0-4a22-8c90-2a20d15d8183",
  "operatingSystemVersion": "Ubuntu 18.04",
  "externalSourceName": "unknown",
  "accountEnabled": false,
  "alternativeNames": [
    "/subscriptions/15559dd5-f631-4b58-abc6-808a139fd0e6/resourcegroups/testrg/providers/microsoft.deviceregistry/assets/asset1"
  ]
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.device"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "06d59f74-dbf3-432a-9971-c5f60374e4f0",
  "accountEnabled": false,
  "alternativeNames": [
    "/subscriptions/15559dd5-f631-4b58-abc6-808a139fd0e6/resourcegroups/testrg/providers/microsoft.deviceregistry/assets/asset1"
  ],
  "deviceId": "c6ca2657-8685-4398-9edc-a6a603f177b3",
  "displayName": "2fa9424e-7ab0-4a22-8c90-2a20d15d8183",
  "externalSourceName": "unknown",
  "manufacturer": "IoT Device Template Manufacturer",
  "model": "IoT Device Template Model",
  "operatingSystem": "WindowsIoT",
  "operatingSystemVersion": "Ubuntu 18.04",
  "physicalIds": [
    "[EXTID]:2fa9424e-7ab0-4a22-8c90-2a20d15d8183"
  ],
  "profileType": "IoT",
  "sourceType": "External",
  "alternativeSecurityIds": [
    {
      "type": 2,
      "identityProvider": null,
      "key": "WAA1ADAAOQA6ADwAVQBJAEQAPgBNAGcAQgBtAEEARwBFAEEATwBRAEEAMABBAEQASQBBAE4AQQBCAGwAQQBDADAAQQBOAHcAQgBoAEEARwBJAEEATQBBAEEAdABBAEQAUQBBAFkAUQBBAHkAQQBEAEkAQQBMAFEAQQA0AEEARwBNAEEATwBRAEEAdwBBAEMAMABBAE0AZwBCAGgAQQBEAEkAQQBNAEEAQgBrAEEARABFAEEATgBRAEIAawBBAEQAZwBBAE0AUQBBADQAQQBEAE0AQQA="
    }
  ]
}
```
