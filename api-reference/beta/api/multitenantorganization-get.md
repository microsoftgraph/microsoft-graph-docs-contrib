---
title: "Get multiTenantOrganization"
description: "Read the properties and relationships of a multiTenantOrganization object."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Get multiTenantOrganization
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [multiTenantOrganization](../resources/multitenantorganization.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|MultiTenantOrganization.ReadBasic.All, MultiTenantOrganization.Read.All, MultiTenantOrganization.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|MultiTenantOrganization.ReadBasic.All, MultiTenantOrganization.Read.All, MultiTenantOrganization.ReadWrite.All|

MultiTenantOrganization.ReadBasic.All permission can only read the `displayName` property.

The signed-in user must also be assigned one of the following minimum [directory roles](/azure/active-directory/roles/permissions-reference):

* Security Reader
* Global Reader

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /tenantRelationships/multiTenantOrganization
```

## Optional query parameters
This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [multiTenantOrganization](../resources/multitenantorganization.md) object in the response body.

## Examples

The following example gets multi-tenant organization information about the current tenant.

### Request

<!-- {
  "blockType": "request",
  "name": "get_multitenantorganization"
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationships/multiTenantOrganization
```


### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.multiTenantOrganization"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#tenantRelationships/multiTenantOrganization/$entity",
    "id": "6d8b39e5-039a-4034-bf3a-e0b4f8cd60b6",
    "createdDateTime": "2023-05-26T22:05:23Z",
    "displayName": "Contoso organization",
    "description": "Multi-tenant organization between Contoso and Fabrikam"
}
```

