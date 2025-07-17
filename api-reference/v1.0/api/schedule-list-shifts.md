---
title: "List shifts"
description: "Get the list of shifts in a schedule."
author: "akumar39"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 09/18/2024
---

# List shifts

Namespace: microsoft.graph

Get the list of [shift](../resources/shift.md) instances in a [schedule](../resources/schedule.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "schedule_list_shifts" } -->
[!INCLUDE [permissions-table](../includes/permissions/schedule-list-shifts-permissions.md)]

> **Note**: This API supports admin permissions. Users with admin roles can access groups that they are not a member of.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /teams/{teamId}/schedule/shifts
```

## Optional query parameters

This method supports the `$filter` [OData query parameter](/graph/query-parameters) to help customize the response.

> [!NOTE]
> The `$filter` parameter doesn't support the use of the same property more than once in a query. For example, the following query will not work: `sharedShift/startDateTime ge 2019-05-09T00:00:00Z and sharedShift/startDateTime le 2019-05-09T23:59:59Z`.

## Request headers

| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| MS-APP-ACTS-AS (deprecated) | A user ID (GUID). Required only if the authorization token is an application token; otherwise, optional. The `MS-APP-ACTS-AS` header is deprecated and no longer required with application tokens.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [shift](../resources/shift.md) objects in the response body.

## Example

### Request

The following example shows a request that gets all **shift** objects that have a shared version and a draft version between March 11 - March 18, 2019.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "schedule-list-shifts"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/teams/{teamId}/schedule/shifts?$filter=sharedShift/startDateTime ge 2019-03-11T00:00:00.000Z and sharedShift/endDateTime le 2019-03-18T00:00:00.000Z and draftShift/startDateTime ge 2019-03-11T00:00:00.000Z and draftShift/endDateTime le 2019-03-18T00:00:00.000Z
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/schedule-list-shifts-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/schedule-list-shifts-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/schedule-list-shifts-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/schedule-list-shifts-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/schedule-list-shifts-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/schedule-list-shifts-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/schedule-list-shifts-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/schedule-list-shifts-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.shift",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "id": "SHFT_b986be48-7396-4ea4-ad62-470e18d9d2f1",
      "createdDateTime": "2024-10-10T19:40:59.924Z",
      "lastModifiedDateTime": "2024-10-10T19:40:59.924Z",
      "schedulingGroupId": "TAG_4ab7d329-1f7e-4eaf-ba93-63f1ff3f3c4a",
      "userId": "5ca83ce7-291d-43b7-bf53-af79eef4bc1d",
      "isStagedForDeletion": false,
      "sharedShift": null,
      "lastModifiedBy": {
        "application": null,
        "device": null,
        "user": {
          "id": "366c0b19-49b1-41b5-a03f-9f3887bd0ed8",
          "displayName": "John Doe",
          "userIdentityType": "aadUser",
          "tenantId": null
        }
      },
      "draftShift": {
        "displayName": null,
        "startDateTime": "2024-10-08T15:00:00Z",
        "endDateTime": "2024-10-09T00:00:00Z",
        "theme": "blue",
        "notes": null,
        "activities": []
      },
      "schedulingGroupInfo": {
        "displayName": "",
        "schedulingGroupId": "TAG_4ab7d329-1f7e-4eaf-ba93-63f1ff3f3c4a",
        "code": null
      }
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Get the list of shifts in this schedule",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->

