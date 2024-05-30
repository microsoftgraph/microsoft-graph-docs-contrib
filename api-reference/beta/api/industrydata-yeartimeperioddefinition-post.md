---
title: "Create yearTimePeriodDefinition"
description: "Create a new yearTimePeriodDefinition object."
author: "mlafleur"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: apiPageType
---

# Create yearTimePeriodDefinition

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [yearTimePeriodDefinition](../resources/industrydata-yeartimeperioddefinition.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "industrydata_yeartimeperioddefinition_post" } -->
[!INCLUDE [permissions-table](../includes/permissions/industrydata-yeartimeperioddefinition-post-permissions.md)]

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
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
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

The following example shows a request.

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

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-yeartimeperioddefinition-from-years-cli-snippets.md)]
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

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-yeartimeperioddefinition-from-years-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-yeartimeperioddefinition-from-years-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-yeartimeperioddefinition-from-years-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

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
