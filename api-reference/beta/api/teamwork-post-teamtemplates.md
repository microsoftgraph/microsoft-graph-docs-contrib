---
title: "Create teamTemplate"
description: "Create a new teamTemplate object."
author: "Charlieforce"
ms.localizationpriority: medium
ms.prod: "Teamwork"
doc_type: apiPageType
---

# Create teamTemplate
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [teamTemplate](../resources/teamtemplate.md) object.

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
POST /teamwork/teamTemplates
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [teamTemplate](../resources/teamtemplate.md) object.

You can specify the following properties when creating a **teamTemplate**.

|Property|Type|Description|
|:---|:---|:---|



## Response

If successful, this method returns a `201 Created` response code and a [teamTemplate](../resources/teamtemplate.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_teamtemplate_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/teamwork/teamTemplates
Content-Type: application/json
Content-length: 54

{
  "@odata.type": "#microsoft.graph.teamTemplate"
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.teamTemplate"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.teamTemplate",
  "id": "7b5839fa-bc81-e96c-4f2a-ebbeeec981d5"
}
```

