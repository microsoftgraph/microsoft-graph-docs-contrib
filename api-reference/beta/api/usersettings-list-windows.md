---
title: "List Windows settings"
description: "Get a list of the windowsSetting objects and their properties."
author: "MS-Arko"
ms.localizationpriority: medium
ms.prod: "cross-device-experiences"
doc_type: apiPageType
---

# List Windows settings stored in a cloud

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

``` http
GET /me/settings/windows
````

## Optional query parameters

This method supports the `$filter` OData query parameter to help customize the response. The result can be filtered by `windowsDeviceId` and `settingType` properties. For general information, see [OData query parameters](/graph/query-parameters).

1. **`windowsDeviceId`**: A string value that represents the unique identifier of a Windows device. This identifier can be found in the response body. By filtering with `windowsDeviceId`, a filtered list of settings specific to that device can be retrieved. Only equality (`eq`) comparison is supported for this parameter.

2. **`settingType`**: An enumeration with valid values: `roaming` and `backup`. The `settingType` parameter allows narrowing down the results to settings related to either roaming or backup. Only equality (`eq`) comparison is supported for this parameter. For more information, see [windowssettingtype](../resources/enums.md#windowssettingtype-values).

Please refer to the [examples](./usersettings-list-windows.md#examples) section below for more information on how to use these query parameters.

## Request headers

| Name          | Description                                                                                               |
| :------------ | :-------------------------------------------------------------------------------------------------------- |
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |
| Prefer        |Optional. The API supports the *odata.maxpagesize* parameter through this header for pagination purposes. The minimum and maximum valid values for *odata.maxpagesize* are **1** and **200** respectively. If no value is passed, the default value is **110**.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [windowsSetting](../resources/windowssetting.md) objects in the response body.

If the response contains more than one page of data, the response body will contain a `@odata.nextLink` property. This property will contain a URL that can be used to request the next page of data.  The URL should be used without any modification.


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
      "windowsDeviceId": "c9e0f7d8-2b1a-4f6e-9b7c-8e3a1a3e5b0d",
      "settingType": "backup",
      "payloadType": "windows.data.fileexplorerclassic.searchsettings",
      "instances": [
                {
                    "id": "9715f1d9-49d1-4b94-041b-443ac419d417",
                    "payload": "VGhpcyBpcyBqdXN0IGFuIGV4YW1wbGUh",
                    "lastModifiedDateTime": "2024-10-31T23:30:41Z",
                    "createdDateTime": "2024-02-12T19:34:35.223Z",
                    "expirationDateTime": "2034-02-09T19:34:33.771Z"
                }
            ]
    },
    {
      "@odata.type": "#microsoft.graph.windowsSetting",
      "id": "default$windows.data.input.devices.pensyncedsettings",
      "windowsDeviceId": "a4b9d6e7-8f3c-4d2a-b1e0-6c5f0e9a7d8b",
      "settingType": "backup",
      "payloadType": "windows.data.input.devices.pensyncedsettings",
      "instances": [
                {
                    "id": "666dcb9b-49d1-4b94-041b-443ac419d417",
                    "payload": "VGhpcyBpcyBhbm90aGVyIGp1c3QgYW4gZXhhbXBsZSE=",
                    "lastModifiedDateTime": "2024-10-31T23:30:41Z",
                    "createdDateTime": "2024-02-12T19:34:35.223Z",
                    "expirationDateTime": "2034-02-09T19:34:33.771Z"
                }
            ]
    }
  ],
  "@odata.nextLink": "https://graph.microsoft.com/beta/me/settings/windows?$skiptoken=eyJzZXRhZyI6ImJmY2I2ZjQwLWM5ZGQtMTFlZS05MTE3LTAxMDIwMzA1MDcwZCIsImlldGFnIjoiMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDAwMDAwMDAwIiwiZW5kRVRhZyI6IjEwMDJkOGYwLWM2NTItMTRkYy05MTE3LTAxMDIwMzA1MDcwZCIsImV0YWciOiJjMDMzZjUxMC1jOWRkLTExZWUtOTExNy0wMTAyMDMwNTA3MGQiLCJsdHNsIjoiYzAzM2Y1MTAtYzlkZC0xMWVlLTkxMTctMDEwMjAzMDUwNzBkIiwibmV4dCI6dHJ1ZX0%3d"
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
      "payloadType": "windows.data.fileexplorerclassic.shellstatesettings",
      "instances": [
                {
                    "id": "0b3af867-49d1-4b94-041b-443ac419d417",
                    "payload": "VGhpcyBpcyBqdXN0IGFuIGV4YW1wbGUh",
                    "lastModifiedDateTime": "2024-10-31T23:30:41Z",
                    "createdDateTime": "2024-02-12T19:34:35.223Z",
                    "expirationDateTime": "2034-02-09T19:34:33.771Z"
                }
            ]
    },
    {
      "@odata.type": "#microsoft.graph.windowsSetting",
      "id": "default$windows.data.fileexplorerclassic.cabinetstatesettings",
      "settingType": "roaming",
      "payloadType": "windows.data.fileexplorerclassic.cabinetstatesettings",
      "instances": [
                {
                    "id": "5038fa1b-49d1-4b94-041b-443ac419d417",
                    "payload": "VGhpcyBpcyBhbm90aGVyIGp1c3QgYW4gZXhhbXBsZSE=",
                    "lastModifiedDateTime": "2024-10-31T23:30:41Z",
                    "createdDateTime": "2024-02-12T19:34:35.223Z",
                    "expirationDateTime": "2034-02-09T19:34:33.771Z"
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
      "windowsDeviceId": "67585f9f-ee4b-4dd8-808e-d88375d66ef7",
      "settingType": "backup",
      "payloadType": "windows.data.apps.devicemetadata",
      "instances": [
                {
                    "id": "14b50191-10e5-4da5-9099-8c909b8458bd",
                    "payload": "VGhpcyBpcyBhbm90aGVyIGp1c3QgYW4gZXhhbXBsZSE=",
                    "lastModifiedDateTime": "2024-10-31T23:30:41Z",
                    "createdDateTime": "2024-02-12T19:34:35.223Z",
                    "expirationDateTime": "2034-02-09T19:34:33.771Z"
                }
            ]
    },
    {
      "@odata.type": "#microsoft.graph.windowsSetting",
      "id": "{55f26da7-5824-4937-9028-9bba274f049f}$windows.data.apps.devicemetadata",
      "windowsDeviceId": "55f26da7-5824-4937-9028-9bba274f049f",      
      "settingType": "backup",
      "payloadType": "windows.data.apps.devicemetadata",
      "instances": [
                {
                    "id": "da2f0307-2a8d-4242-846f-56abd95f7213",
                    "payload": "VGhpcyBpcyBqdXN0IGFuIGV4YW1wbGUh",
                    "lastModifiedDateTime": "2024-10-31T23:30:41Z",
                    "createdDateTime": "2024-02-12T19:34:35.223Z",
                    "expirationDateTime": "2034-02-09T19:34:33.771Z"
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
      "payloadType": "windows.data.apps.devicemetadata",
      "instances": [
                {
                    "id": "14b50191-10e5-4da5-9099-8c909b8458bd",
                    "payload": "VGhpcyBpcyBqdXN0IGFuIGV4YW1wbGUh",
                    "lastModifiedDateTime": "2024-10-31T23:30:41Z",
                    "createdDateTime": "2024-02-12T19:34:35.223Z",
                    "expirationDateTime": "2034-02-09T19:34:33.771Z"
                }
            ]
    }
  ]
}
```
