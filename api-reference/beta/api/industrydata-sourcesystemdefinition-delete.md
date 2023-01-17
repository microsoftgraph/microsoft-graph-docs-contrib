---
title: "Delete sourceSystemDefinition"
description: "Delete a sourceSystemDefinition object."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industrydata"
doc_type: apiPageType
---

# Create sourceSystemDefinition

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [sourceSystemDefinition](../resources/industrydata-sourcesystemdefinition.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | IndustryData-SourceSystem.ReadWrite.All     |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | IndustryData-SourceSystem.ReadWrite.All     |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
POST /external/industryData/sourceSystems/{sourceSystemDefinitionId}
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "create_sourcesystemdefinition_from_",
  "sampleKeys": ["0c629a1a-a85c-4365-bdf0-623a32ca69cb"]
}
-->

```http
DELETE https://graph.microsoft.com/beta/external/industryData/sourceSystems/0c629a1a-a85c-4365-bdf0-623a32ca69cb
```

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

```http
HTTP/1.1 204 No Content
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.industryData.sourceSystemDefinition"
}
-->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/industryData/sourceSystems/$entity",
    "id": "aa050107-5784-4a8e-1876-08daddab21bc",
    "displayName": "Rostering source",
    "vendor": null,
    "userMatchingSettings": [
        {
            "priorityOrder": 0,
            "sourceIdentifier": {
                "code": "username"
            },
            "matchTarget": {
                "code": "userPrincipalName"
            }
        },
        {
            "priorityOrder": 1,
            "sourceIdentifier": {
                "code": "username"
            },
            "matchTarget": {
                "code": "userPrincipalName"
            }
        }
    ]
}
```
