---
title: "Update agentIdentityBlueprintPrincipal"
description: "Update the properties of an agentIdentityBlueprintPrincipal object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: apiPageType
---

# Update agentIdentityBlueprintPrincipal

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an agentIdentityBlueprintPrincipal object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentidentityblueprintprincipal-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentidentityblueprintprincipal-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /servicePrincipals/{id}/graph.agentIdentityBlueprintPrincipal
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

Provide the updated property values for the agent identity blueprint principal.

## Response

If successful, this method returns a `200 OK` response code and an updated [agentIdentityBlueprintPrincipal](../resources/agentidentityblueprintprincipal.md) object in the response body.

## Example

### Request

The following example shows a request to disable an agent identity blueprint principal.
<!-- {
  "blockType": "request",
  "name": "update_agentidentityblueprintprincipal"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/servicePrincipals/{id}/graph.agentIdentityBlueprintPrincipal
Content-Type: application/json

{
  "accountEnabled": false,
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.agentIdentityBlueprintPrincipal",
  "id": "4b533f8a-90fa-b3df-a331-c48ebdd7a121",
  "accountEnabled": false,
}
```

