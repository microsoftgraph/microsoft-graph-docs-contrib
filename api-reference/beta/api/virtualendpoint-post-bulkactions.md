---
title: "Create cloudPcBulkAction"
description: "Create a new cloudPcBulkAction object."
author: "Guoan-Tang"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 06/27/2024
---

# Create cloudPcBulkAction
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [cloudPcBulkAction](../resources/cloudpcbulkaction.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualendpoint_post_bulkactions" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualendpoint-post-bulkactions-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/virtualEndpoint/bulkActions
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [cloudPcBulkAction](../resources/cloudpcbulkaction.md) object.

You can specify the following properties when you create a **cloudPcBulkAction**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Name of this bulk action. Required.|
|cloudPcIds|String collection|IDs of the Cloud PCs the bulk action applies to. Required.|
|scheduledDuringMaintenanceWindow|Boolean|Indicates whether the bulk actions can be initiated during maintenance window. When `true`, bulk action will use maintenance window to schedule action, When `false` means bulk action will not use the maintenance window. Default value is `false`.|

## Response

If successful, this method returns a `201 Created` response code and a [cloudPcBulkAction](../resources/cloudpcbulkaction.md) object in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_cloudpcbulkaction_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/bulkActions
Content-type: application/json

{
  "@odata.type": "#microsoft.graph.cloudPcBulkAction",
  "displayName": "Bulk Power Off by Andy",
  "cloudPcIds": [
    "d6e0b8ee-8836-4b8d-b038-6130a97a3a9d",
    "85994912-197b-4927-b569-447bd81350ec"
  ],
  "scheduledDuringMaintenanceWindow": true
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-cloudpcbulkaction-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-cloudpcbulkaction-from--cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-cloudpcbulkaction-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-cloudpcbulkaction-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-cloudpcbulkaction-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-cloudpcbulkaction-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-cloudpcbulkaction-from--powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-cloudpcbulkaction-from--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcBulkAction"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.cloudPcBulkAction",
  "id": "231ad98f-41b3-872b-dd37-c70bf22cbdac",
  "displayName": "Bulk Power Off by Andy",
  "cloudPcIds": [
    "d6e0b8ee-8836-4b8d-b038-6130a97a3a9d",
    "85994912-197b-4927-b569-447bd81350ec"
  ],
  "actionSummary": null,
  "initiatedByUserPrincipalName": "johnd@contoso.com",
  "scheduledDuringMaintenanceWindow": true,
  "status": "pending",
  "createdDateTime": "2024-02-05T10:29:57Z"
}
```
