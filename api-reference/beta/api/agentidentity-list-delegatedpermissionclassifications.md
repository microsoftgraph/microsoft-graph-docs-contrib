---
title: "List delegatedPermissionClassification objects"
description: "Retrieve a list of classifications given to delegated permissions exposed by an API's agent identity."
author: "zallison22"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
---

# List delegatedPermissionClassification objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the delegatedPermissionClassification objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentidentity-list-delegatedpermissionclassifications-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentidentity-list-delegatedpermissionclassifications-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /servicePrincipals/{id}/Microsoft.Graph.AgentIdentity/delegatedPermissionClassifications
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [delegatedPermissionClassification](../resources/delegatedpermissionclassification.md) objects in the response body.

## Examples

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "serviceprincipal_get_delegatedpermissionclassification"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/servicePrincipals/{id}/Microsoft.Graph.AgentIdentity/delegatedPermissionClassifications
```


### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.delegatedPermissionClassification",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
        "id": "2G3-4TG6YU2J54hjnaRoPQE",
        "permissionId": "e1fe6dd8-ba31-4d61-89e7-88639da4683d",
        "permissionName": "User.Read",
        "classification": "low"
    }
  ]
}
```

