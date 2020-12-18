---
title: "Get programControl"
description: "Read the properties and relationships of a programControl object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get programControl
Namespace: microsoft.graph

Read the properties and relationships of a [programControl](../resources/programcontrol.md) object.

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
GET /programControls/{programControlsId}
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [programControl](../resources/programcontrol.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_programcontrol"
}
-->
``` http
GET https://graph.microsoft.com/beta/programControls/{programControlsId}
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
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
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
}
```

