---
title: "Get device"
description: "Get the properties and relationships of a device object."
author: sandeo-MSFT
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# Get device

Namespace: microsoft.graph

Get the properties and relationships of a device object.
## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).


|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Device.Read.All, Directory.Read.All, Directory.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Device.Read.All, Device.ReadWrite.All, Directory.Read.All, Directory.ReadWrite.All |

## HTTP request

You can address the device using either its **id** or **deviceId**.
<!-- { "blockType": "ignored" } -->
```http
GET /devices/{id}
GET /devices(deviceId='{deviceId}')
```

## Optional query parameters
This method supports the `$select` [OData query parameter](/graph/query-parameters) to help customize the response.

## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and [device](../resources/device.md) object in the response body.
## Examples

### Example 1: Get a device

#### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_device"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/devices/000005c3-b7a6-4c61-89fc-80bf5ccfc366
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-device-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-device-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-device-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-device-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-device-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-device-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following is an example of the response. 
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.device"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#devices/$entity",
  "@odata.id": "https://graph.microsoft.com/v2/72f988bf-86f1-41af-91ab-2d7cd011db47/directoryObjects/000005c3-b7a6-4c61-89fc-80bf5ccfc366/Microsoft.DirectoryServices.Device",
  "accountEnabled":false,
  "deviceId":"6fa60d52-01e7-4b18-8055-4759461fc16b",
  "displayName":"DESKTOP-858MANH",
  "id": "000005c3-b7a6-4c61-89fc-80bf5ccfc366",
  "operatingSystem":"Windows",
  "operatingSystemVersion":"10.0.19043.1165"
}
```

### Example 2: Get a device and return only its id and extensionAttributes properties

#### Request

The following request retrieves the **id** and **extensionAttributes** property of a device.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_device_select"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/devices/6a59ea83-02bd-468f-a40b-f2c3d1821983?$select=id,extensionAttributes
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-device-select-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-device-select-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-device-select-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-device-select-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-device-select-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-device-select-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.device"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#devices(id,extensionAttributes)/$entity",
    "id": "6a59ea83-02bd-468f-a40b-f2c3d1821983",
    "extensionAttributes": {
        "extensionAttribute1": "BYOD-Device",
        "extensionAttribute2": null,
        "extensionAttribute3": null,
        "extensionAttribute4": null,
        "extensionAttribute5": null,
        "extensionAttribute6": null,
        "extensionAttribute7": null,
        "extensionAttribute8": null,
        "extensionAttribute9": null,
        "extensionAttribute10": null,
        "extensionAttribute11": null,
        "extensionAttribute12": null,
        "extensionAttribute13": null,
        "extensionAttribute14": null,
        "extensionAttribute15": null
    }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get device",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->
