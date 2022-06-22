---
title: "Update adminReportSettings"
description: "Update an adminReportSettings object."
ms.localizationpriority: medium
author: "qiwhuang"
ms.prod: "reports"
doc_type: apiPageType
---

# Update adminReportSettings

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get settings of the report in Graph API.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | ReportSettings.ReadWrite.All                            |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | ReportSettings.ReadWrite.All                            |

> **Note:** For delegated permissions to allow apps to update report settings on behalf of a user, the tenant administrator must have assigned the user the appropriate Azure AD limited administrator role. For more details, see [Authorization for APIs to read Microsoft 365 usage reports](/graph/reportroot-authorization).

## HTTP request

```http
PATCH /admin/reportSettings
```

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

| Property       | Type           | Description                                 | Key       | Required  | ReadOnly  |
| -------------- | -------------- | ------------------------------------------- | --------- | --------- | --------- |
| `displayConcealedNames` | `Boolean` | `true` represent all reports will display concealed user, group, and site names. `false` represent all reports will display real user, group and site names. The value is connected to a checkbox in the M365 Admin Center Setting. | No | Yes | No |


## Response

If successful, this method returns a `204 NoContent` response. 

## Examples

### Example 1: Update adminReportSettings

The following is an example that update adminReportSettings

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "adminReportSettings-get"
}-->

```msgraph-interactive
PATCH https://graph.microsoft.com/beta/admin/reportSettings
Content-type: application/json

{
  "displayConcealedNames": true
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/reportroot-getm365appusercoundetail-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/reportroot-getm365appusercoundetail-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/reportroot-getm365appusercoundetail-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/reportroot-getm365appusercoundetail-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "stream"
} -->

```http
HTTP/1.1 204 No Content
```