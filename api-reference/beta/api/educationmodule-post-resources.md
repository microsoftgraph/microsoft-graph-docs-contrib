---
title: "Create educationModuleResource"
description: "Create an education module resource."
ms.localizationpriority: medium
author: "AshwaniBansal1"
ms.prod: "education"
doc_type: apiPageType
---

# Create educationModuleResource

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create an [education module resource](../resources/educationmoduleresource.md). Only teachers can perform this operation.

You can create the following types of module resources:

- [educationFileResource](../resources/educationfileresource.md)
- [educationExcelResource](../resources/educationexcelresource.md)
- [educationWordResource](../resources/educationwordresource.md)
- [educationLinkResource](../resources/educationlinkresource.md)
- [educationPowerPointResource](../resources/educationpowerpointresource.md)
- [educationMediaResource](../resources/educationmediaresource.md)

Every resource has an **@odata.type** property to indicate which type of resource is being created.

> [!IMPORTANT]
> Before you can upload an module resource, you must [set up the resources folder](../api/educationmodule-setupresourcesfolder.md) for the [educationModule](../resources/educationmodule.md) to upload the files to.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  EduCurricula.ReadWrite  |
|Delegated (personal Microsoft account) |  Not supported.  |
|Application | EduCurricula.ReadWrite.All  | 

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /education/classes/{class-id}/modules/{module-id}/resources
```
## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type  | application/json  |

## Request body
In the request body, supply a JSON representation of one of the following resource types: 

- [educationFileResource](../resources/educationfileresource.md)
- [educationExcelResource](../resources/educationexcelresource.md)
- [educationWordResource](../resources/educationwordresource.md)
- [educationLinkResource](../resources/educationlinkresource.md)
- [educationPowerPointResource](../resources/educationpowerpointresource.md)
- [educationMediaResource](../resources/educationmediaresource.md)

>**Note:** You can't use this operation to create an [educationExternalResource](../resources/educationexternalresource.md).

## Response
If successful, this method returns a `201 Created` response code and an [educationModuleResource](../resources/educationmoduleresource.md) object in the response body.

## Examples
### Example 1: Create an educationLinkResource
#### Request
The following is an example of the request.

<!-- {
  "blockType": "request",
  "sampleKeys": ["37d99af7-cfc5-4e3b-8566-f7d40e4a2070","ba8e4215-4fb2-4dba-abe7-a8f2585177d3"],  
  "name": "create_educationlinkresource_from_educationmodule"
}-->
```http
POST https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules/ba8e4215-4fb2-4dba-abe7-a8f2585177d3/resources
Content-type: application/json

{
    "resource": {
        "@odata.type": "microsoft.graph.educationLinkResource",
        "displayName": "2023-06-24T17_13_22_819Z",
        "link": "https://www.bing.com"
    }
}
```

#### Response
The following is an example of the response. 

>**Note:** The response object shown here might be shortened for readability.


<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationLinkResource"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/modules('ba8e4215-4fb2-4dba-abe7-a8f2585177d3')/resources/$entity",
    "id": "a920a29d-1f5c-48d6-b647-85b91dc1dbaf",
    "resource": {
        "@odata.type": "#microsoft.graph.educationLinkResource",
        "displayName": "2023-06-24T17_13_22_819Z",
        "createdDateTime": "2023-06-23T17:49:09.475663Z",
        "lastModifiedDateTime": "2023-06-23T17:49:09.4756658Z",
        "link": "https://www.bing.com",
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
