---
title: "Update educationModule"
description: "Update an educationModule object."
ms.localizationpriority: medium
author: "cristobal-buenrostro"
ms.prod: "education"
doc_type: apiPageType
---

# Update educationModule

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update an [educationModule](../resources/educationmodule.md) object.

Only teachers in the class can do this. Note that you can't use a PATCH request to change the status of a **module**. Use the [publish](../api/educationmodule-publish.md) action to change the **module** status.

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
PATCH /education/classes/{class-id}/modules/{module-id}
```

## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type  | application/json  |

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

| Property	   | Type	|Description|
|:-------------|:-------|:----------|
|displayName|String| Name of module. |
|description|String| Description of the module. |

## Response
If successful, this method returns a `200 OK` response code and an updated [educationModule](../resources/educationmodule.md) object in the response body.

## Example
### Request
The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "update_educationmodule"
}-->
```http
PATCH https://graph.microsoft.com/beta/education/classes/0b78e924-9623-49d8-b444-23bfabafa4fe/modules/fa1f6b67-7da6-458d-82fd-0d671df7bc31
Content-type: application/json

{
    "displayName": "2023-04-26T17_17_17_166Z updated",
    "description": "New description for 2023-04-26T17_17_17_166Z"
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('0b78e924-9623-49d8-b444-23bfabafa4fe')/modules/$entity",
    "displayName": "2023-04-26T17_17_17_166Z updated",
    "description": "New description for 2023-04-26T17_17_17_166Z",
    "resourcesFolderUrl": "https://graph.microsoft.com/beta/drives/b!b8MR4rrk6kK793yj5m0azKvekbG46dBGsI2G7Vlzar_XjshebPh4RIbAjeFl67oU/items/01LGT6P7F6XCQASLRV6FD3566F63BIE64M",
    "isPinned": false,
    "status": "published",
    "createdDateTime": "2023-04-19T20:45:31.6335221Z",
    "lastModifiedDateTime": "2023-05-18T23:57:04.4745786Z",
    "id": "fa1f6b67-7da6-458d-82fd-0d671df7bc31",
    "createdBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "93f30bbf-7f10-4dbb-a5bd-b59f75d4f690",
            "displayName": null
        }
    },
    "lastModifiedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "93f30bbf-7f10-4dbb-a5bd-b59f75d4f690",
            "displayName": null
        }
    }
}
```
