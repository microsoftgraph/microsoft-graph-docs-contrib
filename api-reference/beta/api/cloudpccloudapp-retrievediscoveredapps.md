---
title: "Retrieve cloudPcDiscoveredApp"
description: "Get discovered app list which app details can be used to mapped to a cloud app."
author: "niniliu"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 06/12/2025
---

# Retrieve cloudPcDiscoveredApp

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get discovered app list which app details can be used to mapped to a [cloudPcCloudApp](../resources/cloudpccloudapp.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpccloudapp_retrievediscoveredapps" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpccloudapp-retrievediscoveredapps-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
POST /deviceManagement/virtualEndpoint/cloudApps/reset
```

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [cloudPcDiscoveredApp](../resources/cloudpcdiscoveredapp.md) object in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_cloudpcdiscoveredapp"
}
-->

``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/cloudApps/retrieveDiscoveredApps(sourceId='30d0e128-de93-41dc-89ec-33d84bb662a0',provisionPolicyId='30d0e128-de93-41dc-89ec-33d84bb662a0')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/retrievediscoveredapps-cloudpccloudapp-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/retrievediscoveredapps-cloudpccloudapp-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/retrievediscoveredapps-cloudpccloudapp-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/retrievediscoveredapps-cloudpccloudapp-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/retrievediscoveredapps-cloudpccloudapp-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/retrievediscoveredapps-cloudpccloudapp-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/retrievediscoveredapps-cloudpccloudapp-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/retrievediscoveredapps-cloudpccloudapp-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcDiscoveredApp"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.cloudPcDiscoveredApp)",
    "value": [
                {
                    "id": "9a383274-a9b3-4c5f-ac95-0ea5d54fb365",
                    "appName": "Character Map",
                    "properties": {
                        "filePath": "C:\\Windows\\system32\\charmap.exe",            
                        "commandLineArguments": "",
                        "iconPath": "C:\\Windows\\system32\\charmap.exe",
                        "iconIndex": 0
                    }
                },
                {
                    "id": "ja383274-a9b3-4c5f-ac95-0ea5d54fb365",
                    "appName": "Paint",
                    "properties": {
                        "filePath": "C:\\Windows\\system32\\mspaint.exe",
                        "commandLineArguments": "",
                        "iconPath": "C:\\Windows\\system32\\mspaint.exe",
                        "iconIndex": 0
                    }
                }
    ]
}
```
