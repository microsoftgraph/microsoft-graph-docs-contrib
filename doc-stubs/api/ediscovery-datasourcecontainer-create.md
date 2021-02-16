---
title: "Create dataSourceContainer"
description: "Create a new dataSourceContainer object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create dataSourceContainer
Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [dataSourceContainer](../resources/ediscovery-datasourcecontainer.md) object.

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
POST ** Collection URI for microsoft.graph.ediscovery.dataSourceContainer not found
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [dataSourceContainer](../resources/ediscovery-datasourcecontainer.md) object.

The following table shows the properties that are required when you create the [dataSourceContainer](../resources/ediscovery-datasourcecontainer.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/ediscovery-entity.md)|
|status|dataSourceContainerStatus|**TODO: Add Description**. Possible values are: `Active`, `Released`, `UnknownFutureValue`.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|releasedDateTime|DateTimeOffset|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [dataSourceContainer](../resources/ediscovery-datasourcecontainer.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_datasourcecontainer_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta** Collection URI for microsoft.graph.ediscovery.dataSourceContainer not found
Content-Type: application/json
Content-length: 168

{
  "@odata.type": "#microsoft.graph.ediscovery.dataSourceContainer",
  "status": "String",
  "releasedDateTime": "String (timestamp)",
  "displayName": "String"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.ediscovery.dataSourceContainer"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.ediscovery.dataSourceContainer",
  "id": "8476e6c9-e6c9-8476-c9e6-7684c9e67684",
  "status": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "releasedDateTime": "String (timestamp)",
  "displayName": "String",
  "createdDateTime": "String (timestamp)"
}
```

