---
title: "Delete sourceSystemDefinition"
description: "Delete a sourceSystemDefinition object."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: apiPageType
---

# Delete sourceSystemDefinition

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
DELETE /external/industryData/sourceSystems/{sourceSystemDefinitionId}
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required.   |

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
