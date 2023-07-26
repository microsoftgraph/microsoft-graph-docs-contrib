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
POST https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules/a979702c-ea28-4356-99ee-fd368e39c0b9/resources/40ee40f1-9718-4cb1-bab7-9631db4b16b8
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/modules('a979702c-ea28-4356-99ee-fd368e39c0b9')/resources/$entity",
    "id": "40ee40f1-9718-4cb1-bab7-9631db4b16b8",
    "resource": {
        "@odata.type": "#microsoft.graph.educationExcelResource",
        "displayName": "new excel file patched.xlsx",
        "createdDateTime": "2023-07-19T23:01:48.3086057Z",
        "lastModifiedDateTime": "2023-07-19T23:01:48.3086097Z",
        "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQ4S6UQIQGXPZZCL7IUA63TVIQ74",
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
