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

Create a new module.

Only teachers in a class can create a module. Modules start in the Draft state, which means that students will not see the modules until publication.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  TBD  |
|Delegated (personal Microsoft account) |  Not supported.  |
|Application | TBD |

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
POST https://graph.microsoft.com/beta/education/classes/9f01e9b8-caf4-4132-b8d8-14de1bfc07a7/modules
Content-type: application/json

{ 
  "displayName":"2023-05-02T20_45_44_130Z",
  "description": "Description for 2023-05-02T20_45_44_130Z"
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('1e40c4aa-98b0-400a-8570-161e8dcfa631')/modules/$entity",
    "displayOrder": 1,
    "displayName": "2023-05-02T20_45_44_130Z",
    "description": "Description for 2023-05-02T20_45_44_130Z",
    "resourcesFolderUrl": null,
    "isPinned": false,
    "status": "draft",
    "createdDateTime": "2023-05-01T20:45:44.4316388Z",
    "lastModifiedDateTime": "2023-05-01T20:45:44.4474522Z",
    "id": "4656e4f1-0d8c-4bf8-8d4e-b1b551e9ef16",
    "resourcesFolder": null,
    "createdBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
            "displayName": null
        }
    },
    "lastModifiedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
            "displayName": null
        }
    }
}
```
