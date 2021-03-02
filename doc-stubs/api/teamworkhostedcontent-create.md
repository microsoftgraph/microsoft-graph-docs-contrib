---
title: "Create teamworkHostedContent"
description: "Create a new teamworkHostedContent object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create teamworkHostedContent
Namespace: microsoft.graph



Create a new [teamworkHostedContent](../resources/teamworkhostedcontent.md) object.

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
POST ** Collection URI for Microsoft.Teams.GraphSvc.teamworkHostedContent not found
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [teamworkHostedContent](../resources/teamworkhostedcontent.md) object.

The following table shows the properties that are required when you create the [teamworkHostedContent](../resources/teamworkhostedcontent.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|contentBytes|Binary|**TODO: Add Description**|
|contentType|String|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [teamworkHostedContent](../resources/teamworkhostedcontent.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_teamworkhostedcontent_from_"
}
-->
``` http
POST https://graph.microsoft.com/v1.0** Collection URI for Microsoft.Teams.GraphSvc.teamworkHostedContent not found
Content-Type: application/json
Content-length: 129

{
  "@odata.type": "#Microsoft.Teams.GraphSvc.teamworkHostedContent",
  "contentBytes": "Binary",
  "contentType": "String"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.Teams.GraphSvc.teamworkHostedContent"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#Microsoft.Teams.GraphSvc.teamworkHostedContent",
  "id": "87b4a69d-a69d-87b4-9da6-b4879da6b487",
  "contentBytes": "Binary",
  "contentType": "String"
}
```

