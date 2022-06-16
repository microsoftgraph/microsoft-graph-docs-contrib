---
title: "Get teamTemplateDefinition"
description: "Read the properties and relationships of a teamTemplateDefinition object."
author: "Charlieforce"
ms.localizationpriority: medium
ms.prod: "teamwork"
doc_type: apiPageType
---

# Get teamTemplateDefinition
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [teamTemplateDefinition](../resources/teamtemplatedefinition.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Team.Create|
|Delegated (personal Microsoft account)|Not supported|
|Application|Team.Create|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /teamwork/teamTemplates/{teamTemplateId}/definitions/{teamTemplateDefinitionID}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [teamTemplateDefinition](../resources/teamtemplatedefinition.md) object in the response body.

## Examples

### Request
The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "get_teamtemplatedefinition"
}
-->
``` http
GET https://graph.microsoft.com/beta/teamwork/teamTemplates/com.microsoft.teams.template.ManageAProject/definitions/Y29tLm1pY3Jvc29mdC50ZWFtcy50ZW1wbGF0ZS5NYW5hZ2VBUHJvamVjdCMjUHVibGljIyNlbi1VUw==
```

### Response
The following is an example of the response

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.teamtemplatedefinition"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "id": "Y29tLm1pY3Jvc29mdC50ZWFtcy50ZW1wbGF0ZS5NYW5hZ2VBUHJvamVjdCMjUHVibGljIyNlbi1VUw==",
    "parentTemplateId": "com.microsoft.teams.template.ManageAProject",
    "displayName": "Manage a Project",
    "languageTag": "en-US",
    "audience": "public",
    "description": "Manage tasks, share documents, conduct project meetings and document risks and decisions with this template for general project management.",
    "shortDescription": "Coordinate your project.",
    "lastModifiedDateTime": "0001-01-01T00:00:00Z",
    "publisherName": "Microsoft",
    "categories": [],
    "lastModifiedBy": null
  }
}
```
