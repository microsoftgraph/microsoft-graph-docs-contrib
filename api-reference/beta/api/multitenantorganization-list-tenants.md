---
title: "List multiTenantOrganizationMembers"
description: "Get a list of the multiTenantOrganizationMember objects and their properties."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# List multiTenantOrganizationMembers
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [multiTenantOrganizationMember](../resources/multitenantorganizationmember.md) objects and their properties.

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
GET /tenantRelationships/multiTenantOrganization/tenants
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [multiTenantOrganizationMember](../resources/multitenantorganizationmember.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_multitenantorganizationmember"
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationships/multiTenantOrganization/tenants
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(Microsoft.DirectoryServices.multiTenantOrganizationMember)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#Microsoft.DirectoryServices.multiTenantOrganizationMember",
      "tenantId": "dd35cd3e-161e-5afd-d9d1-b2c106c16c3e",
      "displayName": "String",
      "addedDateTime": "String (timestamp)",
      "joinedDateTime": "String (timestamp)",
      "addedByTenantId": "String",
      "role": "String",
      "state": "String",
      "transitionDetails": {
        "@odata.type": "microsoft.graph.multiTenantOrganizationMemberTransitionDetails"
      }
    }
  ]
}
```

