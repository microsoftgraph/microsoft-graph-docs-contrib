---
title: "Create multiTenantOrganizationIdentitySyncPolicyTemplate"
description: "Create a new multiTenantOrganizationIdentitySyncPolicyTemplate object."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Create multiTenantOrganizationIdentitySyncPolicyTemplate
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [multiTenantOrganizationIdentitySyncPolicyTemplate](../resources/multitenantorganizationidentitysyncpolicytemplate.md) object.

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
POST ** Collection URI for Microsoft.DirectoryServices.multiTenantOrganizationIdentitySyncPolicyTemplate not found
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [multiTenantOrganizationIdentitySyncPolicyTemplate](../resources/multitenantorganizationidentitysyncpolicytemplate.md) object.

You can specify the following properties when creating a **multiTenantOrganizationIdentitySyncPolicyTemplate**.

**TODO: Remove properties that don't apply**

|Property|Type|Description|
|:---|:---|:---|
|userSyncInbound|[Microsoft.DirectoryServices.crossTenantUserSyncInbound](../resources/crosstenantusersyncinbound.md)|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [multiTenantOrganizationIdentitySyncPolicyTemplate](../resources/multitenantorganizationidentitysyncpolicytemplate.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_multitenantorganizationidentitysyncpolicytemplate_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta** Collection URI for Microsoft.DirectoryServices.multiTenantOrganizationIdentitySyncPolicyTemplate not found
Content-Type: application/json

{
  "@odata.type": "#Microsoft.DirectoryServices.multiTenantOrganizationIdentitySyncPolicyTemplate",
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
  "truncated": true,
  "@odata.type": "Microsoft.DirectoryServices.multiTenantOrganizationIdentitySyncPolicyTemplate"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#Microsoft.DirectoryServices.multiTenantOrganizationIdentitySyncPolicyTemplate",
  "userSyncInbound": {
    "@odata.type": "microsoft.graph.crossTenantUserSyncInbound"
  }
}
```

