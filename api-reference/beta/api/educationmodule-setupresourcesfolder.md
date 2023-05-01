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
|Delegated (work or school account) |  TBD  |
|Delegated (personal Microsoft account) |  Not supported.  |
|Application | TBD |

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
POST https://graph.microsoft.com/beta/education/classes/9f01e9b8-caf4-4132-b8d8-14de1bfc07a7/modules/4656e4f1-0d8c-4bf8-8d4e-b1b551e9ef16/setUpResourcesFolder
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#educationModule",
    "@odata.type": "#microsoft.graph.educationModule",
    "displayOrder": 2,
    "displayName": "2023-05-02T20_45_44_130Z",
    "description": "Description for 2023-05-02T20_45_44_130Z",
    "resourcesFolderUrl": "https://graph.microsoft.com/v1.0/drives/b!DsIlzPXcrkCXLcCp3OZXt4UoXToNDsFCo6EHu4vg95ShS9Bo_JxvQ7xU8yB0SVGC/items/01P6PI3YG4N6MNIF3HUJFJMCIH6CX63H6V",
    "isPinned": false,
    "status": "published",
    "createdDateTime": "2023-05-01T20:45:44.4316388Z",
    "lastModifiedDateTime": "2023-05-01T21:47:07.183902Z",
    "id": "4656e4f1-0d8c-4bf8-8d4e-b1b551e9ef16",
    "resourcesFolder": {
        "odataid": "https://graph.microsoft.com/v1.0/drives/b!DsIlzPXcrkCXLcCp3OZXt4UoXToNDsFCo6EHu4vg95ShS9Bo_JxvQ7xU8yB0SVGC/items/01P6PI3YG4N6MNIF3HUJFJMCIH6CX63H6V"
    },
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
