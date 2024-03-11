---
title: "Create businessScenario"
description: "Create a new businessScenario object."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.prod: "business-scenarios"
doc_type: apiPageType
---

# Create businessScenario
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [businessScenario](../resources/businessscenario.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "solutionsroot_post_businessscenarios" } -->
[!INCLUDE [permissions-table](../includes/permissions/solutionsroot-post-businessscenarios-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/businessScenarios
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [businessScenario](../resources/businessscenario.md) object.

You can specify the following properties when you create a **businessScenario**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display name of the scenario. Required.|
|uniqueName|String|Unique name of the scenario. To avoid conflicts, the recommended value for the unique name is a reverse domain name format, owned by the author of the scenario. For example, a scenario authored by *Contoso.com* would have a unique name that starts with `com.contoso`. Required.|
|ownerAppIds|String collection|Identifiers of applications that are authorized to work with this scenario. The application that creates the scenario will be automatically added to the list. Optional.|

## Response

If successful, this method returns a `201 Created` response code and a [businessScenario](../resources/businessscenario.md) object in the response body.

## Examples

### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_businessscenario_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/businessScenarios
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.businessScenario",
  "displayName": "Contoso Order Tracking",
  "uniqueName": "com.contoso.apps.ordertracking"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-businessscenario-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-businessscenario-from--cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-businessscenario-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-businessscenario-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-businessscenario-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-businessscenario-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-businessscenario-from--powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-businessscenario-from--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.businessScenario"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.businessScenario",
  "id": "c5d514e6c6864911ac46c720affb6e4d",
  "displayName": "Contoso Order Tracking",
  "uniqueName": "com.contoso.apps.ordertracking",
  "ownerAppIds": [
      "44109254-4b2b-7a33-76ee-c890a167b295"
  ]
}
```
