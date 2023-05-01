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

Only a teacher in the class can make this call. When a **module** is in draft status, students will not see the **module**. When you call this API, the module appears in the student's classwork list.

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
  "sampleKeys": ["9f01e9b8-caf4-4132-b8d8-14de1bfc07a7","4656e4f1-0d8c-4bf8-8d4e-b1b551e9ef16"],
  "name": "educationmodule_publish_1"
}-->

```http
POST https://graph.microsoft.com/beta/education/classes/9f01e9b8-caf4-4132-b8d8-14de1bfc07a7/modules/4656e4f1-0d8c-4bf8-8d4e-b1b551e9ef16/publish
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#classes('9f01e9b8-caf4-4132-b8d8-14de1bfc07a7')/modules/$entity",
    "displayOrder": 2,
    "displayName": "2023-05-02T20_45_44_130Z",
    "description": "Description for 2023-05-02T20_45_44_130Z",
    "resourcesFolderUrl": null,
    "isPinned": false,
    "status": "published",
    "createdDateTime": "2023-05-01T20:45:44.4316388Z",
    "lastModifiedDateTime": "2023-05-01T21:34:05.5266523Z",
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
