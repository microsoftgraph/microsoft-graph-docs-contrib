---
title: "List reflectCheckInResponses"
description: "Get a list of Reflect check-ins that were submitted by a student."
author: "v-rmanda"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: apiPageType
ms.date: 08/14/2024
---

# List reflectCheckInResponses

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [Reflect check-ins](../resources/reflectcheckinresponse.md) that were submitted by a student.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "reportsroot_list_reflectcheckinresponses" } -->
[!INCLUDE [permissions-table](../includes/permissions/reportsroot-list-reflectcheckinresponses-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /education/reports/reflectCheckInResponses
```

## Optional query parameters

This method supports the `$top`, `$filter`, `$count`, `$skiptoken` and `$select` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [reflectCheckInResponse](../resources/reflectcheckinresponse.md) objects in the response body.

## Examples

### Example 1: Get a list of the Reflect check-in responses from the last 24 hours

The following example shows how to get a list of the Reflect check-in responses from the last 24 hours.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_reflectCheckinResponses_1"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/education/reports/reflectCheckInResponses
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-reflectcheckinresponses-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-reflectcheckinresponses-1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-reflectcheckinresponses-1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-reflectcheckinresponses-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-reflectcheckinresponses-1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-reflectcheckinresponses-1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-reflectcheckinresponses-1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the default response that includes Reflect check-in responses from the last 24 hours.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.reflectCheckInResponse)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/reports/reflectCheckInResponses",
  "value": [
    {
      "creatorId": "0f1503b6-15fb-ea4a-ba6e-21b31e8a9b5c",
      "classId": "f2df94da-9a47-4c65-958c-8289ae30243b",
      "checkInId": "b8fc7306-068e-4380-93d4-ee72019a50fe",
      "checkInTitle": "How are you feeling today?",
      "isClosed": false,
      "createdDateTime": "2023-09-19T11:44:16.0821219Z",
      "responderId": "f2df94da-9a47-4c65-958c-8289ae30243b",
      "responseFeedback": "pleasant",
      "responseEmotion": "motivated",
      "submitDateTime": "2023-09-19T11:46:16.2813907Z"
    },
    {
      "creatorId": "0f1503b6-15fb-ea4a-ba6e-21b31e8a9b5c",
      "classId": null,
      "checkInId": "b8fc7306-068e-4380-93d4-ee72019a50fe",
      "checkInTitle": "How are you feeling today?",
      "isClosed": false,
      "createdDateTime": "2023-09-19T11:44:16.0821219Z",
      "responderId": "958c7306-9a47-15fb-958c-8289ae30243b",
      "responseFeedback": "unpleasant",
      "responseEmotion": "bored",
      "submitDateTime": "2023-09-19T11:55:16.2813907Z"
    }
  ]
}
```

### Example 2: Get a list of the Reflect check-in responses for a specific date using $filter

The following example shows how to get a list of the Reflect check-in responses for a specific date using the `$filter` query parameter. The requested time range must be 24 hours or shorter.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_reflectCheckinResponses_2"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/education/reports/reflectCheckInResponses?$filter=submitDateTime gt 2023-10-10T00:00:00.000Z and submitDateTime lt 2023-10-11T00:00:00.000Z
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-reflectcheckinresponses-2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-reflectcheckinresponses-2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-reflectcheckinresponses-2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-reflectcheckinresponses-2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-reflectcheckinresponses-2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-reflectcheckinresponses-2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-reflectcheckinresponses-2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.reflectCheckInResponse)",
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/reports/reflectCheckInResponses",
  "value": [
    {
      "creatorId": "0f1503b6-15fb-ea4a-ba6e-21b31e8a9b5c",
      "classId": "f2df94da-9a47-4c65-958c-8289ae30243b",
      "checkInId": "b8fc7306-068e-4380-93d4-ee72019a50fe",
      "checkInTitle": "How are you feeling today?",
      "isClosed": false,
      "createdDateTime": "2023-10-10T11:44:16.0821219Z",
      "responderId": "f2df94da-9a47-4c65-958c-8289ae30243b",
      "responseFeedback": "pleasant",
      "responseEmotion": "motivated",
      "submitDateTime": "2023-10-10T11:46:16.2813907Z"
    },
    {
      "creatorId": "0f1503b6-15fb-ea4a-ba6e-21b31e8a9b5c",
      "classId": null,
      "checkInId": "b8fc7306-068e-4380-93d4-ee72019a50fe",
      "checkInTitle": "How are you feeling today?",
      "isClosed": false,
      "createdDateTime": "2023-10-10T11:44:16.0821219Z",
      "responderId": "958c7306-9a47-15fb-958c-8289ae30243b",
      "responseFeedback": "unpleasant",
      "responseEmotion": "bored",
      "submitDateTime": "2023-10-10T11:55:16.2813907Z"
    }
  ]
}
```
