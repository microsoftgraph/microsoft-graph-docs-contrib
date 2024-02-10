---
title: "List Windows Settings"
description: "Get a list of the windowsSetting objects and their properties."
author: "MS-Arko"
ms.localizationpriority: medium
ms.prod: "cross-device-experiences"
doc_type: apiPageType
---

# List Windows settings stored in cloud

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [windowsSetting](../resources/windowssetting.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "usersettings-list-windows-permissions"
}
-->

[!INCLUDE [permissions-table](../includes/permissions/usersettings-list-windows-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

Get a list of Windows settings for the signed-in user.

````http
``` http
GET /me/settings/windows
````

## Optional query parameters

This method supports $filter OData query parameter to help customize the response. The result can be filtered by `windowsDeviceId` and `settingType` properties. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description                                                                                               |
| :------------ | :-------------------------------------------------------------------------------------------------------- |
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [windowsSetting](../resources/windowssetting.md) objects in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "list_windowssetting1"
}
-->

```http
GET https://graph.microsoft.com/beta/me/settings/windows
```

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.windowsSetting)"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.windowsSetting",
      "id": "default$windows.data.fileexplorerclassic.searchsettings",
      "windowsDeviceId": "String",
      "settingType": "String",
      "payloadType": "String",
      "instances": [
                {
                    "id": "9715f1d9-49d1-4b94-041b-443ac419d417",
                    "payload": "String (Base64 encoded JSON)",
                    "lastModifiedDateTime": "String (timestamp)",
                    "createdDateTime": "String (timestamp)",
                    "expirationDateTime": "String (timestamp)"
                }
            ]
    },
    {
      "@odata.type": "#microsoft.graph.windowsSetting",
      "id": "default$windows.data.input.devices.pensyncedsettings",
      "windowsDeviceId": "String",
      "settingType": "String",
      "payloadType": "String",
      "instances": [
                {
                    "id": "666dcb9b-49d1-4b94-041b-443ac419d417",
                    "payload": "String (Base64 encoded JSON)",
                    "lastModifiedDateTime": "String (timestamp)",
                    "createdDateTime": "String (timestamp)",
                    "expirationDateTime": "String (timestamp)"
                }
            ]
    }
  ]
}
```
### Request

The following example shows a filter by `roaming` settingType request.

<!-- {
  "blockType": "request",
  "name": "list_windowssetting2"
}
-->

```http
GET https://graph.microsoft.com/beta/me/settings/windows?$filter=settingType eq 'roaming'
```

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.windowsSetting)"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.windowsSetting",
      "id": "default$windows.data.fileexplorerclassic.shellstatesettings",
      "settingType": "roaming",
      "payloadType": "String",
      "instances": [
                {
                    "id": "0b3af867-49d1-4b94-041b-443ac419d417",
                    "payload": "String (Base64 encoded JSON)",
                    "lastModifiedDateTime": "String (timestamp)",
                    "createdDateTime": "String (timestamp)",
                    "expirationDateTime": "String (timestamp)"
                }
            ]
    },
    {
      "@odata.type": "#microsoft.graph.windowsSetting",
      "id": "default$windows.data.fileexplorerclassic.cabinetstatesettings",
      "settingType": "roaming",
      "payloadType": "String",
      "instances": [
                {
                    "id": "5038fa1b-49d1-4b94-041b-443ac419d417",
                    "payload": "String (Base64 encoded JSON)",
                    "lastModifiedDateTime": "String (timestamp)",
                    "createdDateTime": "String (timestamp)",
                    "expirationDateTime": "String (timestamp)"
                }
            ]
    }
  ]
}
```
### Request

The following example shows a filter by `backup` settingType request.

<!-- {
  "blockType": "request",
  "name": "list_windowssetting3"
}
-->

```http
GET https://graph.microsoft.com/beta/me/settings/windows?$filter=settingType eq 'backup'
```

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.windowsSetting)"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.windowsSetting",
      "id": "{67585f9f-ee4b-4dd8-808e-d88375d66ef7}$windows.data.apps.devicemetadata",
      "windowsDeviceId": "String",
      "settingType": "backup",
      "payloadType": "String",
      "instances": [
                {
                    "id": "14b50191-10e5-4da5-9099-8c909b8458bd",
                    "payload": "String (Base64 encoded JSON)",
                    "lastModifiedDateTime": "String (timestamp)",
                    "createdDateTime": "String (timestamp)",
                    "expirationDateTime": "String (timestamp)"
                }
            ]
    },
    {
      "@odata.type": "#microsoft.graph.windowsSetting",
      "id": "{55f26da7-5824-4937-9028-9bba274f049f}$windows.data.apps.devicemetadata",
      "windowsDeviceId": "String",      
      "settingType": "backup",
      "payloadType": "String",
      "instances": [
                {
                    "id": "da2f0307-2a8d-4242-846f-56abd95f7213",
                    "payload": "String (Base64 encoded JSON)",
                    "lastModifiedDateTime": "String (timestamp)",
                    "createdDateTime": "String (timestamp)",
                    "expirationDateTime": "String (timestamp)"
                }
            ]
    }
  ]
}
```
### Request

The following example shows a filter by windowsDeviceId request.

<!-- {
  "blockType": "request",
  "name": "list_windowssetting4"
}
-->

```http
GET https://graph.microsoft.com/beta/me/settings/windows?$filter=windowsDeviceId eq '67585f9f-ee4b-4dd8-808e-d88375d66ef7'
```

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.windowsSetting)"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.windowsSetting",
      "id": "{67585f9f-ee4b-4dd8-808e-d88375d66ef7}$windows.data.apps.devicemetadata",
      "windowsDeviceId": "67585f9f-ee4b-4dd8-808e-d88375d66ef7",
      "settingType": "backup",
      "payloadType": "String",
      "instances": [
                {
                    "id": "14b50191-10e5-4da5-9099-8c909b8458bd",
                    "payload": "String (Base64 encoded JSON)",
                    "lastModifiedDateTime": "String (timestamp)",
                    "createdDateTime": "String (timestamp)",
                    "expirationDateTime": "String (timestamp)"
                }
            ]
    }
  ]
}
```
