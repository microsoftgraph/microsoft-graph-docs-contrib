---
title: "Create programControl"
description: "Create a new programControl object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create programControl
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [programControl](../resources/programcontrol.md) object.

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
POST /programControls
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [programControl](../resources/programcontrol.md) object.

The following table shows the properties that are required when you create the [programControl](../resources/programcontrol.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|controlId|String|**TODO: Add Description**|
|programId|String|**TODO: Add Description**|
|controlTypeId|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|status|String|**TODO: Add Description**|
|owner|[userIdentity](../resources/useridentity.md)|**TODO: Add Description**|
|resource|[programResource](../resources/programresource.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [programControl](../resources/programcontrol.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_programcontrol_from_programcontrols"
}
-->
``` http
POST https://graph.microsoft.com/beta/programControls
Content-Type: application/json
Content-length: 337

{
  "@odata.type": "#microsoft.graph.programControl",
  "controlId": "String",
  "programId": "String",
  "controlTypeId": "String",
  "displayName": "String",
  "status": "String",
  "owner": {
    "@odata.type": "microsoft.graph.userIdentity"
  },
  "resource": {
    "@odata.type": "microsoft.graph.programResource"
  }
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.programControl"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.programControl",
  "id": "f242619e-619e-f242-9e61-42f29e6142f2",
  "controlId": "String",
  "programId": "String",
  "controlTypeId": "String",
  "displayName": "String",
  "status": "String",
  "owner": {
    "@odata.type": "microsoft.graph.userIdentity"
  },
  "resource": {
    "@odata.type": "microsoft.graph.programResource"
  },
  "createdDateTime": "String (timestamp)"
}
```

