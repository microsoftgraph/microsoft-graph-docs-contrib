---
title: "Create yearTimePeriodDefinition"
description: "Create a new yearTimePeriodDefinition object."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: apiPageType
---

# Create yearTimePeriodDefinition

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [yearTimePeriodDefinition](../resources/industrydata-yeartimeperioddefinition.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | IndustryData-TimePeriod.ReadWrite.All       |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | IndustryData-TimePeriod.ReadWrite.All       |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
POST /external/industryData/years
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Request body

In the request body, supply a JSON representation of the [microsoft.graph.industryData.yearTimePeriodDefinition](../resources/industrydata-yeartimeperioddefinition.md) object.

You can specify the following properties when you create a **yearTimePeriodDefinition**.

| Property    | Type                                                                                               | Description                                                                                                                    |
| :---------- | :------------------------------------------------------------------------------------------------- | :----------------------------------------------------------------------------------------------------------------------------- |
| displayName | String                                                                                             | The name of the year. Maximum supported length is 100 characters. Required.                                                    |
| endDate     | Date                                                                                               | The last day of the year using ISO 8601 format for date. Required.                                                             |
| startDate   | Date                                                                                               | The first day of the year using ISO 8601 format for date. Required.                                                            |
| year        | [microsoft.graph.industryData.yearReferenceValue](../resources/industrydata-yearreferencevalue.md) | A pointer to a year entry in the [referenceDefinition](../resources/industrydata-referencedefinition.md) collection. Required. |

## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.industryData.yearTimePeriodDefinition](../resources/industrydata-yeartimeperioddefinition.md) object in the response body.

## Examples

### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_yeartimeperioddefinition_from_years"
}
-->

```http
POST https://graph.microsoft.com/beta/external/industryData/years
Content-Type: application/json
Content-length: 242

{
  "displayName": "Fiscal Year 2022",
  "endDate": "2023-06-15",
  "startDate": "2022-09-01",
  "year": {
    "code": "2022"
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-yeartimeperioddefinition-from-years-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-yeartimeperioddefinition-from-years-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-yeartimeperioddefinition-from-years-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-yeartimeperioddefinition-from-years-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-yeartimeperioddefinition-from-years-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.industryData.yearTimePeriodDefinition"
}
-->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/industryData/years/$entity",
  "displayName": "Fiscal Year 2022",
  "endDate": "2023-06-15",
  "id": "ebf18762-ab92-487e-21d1-08daddab28bb",
  "startDate": "2022-09-01",
  "year": {
    "code": "2022"
  }
}
```
