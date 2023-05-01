---
title: "Update multiTenantOrganizationIdentitySyncPolicyTemplate"
description: "Update the properties of a multiTenantOrganizationIdentitySyncPolicyTemplate object."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Update multiTenantOrganizationIdentitySyncPolicyTemplate
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [multiTenantOrganizationIdentitySyncPolicyTemplate](../resources/multitenantorganizationidentitysyncpolicytemplate.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /policies/crossTenantAccessPolicy/templates/multiTenantOrganizationIdentitySynchronization
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


**TODO: Remove properties that don't apply**

|Property|Type|Description|
|:---|:---|:---|
|userSyncInbound|[Microsoft.DirectoryServices.crossTenantUserSyncInbound](../resources/crosstenantusersyncinbound.md)|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [multiTenantOrganizationIdentitySyncPolicyTemplate](../resources/multitenantorganizationidentitysyncpolicytemplate.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_multitenantorganizationidentitysyncpolicytemplate"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/policies/crossTenantAccessPolicy/templates/multiTenantOrganizationIdentitySynchronization
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.multiTenantOrganizationIdentitySyncPolicyTemplate",
  "userSyncInbound": {
    "@odata.type": "microsoft.graph.crossTenantUserSyncInbound"
  }
}
```


### Response
The following is an example of the response
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
  "@odata.type": "#microsoft.graph.multiTenantOrganizationIdentitySyncPolicyTemplate",
  "userSyncInbound": {
    "@odata.type": "microsoft.graph.crossTenantUserSyncInbound"
  }
}
```

