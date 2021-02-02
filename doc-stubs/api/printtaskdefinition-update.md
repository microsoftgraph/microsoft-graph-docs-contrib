---
title: "Update printTaskDefinition"
description: "Update the properties of a printTaskDefinition object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update printTaskDefinition
Namespace: microsoft.graph

Update the properties of a [printTaskDefinition](../resources/printtaskdefinition.md) object.

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
PATCH /print/taskDefinitions/{printTaskDefinitionId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [printTaskDefinition](../resources/printtaskdefinition.md) object.

The following table shows the properties that are required when you update the [printTaskDefinition](../resources/printtaskdefinition.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|createdBy|[appIdentity](../resources/appidentity.md)|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [printTaskDefinition](../resources/printtaskdefinition.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_printtaskdefinition"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/print/taskDefinitions/{printTaskDefinitionId}
Content-Type: application/json
Content-length: 163

{
  "@odata.type": "#microsoft.graph.printTaskDefinition",
  "displayName": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.appIdentity"
  }
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
  "@odata.type": "#microsoft.graph.printTaskDefinition",
  "id": "94aff05b-f05b-94af-5bf0-af945bf0af94",
  "displayName": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.appIdentity"
  }
}
```

