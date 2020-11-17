---
title: "Create apps"
description: "Create a new teamsCatalogApp object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create apps
Namespace: microsoft.graph

Create a new teamsCatalogApp object.

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
POST /teams/{teamsId}/apps
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [teamsCatalogApp](../resources/teamscatalogapp.md) object.

The following table shows the properties that are required when you create the [teamsCatalogApp](../resources/teamscatalogapp.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|externalId|String|**TODO: Add Description**|
|name|String|**TODO: Add Description**|
|distributionMethod|teamsAppDistributionMethod|**TODO: Add Description**. Possible values are: `store`, `organization`, `sideloaded`, `unknownFutureValue`.|



## Response

If successful, this method returns a `201 Created` response code and a [teamsCatalogApp](../resources/teamscatalogapp.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_teamscatalogapp_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/teams/{teamsId}/apps
Content-Type: application/json
Content-length: 149

{
  "@odata.type": "#Microsoft.Teams.GraphSvc.teamsCatalogApp",
  "externalId": "String",
  "name": "String",
  "distributionMethod": "String"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.Teams.GraphSvc.teamsCatalogApp"
}
-->
``` http
HTTP/1.1 201 Created

Content-Type: application/json
{
  "@odata.type": "#Microsoft.Teams.GraphSvc.teamsCatalogApp",
  "id": "7a8b0f9c-0f9c-7a8b-9c0f-8b7a9c0f8b7a",
  "externalId": "String",
  "name": "String",
  "distributionMethod": "String"
}
```

