---
title: "List joinedTeams"
description: "Get the teams in Microsoft Teams that the user is a direct member of."
author: "MSFTRickyCastaneda"
ms.localizationpriority: high
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 08/16/2024
---

# List joinedTeams

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the [teams](../resources/team.md) in Microsoft Teams that the user is a direct member of.
> **Note:** This API doesn't return the host team of the shared channel that the user is a direct member of. Use the [List associated teams](../api/associatedteaminfo-list.md) API, to retrieve the host teams of the shared channels that the user has access to.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "user_list_joinedteams" } -->
[!INCLUDE [permissions-table](../includes/permissions/user-list-joinedteams-permissions.md)]

> [!NOTE]
> The Directory.Read.All and Directory.ReadWrite.All permissions are supported only for backward compatibility. We recommend that you update your solutions to use an alternative permission listed in the previous table and avoid using these permissions going forward.

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /me/joinedTeams
GET /users/{id | user-principal-name}/joinedTeams
```

## Optional query parameters
This method doesn't currently support the [OData query parameters](/graph/query-parameters) to customize the response.

## Request headers
| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Accept  | application/json|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [team](../resources/team.md) objects in the response body.

> [!NOTE]
> Currently, this API call returns all properties of a [team](../resources/team.md) object, but only populates the **id**, **displayName**, **description**, **isArchived**, and **tenantId** properties. All other properties are returned as `null`. To get all populated properties, use the [Get team](../api/team-get.md) operation.


## Example
### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_joinedteams"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/me/joinedTeams
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-joinedteams-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-joinedteams-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-joinedteams-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-joinedteams-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-joinedteams-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-joinedteams-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-joinedteams-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.team",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#teams",
  "value": [
    {
      "id": "172b0cce-e65d-44ce-9a49-91d9f2e8493a",
      "createdDateTime": null,
      "displayName": "Contoso Team",
      "description": "This is a Contoso team, used to showcase the range of properties supported by this API",
      "internalId": null,
      "classification": null,
      "specialization": null,
      "visibility": null,
      "webUrl": null,
      "isArchived": false,
      "tenantId": "b3246f44-b4gb-4627-96c6-25b18fa2c910",
      "isMembershipLimitedToOwners": null,
      "memberSettings": null,
      "guestSettings": null,
      "messagingSettings": null,
      "funSettings": null,
      "discoverySettings": null,
      "tagSettings": null,
      "summary": null
    }
  ]
}
```

## Related content
- [List all teams](/graph/teams-list-all-teams)
- [List associated teams](../api/associatedteaminfo-list.md)
- [List all teams in an organization](../api/teams-list.md)
- [Get team](../api/team-get.md)
- [Microsoft Graph service-specific throttling limits](/graph/throttling-limits#microsoft-teams-service-limits)


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "List joinedTeams",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
