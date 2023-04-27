---
title: "Create operationalInsightsConnection"
description: "Create a new operationalInsightsConnection object."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: apiPageType
---

# Create operationalInsightsConnection
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [operationalInsightsConnection](../resources/windowsupdates-operationalinsightsconnection.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|WindowsUpdates.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|WindowsUpdates.ReadWrite.All|

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
|Authorization|Bearer {token}. Required.|
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
The following is an example of a request.

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

---

### Response
The following is an example of the response.
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
