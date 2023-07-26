---
title: "educationModule: setUpResourcesFolder"
description: "Create a SharePoint folder to upload files for a given educationModule."
ms.localizationpriority: medium
author: "cristobal-buenrostro"
ms.prod: "education"
doc_type: apiPageType
---

# educationModule: setUpResourcesFolder

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a SharePoint folder to upload files for a given [educationModule](../resources/educationmodule.md). Only teachers can perform this operation.

The teacher determines the resources to upload in the module's folder.

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
POST /education/classes/{classId}/modules/{{moduleId}}/setUpResourcesFolder
```

## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type   | application/json. Required. |

## Request body
In the request body, supply an empty JSON object `{}` for this method.

## Response
If successful, this method returns a `200 OK` response code and an [educationModule](../resources/educationmodule.md) object in the request body.

## Examples

### Request
The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "educationmodule_setupresourcesfolder"
}-->
```http
POST https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules/ba8e4215-4fb2-4dba-abe7-a8f2585177d3/setUpResourcesFolder
Content-type: application/json

{
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
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/$metadata#educationModule",
    "@odata.type": "#microsoft.graph.educationModule",
    "displayName": "2023-05-05T22_28_20_564Z",
    "description": "Description for 2023-05-05T22_28_20_564Z",
    "resourcesFolderUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQ7ODS65Z665DBH3QGZ5UYZQOP2S",
    "isPinned": true,
    "status": "published",
    "createdDateTime": "2023-06-21T17:25:44.1277744Z",
    "lastModifiedDateTime": "2023-06-21T18:14:29.7542529Z",
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
