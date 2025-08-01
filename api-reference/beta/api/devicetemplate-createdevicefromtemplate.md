---
title: "deviceTemplate: createDeviceFromTemplate"
description: "Create a new device from a device template."
author: "atastrophic"
ms.date: 12/31/2024
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: apiPageType
---

# deviceTemplate: createDeviceFromTemplate

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [device](../resources/device.md) from a [deviceTemplate](../resources/devicetemplate.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "devicetemplate_createdevicefromtemplate" } -->
[!INCLUDE [permissions-table](../includes/permissions/devicetemplate-createdevicefromtemplate-permissions.md)]

[!INCLUDE [rbac-devicestemplate-apis](../includes/rbac-for-apis/rbac-devicetemplate-apis.md)]
> **Note:** Users must be owner of the object.

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

The following table lists the parameters that you can use when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
| accountEnabled       | Boolean                             | `true` if the account is enabled; otherwise, `false`. The default value is `true`. A disabled device can't authenticate with Microsoft Entra ID. Optional.|
| alternativeNames     | String collection                   | A collection of ARM resource IDs associated with the device, if any. Optional. |
| externalDeviceId     | String                              | ID of the device in IoT registry. Must be unique within a tenant. Required. |
| externalSourceName   | String                              | Identifies the source name of the device. Optional. |
| keyCredential        | [keyCredential](../resources/keycredential.md) | The key credential when you use self-signed certificates. Optional. |
| operatingSystemVersion | String                              | The operating system version of the device specified. Optional. |

## Response

If successful, this action returns a `200 OK` response code and a [device](../resources/device.md) object in the response body.

For more information, see [Microsoft Graph error responses and resource types](/graph/errors).

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
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
    "/subscriptions/00001111-aaaa-2222-bbbb-3333cccc4444/resourcegroups/testrg/providers/microsoft.deviceregistry/assets/asset1"
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/devicetemplatethiscreatedevicefromtemplate-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/devicetemplatethiscreatedevicefromtemplate-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/devicetemplatethiscreatedevicefromtemplate-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/devicetemplatethiscreatedevicefromtemplate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/devicetemplatethiscreatedevicefromtemplate-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/devicetemplatethiscreatedevicefromtemplate-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
    "/subscriptions/00001111-aaaa-2222-bbbb-3333cccc4444/resourcegroups/testrg/providers/microsoft.deviceregistry/assets/asset1"
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
      "key": "WAA1ADAAOQA6ADwAVQB..."
    }
  ]
}
```
