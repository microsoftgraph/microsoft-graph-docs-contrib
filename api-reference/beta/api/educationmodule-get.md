---
title: "Get educationModule"
description: "Get the properties and relationships of a module."
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: apiPageType
---

# Get educationModule

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the properties and relationships of a [module](../resources/educationModule.md). Only teachers, students, and applications with application permissions can perform this operation.

Students can only see publiched modules; teachers and applications with application permissions can see all modules in a class.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | EduCurricula.Read, EduCurricula.ReadWrite |
|Delegated (personal Microsoft account) |  Not supported.  |
|Application | EduCurricula.Read.All, EduCurricula.ReadWrite.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /education/classes/{id}/modules/{id}
```

## Optional query parameters
This method supports the  `$select` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body
Don't supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and an [educationModule](../resources/educationModule.md) object in the response body.

## Example
### Request
The following is an example of the request.

<!-- {
  "blockType": "request", 
  "sampleKeys":["37d99af7-cfc5-4e3b-8566-f7d40e4a2070","ba8e4215-4fb2-4dba-abe7-a8f2585177d3"],
  "name": "get_educationModule"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules/ba8e4215-4fb2-4dba-abe7-a8f2585177d3
```

### Response
The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationModule"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/modules/$entity",
    "displayName": "2023-05-05T22_28_20_564Z",
    "description": "Description for 2023-05-05T22_28_20_564Z",
    "resourcesFolderUrl": null,
    "isPinned": false,
    "status": "draft",
    "createdDateTime": "2023-06-21T17:25:44.1277744Z",
    "lastModifiedDateTime": "2023-06-21T17:25:44.1494968Z",
    "id": "ba8e4215-4fb2-4dba-abe7-a8f2585177d3",
    "createdBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "4aa81579-714a-4f46-8a05-605558455fa1",
            "displayName": null
        }
    },
    "lastModifiedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "4aa81579-714a-4f46-8a05-605558455fa1",
            "displayName": null
        }
    }
}
```
