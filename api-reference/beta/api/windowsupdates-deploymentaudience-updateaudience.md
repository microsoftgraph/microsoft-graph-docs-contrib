---
title: "deploymentAudience: updateAudience"
description: "Update the members and exclusions collections of a deploymentAudience."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.subservice: windows-autopatch
doc_type: apiPageType
ms.date: 09/16/2024
---

# deploymentAudience: updateAudience

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the **members** and **exclusions** relationships of a [deploymentAudience](../resources/windowsupdates-deploymentaudience.md).

Adding an [azureADDevice](../resources/windowsupdates-azureaddevice.md) to the **members** or **exclusions** collections of a deployment audience automatically creates a Microsoft Entra device object, if it doesn't already exist.

If the same [updatableAsset](../resources/windowsupdates-updatableasset.md) gets included in the **exclusions** and **members** collections of a **deploymentAudience**, the deployment doesn't apply to that asset.

If all **updatableAsset** objects are the same type, you can also use the method [updateAudienceById](windowsupdates-deploymentaudience-updateaudiencebyid.md) to update the **deploymentAudience**.

> [!NOTE]
> This API has a [known issue](https://developer.microsoft.com/en-us/graph/known-issues/?search=13634) related to deployments created via Intune.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "windowsupdates_deploymentaudience_updateaudience" } -->
[!INCLUDE [permissions-table](../includes/permissions/windowsupdates-deploymentaudience-updateaudience-permissions.md)]

[!INCLUDE [rbac-windows-updates-apis](../includes/rbac-for-apis/rbac-windows-updates-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /admin/windows/updates/deploymentAudiences/{deploymentAudienceId}/updateAudience
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|addMembers|[microsoft.graph.windowsUpdates.updatableAsset](../resources/windowsupdates-updatableasset.md) collection|List of [updatableAsset](../resources/windowsupdates-updatableasset.md) resources to add as members of the deployment audience.|
|removeMembers|[microsoft.graph.windowsUpdates.updatableAsset](../resources/windowsupdates-updatableasset.md) collection|List of updatable assets to remove as members of the deployment audience.|
|addExclusions|[microsoft.graph.windowsUpdates.updatableAsset](../resources/windowsupdates-updatableasset.md) collection|List of updatable assets to add as exclusions from the deployment audience.|
|removeExclusions|[microsoft.graph.windowsUpdates.updatableAsset](../resources/windowsupdates-updatableasset.md) collection|List of updatable assets to remove as exclusions from the deployment audience.|



## Response

If successful, this action returns a `202 Accepted` response code. It doesn't return anything in the response body.

## Examples

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "deploymentaudience_updateaudience"
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/windows/updates/deploymentAudiences/2d477566-6976-4c2d-97eb-d2acd1c2864e/updateAudience
Content-Type: application/json

{
  "addMembers": [
    {
      "@odata.type": "#microsoft.graph.windowsUpdates.azureADDevice",
      "id": "String (identifier)"
    }
  ],
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/deploymentaudience-updateaudience-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/deploymentaudience-updateaudience-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/deploymentaudience-updateaudience-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/deploymentaudience-updateaudience-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/deploymentaudience-updateaudience-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/deploymentaudience-updateaudience-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/deploymentaudience-updateaudience-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 202 Accepted
```
