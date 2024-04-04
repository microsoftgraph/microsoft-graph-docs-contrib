---
title: "Create operationalInsightsConnection"
description: "Create a new operationalInsightsConnection object."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.subservice: windows-update-business
doc_type: apiPageType
ms.topic: reference
---

# Create operationalInsightsConnection
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [operationalInsightsConnection](../resources/windowsupdates-operationalinsightsconnection.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "adminwindowsupdates_post_resourceconnections_operationalinsightsconnection" } -->
[!INCLUDE [permissions-table](../includes/permissions/adminwindowsupdates-post-resourceconnections-operationalinsightsconnection-permissions.md)]

[!INCLUDE [rbac-windows-updates-apis](../includes/rbac-for-apis/rbac-windows-updates-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /admin/windows/updates/resourceConnections
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [operationalInsightsConnection](../resources/windowsupdates-operationalinsightsconnection.md) object.

You must specify the following properties when you create an **operationalInsightsConnection**.

|Property|Type|Description|
|:---|:---|:---|
|azureResourceGroupName|String|The name of the Azure resource group that contains the Log Analytics workspace.|
|azureSubscriptionId|String|The Azure subscription ID that contains the Log Analytics workspace.|
|workspaceName|String|The name of the Log Analytics workspace.|

## Response

If successful, this method returns a `201 Created` response code and an [operationalInsightsConnection](../resources/windowsupdates-operationalinsightsconnection.md) object in the response body.

The following errors are possible:

|Response Code|Message|
|:---|:---|
|`400 Bad Request`|The specified workspace was not able to be linked. Verify that the key properties are correct.|
|`403 Forbidden`|The specified workspace was not able to be linked. Verify that the Azure subscription is active.|
|`409 Conflict`|The specified resource already exists.|

## Examples

### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_operationalInsightsConnection_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/windows/updates/resourceConnections
Content-Type: application/json
Content-length: 97

{
  "@odata.type": "#microsoft.graph.windowsUpdates.operationalInsightsConnection",
  "azureSubscriptionId": "322ec614-e9c2-4cd5-a55c-5711fdecf02e",
  "azureResourceGroupName": "target-resource-group",
  "workspaceName": "my-workspace"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-operationalinsightsconnection-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-operationalinsightsconnection-from--cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-operationalinsightsconnection-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-operationalinsightsconnection-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-operationalinsightsconnection-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-operationalinsightsconnection-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-operationalinsightsconnection-from--powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-operationalinsightsconnection-from--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.windowsUpdates.operationalInsightsConnection"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.operationalInsightsConnection",
  "id": "85fbecb2-e407-34e9-9298-4d587857795d",
  "azureSubscriptionId": "322ec614-e9c2-4cd5-a55c-5711fdecf02e",
  "azureResourceGroupName": "target-resource-group",
  "workspaceName": "my-workspace",
  "state": "connected"
}
```
