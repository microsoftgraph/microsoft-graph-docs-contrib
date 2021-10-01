---
title: "Create externalGroupMember"
description: "Create a new externalGroupMember object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create externalGroupMember
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new externalGroupMember object.

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
POST /external/connections/{externalConnectionId}/groups/{externalGroupId}/members
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [externalGroupMember](../resources/externalgroupmember.md) object.

The following table shows the properties that are required when you create the [externalGroupMember](../resources/externalgroupmember.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|identitySource|identitySourceType|**TODO: Add Description**. The possible values are: `azureActiveDirectory`, `external`.|
|type|externalGroupMemberType|**TODO: Add Description**. The possible values are: `user`, `group`.|



## Response

If successful, this method returns a `201 Created` response code and an [externalGroupMember](../resources/externalgroupmember.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_externalgroupmember_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/external/connections/{externalConnectionId}/groups/{externalGroupId}/members
Content-Type: application/json
Content-length: 113

{
  "@odata.type": "#microsoft.graph.externalGroupMember",
  "identitySource": "String",
  "type": "String"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.externalGroupMember"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.externalGroupMember",
  "id": "3f67467d-467d-3f67-7d46-673f7d46673f",
  "identitySource": "String",
  "type": "String"
}
```

