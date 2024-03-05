---
title: "Get shiftPreferences"
description: "Get a shift preference by ID."
author: "akumar39"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Get shiftPreferences

Namespace: microsoft.graph

Retrieve the properties and relationships of a [shiftPreferences](../resources/shiftpreferences.md) object by ID.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "shiftpreferences_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/shiftpreferences-get-permissions.md)]

> **Note**: This API supports admin permissions. Global admins can access groups that they are not a member of.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /users/{userId}/settings/shiftPreferences
```

## Optional query parameters

This method does not support OData query parameters to customize the response.


## Request headers

| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| MS-APP-ACTS-AS  | A user ID (GUID). Required only if the authorization token is an application token; otherwise, optional. |

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [shiftPreferences](../resources/shiftpreferences.md) object in the response body.

## Example

### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_shiftpreferences"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/users/871dbd5c-3a6a-4392-bfe1-042452793a50/settings/shiftPreferences
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-shiftpreferences-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-shiftpreferences-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-shiftpreferences-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-shiftpreferences-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-shiftpreferences-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-shiftpreferences-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-shiftpreferences-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-shiftpreferences-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.shiftPreferences"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "id": "SHPR_eeab4fb1-20e5-48ca-ad9b-98119d94bee7",
    "@odata.etag": "1a371e53-f0a6-4327-a1ee-e3c56e4b38aa",
    "availability": [
        {
            "recurrence": {
                "pattern": {
                    "type": "Weekly",
                    "daysOfWeek": ["Tuesday"],
                    "interval": 1
                },
                "range": {
                    "type": "noEnd"
                }
            },
            "timeZone": "Pacific Standard Time",
            "timeSlots": [
                {
                    "startTime": "09:15:00.000000",
                    "endTime": "12:30:00.000000"
                },
                {
                    "startTime": "16:00:00.000000",
                    "endTime": "20:00:00.000000"
                }
            ]
        }
    ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-12-12 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Get a user's shift preferences",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->

