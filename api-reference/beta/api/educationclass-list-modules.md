---
title: "List class modules"
description: "Retrieve a list of module objects."
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: apiPageType
---

# List class modules

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of module objects. Only teachers, students, and applications with application permissions can perform this operation.

A teacher or an application executing with application permissions can see all module objects for the class. Students can only see published modules.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                                                            |
| :------------------------------------- | :----------------------------------------------------------------------------------------------------- |
| Delegated (work or school account)     | EduCurricula.Read, EduCurricula.ReadWrite |
| Delegated (personal Microsoft account) | Not supported.                                                                                         |
| Application                            | EduCurricula.Read.All, EduCurricula.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /education/classes/{id}/modules
```

## Optional query parameters
This method supports the [OData Query Parameters](/graph/query-parameters) to help customize the response.

The available `$expand` option for this method is: `resources`.

## Request headers

| Header        | Value                     |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [educationModule](../resources/educationmodule.md) objects in the response body.

## Examples

### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "get_modules_for_classID"
}-->

```http
GET https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules
```

### Response

The following is an example of the response. 

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationModule",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/modules",
    "value": [
        {
            "displayName": "Module 1",
            "description": "<div style=\"font-family: inherit; font-size: inherit; color: inherit; background-color: inherit;\">Description for module 1 updated</div>",
            "resourcesFolderUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQZUN7H5IXZPURF3DDZKOAEHN6ZW",
            "isPinned": false,
            "status": "draft",
            "createdDateTime": "2023-07-19T22:18:24.0753841Z",
            "lastModifiedDateTime": "2023-07-19T22:38:03.8575605Z",
            "id": "5955f965-99aa-4fba-ad88-e291afeaf81d",
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
        },
        {
            "displayName": "Module 4",
            "description": "<div style=\"font-family: inherit; font-size: inherit; color: inherit; background-color: inherit;\">description for module 4</div>",
            "resourcesFolderUrl": null,
            "isPinned": false,
            "status": "published",
            "createdDateTime": "2023-07-20T17:24:54.6405196Z",
            "lastModifiedDateTime": "2023-07-20T17:32:25.4635665Z",
            "id": "4ae4afc7-af22-45c1-9f11-cee40a60c967",
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
    ]
}
```
