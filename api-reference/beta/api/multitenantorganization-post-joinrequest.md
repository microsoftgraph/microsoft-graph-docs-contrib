---
title: "Create multiTenantOrganizationJoinRequestRecord"
description: "Create a new multiTenantOrganizationJoinRequestRecord object."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Create multiTenantOrganizationJoinRequestRecord
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [multiTenantOrganizationJoinRequestRecord](../resources/multitenantorganizationjoinrequestrecord.md) object.

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
POST ** Collection URI for Microsoft.DirectoryServices.multiTenantOrganizationJoinRequestRecord not found
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [multiTenantOrganizationJoinRequestRecord](../resources/multitenantorganizationjoinrequestrecord.md) object.

You can specify the following properties when creating a **multiTenantOrganizationJoinRequestRecord**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|addedByTenantId|String|**TODO: Add Description** Optional.|
|memberState|multiTenantOrganizationMemberState|**TODO: Add Description**. The possible values are: `pending`, `active`, `removed`, `unknownFutureValue`. Optional.|
|role|multiTenantOrganizationMemberRole|**TODO: Add Description**. The possible values are: `owner`, `member`, `unknownFutureValue`. Optional.|
|transitionDetails|[Microsoft.DirectoryServices.multiTenantOrganizationJoinRequestTransitionDetails](../resources/multitenantorganizationjoinrequesttransitiondetails.md)|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [multiTenantOrganizationJoinRequestRecord](../resources/multitenantorganizationjoinrequestrecord.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_multitenantorganizationjoinrequestrecord_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta** Collection URI for Microsoft.DirectoryServices.multiTenantOrganizationJoinRequestRecord not found
Content-Type: application/json

{
  "@odata.type": "#Microsoft.DirectoryServices.multiTenantOrganizationJoinRequestRecord",
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
  "truncated": true,
  "@odata.type": "Microsoft.DirectoryServices.multiTenantOrganizationJoinRequestRecord"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#Microsoft.DirectoryServices.multiTenantOrganizationJoinRequestRecord",
  "addedByTenantId": "String",
  "memberState": "String",
  "role": "String",
  "transitionDetails": {
    "@odata.type": "microsoft.graph.multiTenantOrganizationJoinRequestTransitionDetails"
  }
}
```

