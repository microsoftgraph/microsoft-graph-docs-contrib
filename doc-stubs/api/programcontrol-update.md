---
title: "Update programControl"
description: "Update the properties of a programControl object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update programControl
Namespace: microsoft.graph

Update the properties of a [programControl](../resources/programcontrol.md) object.

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
PATCH /programControls/{programControlsId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [programControl](../resources/programcontrol.md) object.

The following table shows the properties that are required when you update the [programControl](../resources/programcontrol.md).

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

If successful, this method returns a `200 OK` response code and an updated [programControl](../resources/programcontrol.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_programcontrol"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/programControls/{programControlsId}
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
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.programControl",
  "id": "2780d79b-d79b-2780-9bd7-80279bd78027",
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

