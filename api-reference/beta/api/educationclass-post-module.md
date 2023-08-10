---
title: "Create educationModule"
description: "Create a draft classwork module"
ms.localizationpriority: medium
author: "cristobal-buenrostro"
ms.prod: "education"
doc_type: apiPageType
---

# Create educationModule

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [module](../resources/educationmodule.md) in a [class](../resources/educationclass.md).

Only teachers in a class can create a module. Modules start in the Draft state, which means that students will not see the modules until publication.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  EduCurricula.ReadWrite  |
|Delegated (personal Microsoft account) |  Not supported.  |
|Application | Not supported. |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /education/classes/{id}/modules
```

## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type   | application/json. Required. |

## Request body
In the request body, supply a JSON representation of an [educationModule](../resources/educationmodule.md) object.

## Response
If successful, this method returns a `201 OK` response code and an [educationModule](../resources/educationmodule.md) object in the request body.

## Example

### Request
The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "create_educationmodule_from_educationclass"
}-->
```http
POST https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules
Content-type: application/json

{ 
  "displayName":"Module 2",
  "description": "Description for Module 2"
}
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
HTTP/1.1 201 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/modules/$entity",
    "displayName": "Module 2",
    "description": "Description for Module 2",
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
