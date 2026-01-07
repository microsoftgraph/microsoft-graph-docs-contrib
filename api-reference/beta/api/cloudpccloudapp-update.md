---
title: "Update cloudPcCloudApp"
description: "Update the properties of a cloudPcCloudApp object, such as the display name or icon path."
author: "niniliu"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 06/12/2025
---

# Update cloudPcCloudApp

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [cloudPcCloudApp](../resources/cloudpccloudapp.md) object, such as the display name or icon path.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpccloudapp_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpccloudapp-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
PATCH /deviceManagement/virtualEndpoint/cloudApps/{id}
```

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-type | application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [cloudPcCloudApp](../resources/cloudpccloudapp.md) object.

The following table shows the properties that you can use when you updated a **cloudPcCloudApp**.

|Property|Type|Description|
|:---|:---|:---|
|appDetail|[cloudPcCloudAppDetail](../resources/cloudpccloudappdetail.md)|The details about the cloud app. These values come initially from the **appDetail** property of the associated discovered app. The **iconPath**, **iconIndex**, and **commandLineArguments** properties can be changed as needed when you update the cloud app. Supports `$select`.|
|description|String|The description associated with the cloud app. The maximum allowed length for this property is 512 characters. Supports `$filter`, `$select`, and `$orderBy`.|
|displayName|String|The display name for the cloud app that appears on the end-user portal and must be unique within a single provisioning policy. It uses the discovered app name as the default value. The maximum allowed length for this property is 64 characters. For example, `Paint`. Supports `$filter`, `$select`, and `$orderBy`.|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_cloudpccloudapp"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/cloudApps/40d0e128-de93-41dc-89ec-33d84bb662a0
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.cloudPcCloudApp",
  "displayName": "Cloud App example3",
  "appDetail": {
    "iconPath": "C:\\Windows\\system32\\WindowsPowerShell\\v1.0\\powershell_ise.exe"
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-cloudpccloudapp-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-cloudpccloudapp-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-cloudpccloudapp-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-cloudpccloudapp-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-cloudpccloudapp-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-cloudpccloudapp-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
