---
title: "List groupAnalytics"
doc_type: apiPageType
description: "Get a list of the groupAnalytics objects and their properties for groups in a Microsoft Entra tenant."
ms.localizationpriority: medium
author: "Licantrop0"
ms.subservice: "reports"
ms.date: 06/09/2026
---

# List groupAnalytics

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [groupAnalytics](../resources/groupanalytics.md) objects and their properties for a Microsoft Entra tenant. Each object holds point-in-time [identity analytics](../resources/identityanalyticsroot.md) for one group.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "identityanalyticsroot_list_groups" } -->
[!INCLUDE [permissions-table](../includes/permissions/identityanalyticsroot-list-groups-permissions.md)]

[!INCLUDE [rbac-usage-insights-apis](../includes/rbac-for-apis/rbac-usage-insights-apis.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /reports/identityAnalytics/groups
```

## Optional query parameters

This method supports the `$count`, `$filter`, `$orderby`, `$select`, and `$top` OData query parameters to help customize the response. The `$filter` operators and `$orderby` support available for each property are listed in the [groupAnalytics](../resources/groupanalytics.md) properties table.

Across the resource, `$filter` supports the `eq`, `ne`, `gt`, `ge`, `lt`, and `le` operators, the `and` and `or` logical operators, and the `startsWith`, `endsWith`, and `contains` string functions, depending on the property type. The `not` and `has` operators aren't supported.

To get the number of matching groups, append `/$count` to the request URL (for example, `GET /reports/identityAnalytics/groups/$count`) or add the `$count=true` query parameter to return the count inline as the `@odata.count` property. Large result sets are paged; follow the `@odata.nextLink` URL in the response to retrieve the next page. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description    |
| :------------ | :------------- |
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [groupAnalytics](../resources/groupanalytics.md) objects in the response body.

## Examples

### Example 1: Get a list of groupAnalytics objects

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_groupanalytics"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/reports/identityAnalytics/groups
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-groupanalytics-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-groupanalytics-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-groupanalytics-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-groupanalytics-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-groupanalytics-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-groupanalytics-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.groupAnalytics)"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#reports/identityAnalytics/groups",
  "value": [
    {
      "id": "1f3a3b9c-6e2c-4f0a-9b2c-9a6d4d2e8f10",
      "tenantId": "5d6f7a8b-1c2d-3e4f-5a6b-7c8d9e0f1a2b",
      "displayName": "Sales Team",
      "calculatedDateTime": "2026-06-08T00:00:00Z",
      "createdDateTime": "2023-02-15T10:30:00Z",
      "groupType": "isCloudGroup",
      "isValidGroup": true,
      "isCloudM365Group": true,
      "isDynamicGroup": false,
      "directGroupMemberCount": 3,
      "transitiveUserCount": 412,
      "memberTransitiveUserCount": 405,
      "guestTransitiveUserCount": 7,
      "assignedRoleCount": 1
    },
    {
      "id": "9a8b7c6d-5e4f-3a2b-1c0d-9e8f7a6b5c4d",
      "tenantId": "5d6f7a8b-1c2d-3e4f-5a6b-7c8d9e0f1a2b",
      "displayName": "Engineering - All",
      "calculatedDateTime": "2026-06-08T00:00:00Z",
      "createdDateTime": "2021-11-03T08:00:00Z",
      "groupType": "isCloudGroup",
      "isValidGroup": true,
      "isCloudM365Group": false,
      "isCloudSecurityGroup": true,
      "isDynamicGroup": true,
      "directGroupMemberCount": 12,
      "transitiveUserCount": 1890,
      "memberTransitiveUserCount": 1890,
      "guestTransitiveUserCount": 0,
      "assignedRoleCount": 0
    }
  ]
}
```

### Example 2: Get valid groups that contain guests, with selected properties

#### Request

The following example uses `$filter` to return only valid groups that contain at least one transitive guest user. It uses `$select` to limit the returned properties, `$orderby` to sort the results by creation date, and `$top` to return at most 10 results.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_groupanalytics_filter_guests"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/reports/identityAnalytics/groups?$filter=isValidGroup eq true and guestTransitiveUserCount gt 0&$select=id,displayName,createdDateTime,groupType,transitiveUserCount,guestTransitiveUserCount&$orderby=createdDateTime desc&$top=10
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-groupanalytics-filter-guests-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-groupanalytics-filter-guests-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-groupanalytics-filter-guests-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-groupanalytics-filter-guests-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-groupanalytics-filter-guests-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-groupanalytics-filter-guests-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.groupAnalytics)"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#reports/identityAnalytics/groups(id,displayName,createdDateTime,groupType,transitiveUserCount,guestTransitiveUserCount)",
  "value": [
    {
      "id": "1f3a3b9c-6e2c-4f0a-9b2c-9a6d4d2e8f10",
      "displayName": "Sales Team",
      "createdDateTime": "2023-02-15T10:30:00Z",
      "groupType": "isCloudGroup",
      "transitiveUserCount": 412,
      "guestTransitiveUserCount": 7
    }
  ]
}
```
