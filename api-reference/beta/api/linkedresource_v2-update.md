---
title: "Update linkedResource_v2"
description: "Update the properties of a linkedResource_v2 object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update linkedResource_v2
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [linkedResource_v2](../resources/linkedresource_v2.md) object.

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
PATCH /user/tasks/lists/{baseTaskListId}/tasks/{baseTaskId}/linkedResources/{linkedResource_v2Id}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|webUrl|String|**TODO: Add Description** Optional.|
|applicationName|String|**TODO: Add Description** Optional.|
|displayName|String|**TODO: Add Description** Optional.|
|externalId|String|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [linkedResource_v2](../resources/linkedresource_v2.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_linkedresource_v2"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/user/tasks/lists/{baseTaskListId}/tasks/{baseTaskId}/linkedResources/{linkedResource_v2Id}
Content-Type: application/json
Content-length: 169

{
  "@odata.type": "#microsoft.graph.linkedResource_v2",
  "webUrl": "String",
  "applicationName": "String",
  "displayName": "String",
  "externalId": "String"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.linkedResource_v2",
  "webUrl": "String",
  "applicationName": "String",
  "displayName": "String",
  "externalId": "String",
  "id": "2a1a29cc-29cc-2a1a-cc29-1a2acc291a2a"
}
```

