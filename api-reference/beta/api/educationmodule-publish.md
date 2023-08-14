---
title: "educationModule: publish"
description: "Change the state of an educationModule from its original draft status to the published status."
ms.localizationpriority: medium
author: "cristobal-buenrostro"
ms.prod: "education"
doc_type: apiPageType
---

# educationModule: publish

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Change the state of an [educationModule](../resources/educationmodule.md) from its original `draft` status to the `published` status.

Only teachers in the class can perform this operation. When a module is in draft status, students will not see the module. When you call this API, the module appears in the student's classwork list.

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
POST /education/classes/{id}/modules/{id}/publish

```
## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body
Don't supply a request body for this method.

## Response
If successful, this method returns a `200 Ok` response code and an [educationModule](../resources/educationmodule.md) object in the response body.

## Example
The following example shows how to call this API.

### Request
The following is an example of a request.

<!-- {
  "blockType": "request",
  "sampleKeys": ["37d99af7-cfc5-4e3b-8566-f7d40e4a2070","ba8e4215-4fb2-4dba-abe7-a8f2585177d3"],
  "name": "educationmodule_publish_1"
}-->

```http
POST https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules/ba8e4215-4fb2-4dba-abe7-a8f2585177d3/publish
```

### Response
The following is an example of a response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationModule"
} -->

```http
HTTP/1.1 200 Ok

{
    "@odata.context": "https://graph.microsoft.com/$metadata#educationModule",
    "@odata.type": "#microsoft.graph.educationModule",
    "displayName": "Module 4",
    "description": "Description for Module 4",
    "resourcesFolderUrl": null,
    "isPinned": true,
    "status": "published",
    "createdDateTime": "2023-06-21T17:25:44.1277744Z",
    "lastModifiedDateTime": "2023-06-21T17:43:14.7269771Z",
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
