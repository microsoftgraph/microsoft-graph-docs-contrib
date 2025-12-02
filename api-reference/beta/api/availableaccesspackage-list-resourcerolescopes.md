---
title: "List resourceRoleScopes"
description: "Retrieve the resource role scopes for an available access package to provide resource details to end users."
ms.localizationpriority: medium
author: "myra-ramdenbourg"
ms.subservice: "entra-id-governance"
doc_type: "apiPageType"
ms.date: 09/18/2025
---

# List resourceRoleScopes

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [accessPackageResourceRoleScope](../resources/accesspackageresourcerolescope.md) objects associated with an [availableAccessPackage](../resources/availableaccesspackage.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "availableaccesspackage_list_resourcerolescopes" } -->
[!INCLUDE [permissions-table](../includes/permissions/availableaccesspackage-list-resourcerolescopes-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /identityGovernance/entitlementManagement/availableAccessPackages/{availableAccessPackage-id}/resourceRoleScopes
```

## Optional query parameters

This method supports the `$select`, `$expand`, `$filter`, and `$top` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [accessPackageResourceRoleScope](../resources/accesspackageresourcerolescope.md) objects in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "list_availableaccesspackage_resourcerolescopes"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/availableAccessPackages/360fa7de-90be-48dc-a2ce-fc40094a93dd/resourceRoleScopes
```


### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.accessPackageResourceRoleScope)"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/entitlementManagement/availableAccessPackages('360fa7de-90be-48dc-a2ce-fc40094a93dd')/resourceRoleScopes",
  "value": [
    {
      "id": "c8f7be1e-3e35-4c80-b4f1-7c9ec23bbf77_9b5e1b3d-e4c2-4b8a-8f5b-2a3c9d4e5f6b",
      "createdBy": "admin@contoso.com",
      "createdDateTime": "2024-01-15T09:30:00Z",
      "modifiedBy": "admin@contoso.com", 
      "modifiedDateTime": "2024-01-15T09:30:00Z"
    }
  ]
}
```
