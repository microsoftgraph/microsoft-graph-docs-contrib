---
title: "List teamworkTags"
description: "Get a list of the teamworkTag objects and their properties."
author: "RamjotSingh"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 04/04/2024
---

# List teamworkTags
Namespace: microsoft.graph

Get a list of the [tag](../resources/teamworktag.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "teamworktag_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/teamworktag-list-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /teams/{team-id}/tags
```

## Optional query parameters

This method supports the `$filter` and `$top` [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [teamworkTag](../resources/teamworktag.md) objects in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_teamworktag",
  "sampleKeys": ["53c53217-fe77-4383-bc5a-ed4937a1aecd"]
}
-->
``` http
GET https://graph.microsoft.com/v1.0/teams/53c53217-fe77-4383-bc5a-ed4937a1aecd/tags
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-teamworktag-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-teamworktag-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-teamworktag-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-teamworktag-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-teamworktag-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-teamworktag-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-teamworktag-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-teamworktag-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.teamworkTag",
  "isCollection": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.teamworkTag",
      "id": "MjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyM3ZDg4M2Q4Yi1hMTc5LTRkZDctOTNiMy1hOGQzZGUxYTIxMmUjI3RhY29VSjN2RGk==",
      "teamId": "53c53217-fe77-4383-bc5a-ed4937a1aecd",
      "displayName": "Finance",
      "description": "Finance Team for Mach 8 Project",
      "memberCount": 2,
      "tagType": "standard"
    },
    {
      "@odata.type": "#microsoft.graph.teamworkTag",
      "id": "MjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyNlYjY1M2Y5Mi04MzczLTRkZTYtYmZlYy01YjRkMjE2YjZhZGUjIzk3ZjYyMzQ0LTU3ZGMtNDA5Yy04OGFkLWM0YWYxNDE1OGZmNQ==",
      "teamId": "53c53217-fe77-4383-bc5a-ed4937a1aecd",
      "displayName": "Legal",
      "description": "Legal experts, ask us your legal questions",
      "memberCount": 4,
      "tagType": "standard"
    },
    {
      "@odata.type": "#microsoft.graph.teamworkTag",
      "id": "MjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyNlYjY1M2Y5Mi04MzczLTRkZTYtYmZlYy01YjRkMjE2YjZhZGUjIzk3ZjYyMzQ0LTU3ZGMtNDA5Yy04OGFkLWM0YWYxNDE1OGZmNQ==",
      "teamId": "53c53217-fe77-4383-bc5a-ed4937a1aecd",
      "displayName": "EveningShift",
      "description": null,
      "memberCount": 5,
      "tagType": "scheduled"
    }
  ]
}
```
