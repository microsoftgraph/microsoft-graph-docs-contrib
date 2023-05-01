---
title: "Add multiTenantOrganizationMember"
description: "Add myTenant by posting to the myTenant collection."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Add multiTenantOrganizationMember
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add myTenant by posting to the myTenant collection.

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
POST /tenantRelationships/multiTenantOrganization/myTenant/$ref
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [multiTenantOrganizationMember](../resources/multitenantorganizationmember.md) object.

You can specify the following properties when creating a **multiTenantOrganizationMember**.

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

If successful, this method returns a `204 No Content` response code and a [multiTenantOrganizationMember](../resources/multitenantorganizationmember.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_multitenantorganizationmember_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/tenantRelationships/multiTenantOrganization/myTenant/$ref
Content-Type: application/json

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
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.DirectoryServices.multiTenantOrganizationMember"
}
-->
``` http
HTTP/1.1 204 No Content
Content-Type: application/json

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
```

