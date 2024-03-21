---
title: "List Windows settings"
description: "Get a list of windowsSetting objects and their properties."
author: "MS-Arko"
ms.localizationpriority: medium
ms.subservice: "project-rome"
doc_type: apiPageType
---

# List Windows settings

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [windowsSetting](../resources/windowssetting.md) objects and their properties for the signed in user.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "usersettings_list_windows" } -->
[!INCLUDE [permissions-table](../includes/permissions/usersettings-list-windows-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/settings/windows
````

## Optional query parameters

This method supports the `$filter` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

You can filter the results by the following properties:

- **windowsDeviceId**: A string value that represents the unique identifier of a Windows device. This identifier can be found in the response body. When you filter on **windowsDeviceId**, you can get a list of settings specific to that device. Only the equality (`eq`) comparison is supported for this parameter.
- **settingType**: An enumeration with the following valid values: `roaming` and `backup`. The **settingType** property allows you to narrow down the results to settings related to either roaming or backup. Only the equality (`eq`) comparison is supported for this parameter. For more information, see [windowsSettingType](../resources/enums.md#windowssettingtype-values).

For more details about how to use this query parameter, see the [Examples](./usersettings-list-windows.md#examples) section.

## Request headers

| Name          | Description                                                                                               |
| :------------ | :-------------------------------------------------------------------------------------------------------- |
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |
| Prefer        |Optional. This API supports the *odata.maxpagesize* parameter through this header for pagination purposes. The minimum and maximum valid values for *odata.maxpagesize* are **1** and **200** respectively. If no value is passed, the default value is **110**.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [windowsSetting](../resources/windowssetting.md) objects in the response body.

If the response contains more than one page of data, the response body will contain an `@odata.nextLink` property. This property will contain a URL that can be used to request the next page of data. The URL should be used without any modification.


## Examples

###  Example 1: Request without any filter 

#### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_windowssetting1"
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/me/settings/windows
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-windowssetting1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-windowssetting1-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-windowssetting1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-windowssetting1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-windowssetting1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-windowssetting1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-windowssetting1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
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

### Example 2: Request with filter by `roaming` settingType

#### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_windowssetting2"
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/me/settings/windows?$filter=settingType eq 'roaming'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-windowssetting2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-windowssetting2-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-windowssetting2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-windowssetting2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-windowssetting2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-windowssetting2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-windowssetting2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
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

### Example 3: Request with filter by `backup` settingType

#### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_windowssetting3"
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/me/settings/windows?$filter=settingType eq 'backup'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-windowssetting3-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-windowssetting3-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-windowssetting3-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-windowssetting3-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-windowssetting3-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-windowssetting3-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-windowssetting3-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
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

### Example 4: Request with filter by `windowsDeviceId`

#### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_windowssetting4"
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/me/settings/windows?$filter=windowsDeviceId eq '67585f9f-ee4b-4dd8-808e-d88375d66ef7'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-windowssetting4-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-windowssetting4-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-windowssetting4-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-windowssetting4-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-windowssetting4-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-windowssetting4-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-windowssetting4-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
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
