---
title: "Create linkedResource_v2"
description: "Create a new linkedResource_v2 object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create linkedResource_v2
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new linkedResource_v2 object.

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
POST /users/{usersId}/tasks/lists/{baseTaskListId}/tasks/{baseTaskId}/linkedResources
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [linkedResource_v2](../resources/linkedresource_v2.md) object.

You can specify the following properties when creating a **linkedResource_v2**.

|Property|Type|Description|
|:---|:---|:---|
|webUrl|String|**TODO: Add Description** Optional.|
|applicationName|String|**TODO: Add Description** Optional.|
|displayName|String|**TODO: Add Description** Optional.|
|externalId|String|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [linkedResource_v2](../resources/linkedresource_v2.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_linkedresource_v2_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/users/{usersId}/tasks/lists/{baseTaskListId}/tasks/{baseTaskId}/linkedResources
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
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.linkedResource_v2"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.linkedResource_v2",
  "id": "ac138c53-290f-b8ea-af2e-aae5c444de9d",
  "webUrl": "String",
  "applicationName": "String",
  "displayName": "String",
  "externalId": "String"
}
```

