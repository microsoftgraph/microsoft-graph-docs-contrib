---
title: "Get adminReportSettings"
description: "Retrieve an adminReportSettings object."
ms.localizationpriority: medium
author: "qiwhuang"
ms.prod: "reports"
doc_type: apiPageType
---

# Get adminReportSettings

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get settings of the report in Graph API.

> **Note:** For details about different report views and names, see [Microsoft 365 reports - Microsoft 365 Apps usage](/microsoft-365/admin/activity-reports/microsoft365-apps-usage).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | ReportSettings.Read.All, ReportSettings.ReadWrite.All                            |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | ReportSettings.Read.All, ReportSettings.ReadWrite.All                            |

> **Note:** For delegated permissions to allow apps to get report settings on behalf of a user, the tenant administrator must have assigned the user the appropriate Azure AD limited administrator role. For more details, see [Authorization for APIs to read Microsoft 365 usage reports](/graph/reportroot-authorization).

## HTTP request

<!-- { "blockType": "ignored" } --> 

```http
GET /admin/reportSettings
```

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body with this method.

## Response

If successful, this method returns a `200 OK` response code and a [adminReportSettings](/resources/adminReportSettings.md) object in the response body. 

## Examples

### Example 1: Fetch adminReportSettings

The following is an example that fetch adminReportSettings

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "adminReportSettings-get"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/admin/reportSettings
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
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 131

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#adminReportSettings/displayConcealedNames ",
  "value": true
}
```