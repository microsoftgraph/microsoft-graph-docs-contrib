---
title: "Update yearTimePeriodDefinition"
description: "Update the properties of a yearTimePeriodDefinition object."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industrydata"
doc_type: apiPageType
---

# Update yearTimePeriodDefinition

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [yearTimePeriodDefinition](../resources/industrydata-yeartimeperioddefinition.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                 |
| :------------------------------------- | :---------------------------------------------------------- |
| Delegated (work or school account)     | EduAdministration.Read, EduAdministration.ReadWrite         |
| Delegated (personal Microsoft account) | Not supported.                                              |
| Application                            | EduAdministration.Read.All, EduAdministration.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
PATCH /external/industryData/years/{yearTimePeriodDefinitionId}
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

| Property    | Type   | Description                                                                 |
| :---------- | :----- | :-------------------------------------------------------------------------- |
| displayName | String | The name of the year. Maximum supported length is 100 characters. Required. |
| endDate     | Date   | The last day of the year using ISO 8601 format for date. Required.          |
| startDate   | Date   | The first day of the year using ISO 8601 format for date. Required.         |

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "update_yeartimeperioddefinition"
}
-->

```http
PATCH https://graph.microsoft.com/beta/external/industryData/years/ebf18762-ab92-487e-21d1-08daddab28bb
Content-Type: application/json
Content-length: 242

{
    "id": "ebf18762-ab92-487e-21d1-08daddab28bb",
    "displayName": "Fiscal Year 2022",
}
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

```http
HTTP/1.1 204 No Content
```
