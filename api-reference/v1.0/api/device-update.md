---
title: "Update device"
description: "Update the properties of a registered device."
author: sandeo-MSFT
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# Update device

Namespace: microsoft.graph

Update the properties of a registered device.

Only certain properties of a device can be updated through approved Mobile Device Managment (MDM) apps.

> [!IMPORTANT]
> This API has a [known issue](/graph/known-issues#linux-based-devices-cant-be-updated-by-an-app-with-application-permissions). An app with application permissions cannot update the **extensionAttributes** property for Linux-based devices, that is, where the **operationSystem** property is `linux`.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Directory.AccessAsUser.All |
|Delegated (personal Microsoft account) | Not supported. |
|Application | Device.ReadWrite.All, Directory.ReadWrite.All |

The calling user must also be in one of the following [Azure AD roles](/azure/active-directory/roles/permissions-reference): *Global Administrator*, *Intune Administrator*. A calling user in the *Cloud Device Administrator* role can only enable or disable devices using this API and a user with the *Windows 365 Administrator* role can only update basic device properties.

## HTTP request

You can address the device using either its **id** or **deviceId**.
<!-- { "blockType": "ignored" } -->
```http
PATCH /devices/{id}
PATCH /devices(deviceId='{deviceId}')
```


## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Bearer {token}. Required. |

## Request body

In the request body, supply the values for the [device](../resources/device.md) properties that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|accountEnabled|Boolean| `true` if the account is enabled; otherwise, `false`. Only callers in *Global Administrator* and *Cloud Device Administrator* roles can update this property.|
|operatingSystem|String|The type of operating system on the device.|
|operatingSystemVersion|String|The version of the operating system on the device|
|displayName|String|The display name for the device.|
|isCompliant|Boolean|`true` if the device complies with Mobile Device Management (MDM) policies; otherwise, `false`. This can only be updated by Intune for any device OS type or by an [approved MDM app](/windows/client-management/mdm/azure-active-directory-integration-with-mdm) for Windows OS devices. |
|isManaged|Boolean|`true` if the device is managed by a Mobile Device Management (MDM) app; otherwise, `false`. This can only be updated by Intune for any device OS type or by an [approved MDM app](/windows/client-management/mdm/azure-active-directory-integration-with-mdm) for Windows OS devices. |

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Example 1: Update the accountEnabled property of a device

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_device"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/devices/7c06cd31-7c30-4f3b-a5c3-444cd8dd63ac
Content-type: application/json

{
  "accountEnabled": false
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-device-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-device-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-device-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-device-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-device-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-device-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

### Example 2:  Write extensionAttributes on a device

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_device_extensionAttributes"
}-->
```msgraph-interactive
PATCH https://graph.microsoft.com/v1.0/devices/7c06cd31-7c30-4f3b-a5c3-444cd8dd63ac
Content-type: application/json

{
    "extensionAttributes": {
        "extensionAttribute1": "BYOD-Device"
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-device-extensionattributes-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-device-extensionattributes-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-device-extensionattributes-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-device-extensionattributes-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-device-extensionattributes-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79 
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Example",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->
