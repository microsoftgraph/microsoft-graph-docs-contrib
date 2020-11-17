---
title: "Update teamsApps"
description: "Update the properties of a teamsApps object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update teamsApps
Namespace: microsoft.graph

Update the properties of a teamsApps object.

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
PATCH /appCatalogs/teamsApps
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [teamsApp](../resources/teamsapp.md) object.

The following table shows the properties that are required when you create the [teamsApp](../resources/teamsapp.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|externalId|String|**TODO: Add Description**|
|name|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|distributionMethod|teamsAppDistributionMethod|**TODO: Add Description**. Possible values are: `store`, `organization`, `sideloaded`, `unknownFutureValue`.|



## Response

If successful, this method returns a `200 OK` response code and an updated [teamsApp](../resources/teamsapp.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_teamsapps"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/appCatalogs/teamsApps
Content-Type: application/json
Content-length: 161

{
  "@odata.type": "#microsoft.graph.teamsApp",
  "externalId": "String",
  "name": "String",
  "displayName": "String",
  "distributionMethod": "String"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK

Content-Type: application/json
{
  "@odata.type": "#microsoft.graph.teamsApp",
  "id": "73532314-2314-7353-1423-537314235373",
  "externalId": "String",
  "name": "String",
  "displayName": "String",
  "distributionMethod": "String"
}
```

