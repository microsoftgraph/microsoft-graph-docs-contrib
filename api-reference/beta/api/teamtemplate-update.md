---
title: "Update teamTemplate"
description: "Update the properties of a teamTemplate object."
author: "Charlieforce"
ms.localizationpriority: medium
ms.prod: "Teamwork"
doc_type: apiPageType
---

# Update teamTemplate
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [teamTemplate](../resources/teamtemplate.md) object.

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
PATCH /teamwork/teamTemplates/{teamTemplateId}
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



## Response

If successful, this method returns a `200 OK` response code and an updated [teamTemplate](../resources/teamtemplate.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_teamtemplate"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/teamwork/teamTemplates/{teamTemplateId}
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
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.teamTemplate",
  "id": "7b5839fa-bc81-e96c-4f2a-ebbeeec981d5"
}
```

