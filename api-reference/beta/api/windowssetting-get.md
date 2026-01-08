---
title: "Get windowsSetting"
description: "Read the properties and relationships of a windowsSetting object by passing the ID of the setting in the URL."
author: "MS-Arko"
ms.localizationpriority: medium
ms.subservice: "project-rome"
doc_type: apiPageType
ms.date: 04/19/2024
---

# Get windowsSetting

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [windowsSetting](../resources/windowssetting.md) object by passing the ID of the setting in the URL. This method gets the setting for a user.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "windowssetting_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/windowssetting-get-permissions.md)]

>[!NOTE]
> * The calling user must be assigned the _Microsoft 365 Backup Administrator_ [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json).
> * The `UserWindowsSettings.Read` permission allows the app to read the settings of only the signed-in user. 
> * The `UserWindowsSettings.Read.All` permission allows the app to read the settings of a specific user.

## HTTP request

For a specific user:
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /users/{user-id}@{tenant-id}/settings/windows/{windowsSettingId}
````

> [!NOTE]
> The `{tenant-id}` value must match the tenant ID of the calling user. To find your tenant ID, see [How to find your Microsoft Entra tenant ID](/entra/fundamentals/how-to-find-tenant).

For the signed-in user:
<!-- { "blockType": "ignored" } -->
```http
GET /me/settings/windows/{windowsSettingId}
```
## Optional query parameters

This method doesn't support OData query parameters to customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [windowsSetting](../resources/windowssetting.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_windowssetting"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/me/settings/windows/{windowsSettingId}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-windowssetting-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-windowssetting-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-windowssetting-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-windowssetting-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-windowssetting-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-windowssetting-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-windowssetting-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.windowsSetting"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

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
```

