---
title: "Update multiTenantOrganizationJoinRequestRecord"
description: "Update the properties of a multiTenantOrganizationJoinRequestRecord object."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Update multiTenantOrganizationJoinRequestRecord
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [multiTenantOrganizationJoinRequestRecord](../resources/multitenantorganizationjoinrequestrecord.md) object.

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
PATCH /tenantRelationships/multiTenantOrganization/joinRequest
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
|addedByTenantId|String|**TODO: Add Description** Optional.|
|memberState|multiTenantOrganizationMemberState|**TODO: Add Description**. The possible values are: `pending`, `active`, `removed`, `unknownFutureValue`. Optional.|
|role|multiTenantOrganizationMemberRole|**TODO: Add Description**. The possible values are: `owner`, `member`, `unknownFutureValue`. Optional.|
|transitionDetails|[multiTenantOrganizationJoinRequestTransitionDetails](../resources/multitenantorganizationjoinrequesttransitiondetails.md)|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_multitenantorganizationjoinrequestrecord"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/tenantRelationships/multiTenantOrganization/joinRequest
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.multiTenantOrganizationJoinRequestRecord",
  "addedByTenantId": "String",
  "memberState": "String",
  "role": "String",
  "transitionDetails": {
    "@odata.type": "microsoft.graph.multiTenantOrganizationJoinRequestTransitionDetails"
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
HTTP/1.1 204 No Content
```

