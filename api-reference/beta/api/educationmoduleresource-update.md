---
title: "Update educationModuleResource"
description: "Update an education module resource."
ms.localizationpriority: medium
author: "cristobal-buenrostro"
ms.prod: "education"
doc_type: apiPageType
---

# Update educationModuleResource

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update an [education module resource](../resources/educationmoduleresource.md). Only teachers can perform this operation.

The only one property that can be updated is **displayName**, for all type of resources.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  EduCurricula.ReadWrite  |
|Delegated (personal Microsoft account) |  Not supported.  |
|Application | Not supported.  | 

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /education/classes/{class-id}/modules/{module-id}/resources/{resource-id}
```
## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type  | application/json  |

## Request body
In the request body, supply the new value for the **displayName** field that will be updated.

## Response
If successful, this method returns a `200 Ok` response code and an [educationModuleResource](../resources/educationmoduleresource.md) object in the response body.

## Examples
### Request
The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "create_educationmoduleresource_patch"
}-->
```http
PATCH https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules/1b55f828-731f-44ed-9318-0455e783f950/resources/4d6abd69-542a-422a-94d9-2a0c64229fbe
Content-type: application/json

{
    "resource": {
        "displayName" : "new excel file patched.xlsx"
    }
}
```

### Response
The following is an example of the response. 

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationExcelResource"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/modules('1b55f828-731f-44ed-9318-0455e783f950')/resources/$entity",
    "id": "4d6abd69-542a-422a-94d9-2a0c64229fbe",
    "resource": {
        "@odata.type": "#microsoft.graph.educationExcelResource",
        "displayName": "new excel file patched.xlsx",
        "createdDateTime": "2023-07-28T22:39:23.6842308Z",
        "lastModifiedDateTime": "2023-07-28T23:51:23.6842351Z",
        "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQZBEY7CWDS6HRG22PAHYJGKGM3G",
        "createdBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "cb1a4af3-0aba-4679-aa12-9f99bab0b61a",
                "displayName": null
            }
        },
        "lastModifiedBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "cb1a4af3-0aba-4679-aa12-9f99bab0b61a",
                "displayName": null
            }
        }
    }
}
```
