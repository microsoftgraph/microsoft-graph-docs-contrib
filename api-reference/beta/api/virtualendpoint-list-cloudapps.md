---
title: "List cloudApps"
description: "List all the cloudPcCloudApp objects filtered by a provision policy ID."
author: "niniliu"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 08/29/2024
---

# List cloudApps

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List all the [cloudPcCloudApp](../resources/cloudpccloudapp.md) objects filtered by a provision policy ID.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualendpoint_list_cloudapps" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualendpoint-list-cloudapps-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /deviceManagement/virtualEndpoint/cloudApps
```

## Optional query parameters

This method supports the `$select` and `$filter` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [cloudPcCloudApp](../resources/cloudpccloudapp.md) objects in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_cloudpccloudapps"
}
-->
``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/cloudApps
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-cloudpccloudapps-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-cloudpccloudapps-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-cloudpccloudapps-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-cloudpccloudapps-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-cloudpccloudapps-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-cloudpccloudapps-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.cloudPcCloudApp)"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#cloudPcCloudApps",
  "value": [
    {
      "@odata.context": "https://graph.microsoft.com/beta/$metadata#cloudPcCloudApps/$entity",
      "id": "b0c2d35f-3385-46c8-a6f5-6c3dfad7708b",
      "discoveredAppId": "9a383274-a9b3-4c5f-ac95-0ea5d54fb365",
      "displayName": "Cloud App example",
      "discoveredAppName": "Paint",
      "description": "",
      "appDetail": {
        "filePath": "C:\\Windows\\system32\\mspaint.exe",
        "commandLineArguments": "",
        "iconPath": "C:\\Windows\\system32\\mspaint.exe",
        "iconIndex": 0
      },
      "provisioningPolicyId": "jw3de35f-3385-46c8-a6f5-6c3dfad7708b",
      "appStatus": "published",
      "lastPublishedDateTime": "2022-07-15T12:19:27.7211305Z",
      "availableToUser": true,
      "addedDateTime": "2022-07-14T12:19:27.7211305Z",
      "scopeIds": ["0", "1"]
    },
    {
      "@odata.context": "https://graph.microsoft.com/beta/$metadata#cloudPcCloudApps/$entity",
      "id": "a0c2d35f-3385-46c8-a6f5-6c3dfad7708b",
      "discoveredAppId": "8a383274-a9b3-4c5f-ac95-0ea5d54fb365",
      "displayName": "Cloud App example2",
      "discoveredAppName": "Paint",
      "description": "",
      "appDetail": {
        "filePath": "C:\\Windows\\system32\\mspaint.exe",
        "commandLineArguments": "",
        "iconPath": "C:\\Windows\\system32\\mspaint.exe",
        "iconIndex": 0
      },
      "provisioningPolicyId": "jw3de35f-3385-46c8-a6f5-6c3dfad7708b",
      "appStatus": "published",
      "lastPublishedDateTime": "2022-07-15T12:19:27.7211305Z",
      "availableToUser": true,
      "addedDateTime": "2022-07-14T12:19:27.7211305Z",
      "scopeIds": ["0", "1"]
    }
  ]
}
```
