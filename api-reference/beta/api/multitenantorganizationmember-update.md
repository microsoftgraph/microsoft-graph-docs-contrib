---
title: "Update multiTenantOrganizationMember"
description: "Update the properties of a multiTenantOrganizationMember object."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Update multiTenantOrganizationMember
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [multiTenantOrganizationMember](../resources/multitenantorganizationmember.md) object.

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
PATCH /tenantRelationships/multiTenantOrganization/myTenant
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
|tenantId|String|**TODO: Add Description** Required.|
|displayName|String|**TODO: Add Description** Optional.|
|addedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|joinedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|addedByTenantId|String|**TODO: Add Description** Optional.|
|role|multiTenantOrganizationMemberRole|**TODO: Add Description**. The possible values are: `owner`, `member`, `unknownFutureValue`. Optional.|
|state|multiTenantOrganizationMemberState|**TODO: Add Description**. The possible values are: `pending`, `active`, `removed`, `unknownFutureValue`. Optional.|
|transitionDetails|[Microsoft.DirectoryServices.multiTenantOrganizationMemberTransitionDetails](../resources/multitenantorganizationmembertransitiondetails.md)|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [multiTenantOrganizationMember](../resources/multitenantorganizationmember.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_multitenantorganizationmember"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/tenantRelationships/multiTenantOrganization/myTenant
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.multiTenantOrganizationMember",
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
  "@odata.type": "#microsoft.graph.multiTenantOrganizationMember",
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
```

