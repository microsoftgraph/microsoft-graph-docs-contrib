---
title: "Get educationModuleResource"
description: "Get the properties of a specific resource on a module."
author: "v-rmanda"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: apiPageType
---

# Get educationModuleResource

Namespace: microsoft.graph

Get the properties of a [resource](../resources/educationmoduleresource.md) associated with a [module](../resources/educationmodule.md). Only teachers, students, and applications with application permissions can perform this operation.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationmoduleresource_get" } -->

[!INCLUDE [permissions-table](../includes/permissions/educationmoduleresource-get-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /education/classes/{class-id}/modules/{module-id}/resources/{resource-id}
```

## Optional query parameters

This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Header        | Value                     |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [educationModuleResource](../resources/educationmoduleresource.md) object in the response body.

## Examples

### Example 1: Get an educationWordResource

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_educationmoduleresource_e1"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules/24eda3bf-32e5-4c70-a14d-831e606a2e4f/resources/e37696c1-78f9-43b4-aff4-dbad0ff5ff93
```

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationWordResource"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/modules('24eda3bf-32e5-4c70-a14d-831e606a2e4f')/resources/$entity",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET education/classes('<guid>')/modules('<guid>')/resources('<guid>')?$select=resource",
    "id": "e37696c1-78f9-43b4-aff4-dbad0ff5ff93",
    "resource": {
        "@odata.type": "#microsoft.graph.educationWordResource",
        "displayName": "NewDocument1_2023-04-28T21_18_17_180Z.docx",
        "createdDateTime": "2023-04-27T21:18:16.6443362Z",
        "lastModifiedDateTime": "2023-04-27T21:18:16.6443403Z",
        "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQYLO5JR7GHIOVAL5GEKUAB4MESZ",
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
}

```

### Example 2: Get an educationLinkResource

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_educationlinkresource_from_educationmodule_e2"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules/4a46c2c9-64ca-4487-950e-b3e74fb82873/resources/51db9183-99af-426a-81b2-27a6031e6a10
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationLinkResource"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/modules('4a46c2c9-64ca-4487-950e-b3e74fb82873')/resources/$entity",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET education/classes('<guid>')/modules('<guid>')/resources('<guid>')?$select=resource",
    "id": "51db9183-99af-426a-81b2-27a6031e6a10",
    "resource": {
        "@odata.type": "#microsoft.graph.educationLinkResource",
        "displayName": "2023-05-05T21_36_42_294Z",
        "createdDateTime": "2023-05-04T21:36:41.5786509Z",
        "lastModifiedDateTime": "2023-05-04T21:36:41.5786522Z",
        "link": "https://www.bing.com",
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
}
```

### Example 3: Get an educationExcelResource

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_educationexcelresource_from_educationmodule_e3"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules/24eda3bf-32e5-4c70-a14d-831e606a2e4f/resources/726c6174-bb3f-4b9f-bea0-4b6d49d0cda5
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationExcelResource"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://canary.graph.microsoft.com/testprodv1.0eduasg_local_classworkv1/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/modules('24eda3bf-32e5-4c70-a14d-831e606a2e4f')/resources/$entity",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET education/classes('<guid>')/modules('<guid>')/resources('<guid>')?$select=resource",
    "id": "726c6174-bb3f-4b9f-bea0-4b6d49d0cda5",
    "resource": {
        "@odata.type": "#microsoft.graph.educationExcelResource",
        "displayName": "NewExcelFile_2023-04-28T21_18_00_272Z.xlsx",
        "createdDateTime": "2023-04-27T21:17:59.8971508Z",
        "lastModifiedDateTime": "2023-04-27T21:17:59.8971542Z",
        "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQ7T5PS2ZQQQVZEY5VT6X2YPAPWB",
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
}
```

### Example 4: Get an educationPowerPointResource

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_educationpowerpointresource_from_educationmodule_e4"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules/24eda3bf-32e5-4c70-a14d-831e606a2e4f/resources/896c2111-4d04-4b07-8a32-4565f3ba8597
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationPowerPointResource"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://canary.graph.microsoft.com/testprodv1.0eduasg_local_classworkv1/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/modules('24eda3bf-32e5-4c70-a14d-831e606a2e4f')/resources/$entity",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET education/classes('<guid>')/modules('<guid>')/resources('<guid>')?$select=resource",
    "id": "896c2111-4d04-4b07-8a32-4565f3ba8597",
    "resource": {
        "@odata.type": "#microsoft.graph.educationPowerPointResource",
        "displayName": "NewPptFile_2023-04-28T21_17_59_677Z.pptx",
        "createdDateTime": "2023-04-27T21:17:59.1379936Z",
        "lastModifiedDateTime": "2023-04-27T21:17:59.1380036Z",
        "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQYALMDWZF4OQ5D3DGULW2YGP2P2",
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
}
```

### Example 5: Get an educationFileResource

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_educationfileresource_from_educationmodule_e5"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules/24eda3bf-32e5-4c70-a14d-831e606a2e4f/resources/f78606dd-c8c9-445d-8ad7-1cd1b7940645
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationFileResource"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/modules('24eda3bf-32e5-4c70-a14d-831e606a2e4f')/resources/$entity",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET education/classes('<guid>')/modules('<guid>')/resources('<guid>')?$select=resource",
    "id": "f78606dd-c8c9-445d-8ad7-1cd1b7940645",
    "resource": {
        "@odata.type": "#microsoft.graph.educationFileResource",
        "displayName": "CSV file.csv",
        "createdDateTime": "2024-01-17T19:37:58.1778966Z",
        "lastModifiedDateTime": "2024-01-17T19:37:58.1779003Z",
        "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQ7JAHZC43FB25H3CZHVBBH5R5CO",
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
}
```

### Example 6: Get an educationMediaResource

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_educationmediaresource_from_educationmodule_e6"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules/24eda3bf-32e5-4c70-a14d-831e606a2e4f/resources/dc25cc0a-f135-4c91-b5af-b13e1ca3c9c8
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationMediaResource"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/modules('24eda3bf-32e5-4c70-a14d-831e606a2e4f')/resources/$entity",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET education/classes('<guid>')/modules('<guid>')/resources('<guid>')?$select=resource",
    "id": "dc25cc0a-f135-4c91-b5af-b13e1ca3c9c8",
    "resource": {
        "@odata.type": "#microsoft.graph.educationFileResource",
        "displayName": "Screenshot.png",
        "createdDateTime": "2024-01-17T19:40:59.8599281Z",
        "lastModifiedDateTime": "2024-01-17T19:40:59.8599318Z",
        "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQ5GVKADRXKB5BEIOJFS5WVQ7LHZ",
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
}
```

### Example 7: Get an educationChannelResource

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_educationchannelresource_from_educationmodule_e6"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules/24eda3bf-32e5-4c70-a14d-831e606a2e4f/resources/7c4d9607-e1db-497f-b4e4-7de68b370842
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationChannelResource"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/modules('24eda3bf-32e5-4c70-a14d-831e606a2e4f')/resources/$entity",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET education/classes('<guid>')/modules('<guid>')/resources('<guid>')?$select=resource",
    "id": "7c4d9607-e1db-497f-b4e4-7de68b370842",
    "resource": {
        "@odata.type": "#microsoft.graph.educationChannelResource",
        "displayName": "General",
        "createdDateTime": "2024-01-17T19:43:14.5600283Z",
        "lastModifiedDateTime": "2024-01-17T19:43:14.5600315Z",
        "url": "https://graph.microsoft.com/v1.0/teams/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/channels/19:4gSkXJRlsCMnZvBzAcyXGdsGtcQV0AJWtfvQp_a6Fi81@thread.tacv2",
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
}
```

### Example 8: Get an educationLinkedAssignmentResource

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_educationlinkedassignmentresource_from_educationmodule_e6"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules/24eda3bf-32e5-4c70-a14d-831e606a2e4f/resources/935c8f17-32d6-4615-9587-72091798aee1
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationLinkedAssignmentResource"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://canary.graph.microsoft.com/testprodv1.0eduasg_local_classworkv1/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/modules('24eda3bf-32e5-4c70-a14d-831e606a2e4f')/resources/$entity",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET education/classes('<guid>')/modules('<guid>')/resources('<guid>')?$select=resource",
    "id": "935c8f17-32d6-4615-9587-72091798aee1",
    "resource": {
        "@odata.type": "#microsoft.graph.educationLinkedAssignmentResource",
        "displayName": "2024-02-28T17_32_00_000Z",
        "createdDateTime": "2024-01-17T19:45:52.8511626Z",
        "lastModifiedDateTime": "2024-01-17T19:45:52.8511645Z",
        "url": "https://canary.graph.microsoft.com/testprodv1.0eduasg_local_classworkv1/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/78286026-f32e-4895-af80-b00ee0b3dfe8/",
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
}
```
