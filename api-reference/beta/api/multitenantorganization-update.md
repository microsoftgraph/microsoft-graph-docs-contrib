---
title: "Update multiTenantOrganization"
description: "Update the properties of a multiTenantOrganization object."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Update multiTenantOrganization
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [multiTenantOrganization](../resources/multitenantorganization.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|MultiTenantOrganization.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|MultiTenantOrganization.ReadWrite.All|

The signed-in user must also be assigned the following minimum [directory role](/azure/active-directory/roles/permissions-reference):

* Security Administrator

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /tenantRelationships/multiTenantOrganization
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display name of the multi-tenant organization. Optional.|
|description|String|Description of the multi-tenant organization. Optional.|



## Response

If successful, this method returns a `204 No Content` response code.

## Examples

The following example updates the description and display name for a multi-tenant organization.

### Request

<!-- {
  "blockType": "request",
  "name": "update_multitenantorganization"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/tenantRelationships/multiTenantOrganization
Content-Type: application/json

{
  "displayName": "Contoso organization",
  "description": "Multi-tenant organization between Contoso and Fabrikam"
}
```


### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

