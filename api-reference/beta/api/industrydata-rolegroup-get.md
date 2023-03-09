---
title: "Get roleGroup"
description: "Read the properties and relationships of a roleGroup object."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: apiPageType
---

# Get roleGroup

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [roleGroup](../resources/industrydata-rolegroup.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | IndustryData-ReferenceDefinition.Read.All   |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | IndustryData-ReferenceDefinition.Read.All   |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /external/industryData/roleGroups/{roleGroupId}
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.industryData.roleGroup](../resources/industrydata-rolegroup.md) object in the response body.

## Examples

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "get_rolegroup",
  "sampleKeys": ["students"]
}
-->

```http
GET https://graph.microsoft.com/beta/external/industryData/roleGroups/students
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.industryData.roleGroup"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "displayName": "Students",
  "id": "students",
  "roles": [
    {
      "code": "student"
    }
  ]
}
```
