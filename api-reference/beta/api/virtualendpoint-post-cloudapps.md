---
title: "Create cloudPcCloudApp"
description: "Create a new cloudPcCloudApp object."
author: "chyouchyou"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 02/12/2026
---

# Create cloudPcCloudApp

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [cloudPcCloudApp](../resources/cloudpccloudapp.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualendpoint_post_cloudapps" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualendpoint-post-cloudapps-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
POST /deviceManagement/virtualEndpoint/cloudApps
```

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [cloudPcCloudApp](../resources/cloudpccloudapp.md) object.

The following table shows the properties available when you create a **cloudPcCloudApp**.

|Property|Type|Description|
|:---|:---|:---|
|appDetail|[cloudPcCloudAppDetail](../resources/cloudpccloudappdetail.md)|The details about the cloud app. This is a polymorphic type. Use **@odata.type** to specify the derived type: `#microsoft.graph.cloudPcFilePathAppDetail` for apps with a manually specified file path, or `#microsoft.graph.cloudPcAutomaticDiscoveredAppDetail` for automatically discovered apps. Required.|
|description|String|The description associated with the cloud app. The maximum allowed length for this property is 512 characters. Optional.|
|discoveredAppName|String|Name of the discovered app associated with the cloud app. Required.|
|displayName|String|The display name for the cloud app. Must be unique within a single provisioning policy. The maximum allowed length for this property is 64 characters. Required.|
|provisioningPolicyId|String|The ID of the provisioning policy associated with this cloud app. Required.|

## Response

If successful, this method returns a `201 Created` response code and a [cloudPcCloudApp](../resources/cloudpccloudapp.md) object in the response body.

## Examples

### Request

The following example shows how to create a cloud app using the **cloudPcFilePathAppDetail** type.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_cloudpccloudapp"
}
-->

``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/cloudApps
Content-Type: application/json

{
  "displayName": "Remote Desktop Connection",
  "discoveredAppName": "Remote Desktop Connection",
  "provisioningPolicyId": "e31f75e9-25a8-41e9-a9d5-ce8fd484af15",
  "description": "",
  "appDetail": {
    "@odata.type": "#microsoft.graph.cloudPcFilePathAppDetail",
    "filePath": "C:\\Windows\\system32\\mstsc.exe",
    "commandLineArguments": "",
    "iconPath": "C:\\Windows\\system32\\mstsc.exe",
    "iconIndex": 0
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-cloudpccloudapp-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-cloudpccloudapp-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-cloudpccloudapp-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-cloudpccloudapp-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-cloudpccloudapp-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-cloudpccloudapp-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcCloudApp"
}
-->

``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#deviceManagement/virtualEndpoint/cloudApps/$entity",
  "id": "60a7bbf2-d831-4dc8-8375-1253403f7e74",
  "displayName": "Remote Desktop Connection",
  "discoveredAppName": "Remote Desktop Connection",
  "provisioningPolicyId": "e31f75e9-25a8-41e9-a9d5-ce8fd484af15",
  "description": "",
  "appDetail": {
    "@odata.type": "#microsoft.graph.cloudPcFilePathAppDetail",
    "filePath": "C:\\Windows\\system32\\mstsc.exe",
    "commandLineArguments": "",
    "iconPath": "C:\\Windows\\system32\\mstsc.exe",
    "iconIndex": 0
  },
  "addedDateTime": "2025-11-13T07:37:22.3049326Z",
  "lastPublishedDateTime": "0001-01-01T00:00:00Z",
  "appStatus": "preparing",
  "actionFailedErrorCode": null,
  "actionFailedErrorMessage": null,
  "availableToUser": false,
  "scopeIds": [
    "0"
  ]
}
```
