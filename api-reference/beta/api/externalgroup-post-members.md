---
title: "Create externalGroupMember"
description: "Create a new externalGroupMember object."
author: "snlraju-msft"
localization_priority: Normal
ms.prod: "search"
doc_type: apiPageType
---

# Create externalGroupMember

Namespace: microsoft.graph

Create a new externalGroupMember object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
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
POST /connections/{connectionsId}/groups/{externalGroupId}/members
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
|id|String|**TODO: Add Description**|
|type|externalGroupMemberType|**TODO: Add Description**. Possible values are: `user`, `group`.|
|identitySource|identitySourceType|**TODO: Add Description**. Possible values are: `azureActiveDirectory`, `external`.|

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
POST https://graph.microsoft.com/beta/connections/{connectionsId}/groups/{externalGroupId}/members
Content-Type: application/json
Content-length: 127

{
  "@odata.type": "#microsoft.substrateConnectors.externalGroupMember",
  "type": "String",
  "identitySource": "String"
}
```

### Response

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.substrateConnectors.externalGroupMember"
}
-->

``` http
HTTP/1.1 201 Created

Content-Type: application/json
{
  "@odata.type": "#microsoft.substrateConnectors.externalGroupMember",
  "id": "98fad45e-d45e-98fa-5ed4-fa985ed4fa98",
  "type": "String",
  "identitySource": "String"
}
```
