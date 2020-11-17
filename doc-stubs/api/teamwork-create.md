---
title: "Create teamwork"
description: "Create a new teamwork object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create teamwork
Namespace: microsoft.graph

Create a new [teamwork](../resources/teamwork.md) object.

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
POST ** Collection URI for Microsoft.Teams.GraphSvc.teamwork not found
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [teamwork](../resources/teamwork.md) object.

The following table shows the properties that are required when you create the [teamwork](../resources/teamwork.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [teamwork](../resources/teamwork.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_teamwork_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta** Collection URI for Microsoft.Teams.GraphSvc.teamwork not found
Content-Type: application/json
Content-length: 59

{
  "@odata.type": "#Microsoft.Teams.GraphSvc.teamwork"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.Teams.GraphSvc.teamwork"
}
-->
``` http
HTTP/1.1 201 Created

Content-Type: application/json
{
  "@odata.type": "#Microsoft.Teams.GraphSvc.teamwork",
  "id": "a89f77a9-77a9-a89f-a977-9fa8a9779fa8"
}
```

