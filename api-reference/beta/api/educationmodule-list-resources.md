---
title: "List module resources"
description: "Get all the resources associated with a module."
author: "AshwaniBansal1"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: apiPageType
---

# List module resources

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get all the [educationModuleResource](../resources/educationmoduleresource.md) objects associated with a [module](../resources/educationmodule.md). Only teachers, students, and applications with application permissions can perform this operation.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  EduCurricula.Read, EduCurricula.ReadWrite |
|Delegated (personal Microsoft account) |  Not supported.  |
|Application | EduCurricula.Read.All, EduCurricula.ReadWrite.All | 

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /education/classes/{id}/modules/{id}/resources
```

## Optional query parameters

This method supports the `$top`, `$filter`, `$orderBy`, and `$select` OData query parameters to help customize the response.
For general information, see [OData query parameters](/graph/query-parameters).


## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body
Don't supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [educationModuleResource](../resources/educationmoduleresource.md) objects in the response body.

## Example
### Request
The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["37d99af7-cfc5-4e3b-8566-f7d40e4a2070","ba8e4215-4fb2-4dba-abe7-a8f2585177d3"],
  "name": "get_resources_1"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules/ba8e4215-4fb2-4dba-abe7-a8f2585177d3/resources
```
### Response
The following is an example of the response. 

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationModuleResource",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://canary.graph.microsoft.com/testprodbetaeduasg_local_dev/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/modules('ba8e4215-4fb2-4dba-abe7-a8f2585177d3')/resources",
    "value": [
        {
            "id": "6257a14b-4e09-4af0-b013-cbb468e64f8f",
            "resource": {
                "@odata.type": "#microsoft.graph.educationLinkResource",
                "displayName": "Where the Wonders of Learning Never Cease | Wonderopolis",
                "createdDateTime": "2023-06-23T14:39:27.2137354Z",
                "lastModifiedDateTime": "2023-06-23T14:39:27.213885Z",
                "link": "https://wonderopolis.org/",
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
        },
        {
            "id": "445a73e6-a142-4681-87ff-beeff54cdce7",
            "resource": {
                "@odata.type": "#microsoft.graph.educationLinkResource",
                "displayName": "Where the Wonders of Learning Never Cease | Wonderopolis",
                "createdDateTime": "2023-06-23T14:40:41.0020471Z",
                "lastModifiedDateTime": "2023-06-23T14:40:41.002085Z",
                "link": "https://wonderopolis.org/",
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
        },
        {
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
    ]
}
