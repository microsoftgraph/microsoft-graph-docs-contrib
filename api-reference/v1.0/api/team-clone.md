---
title: "team: clone"
description: "Create a copy of a team. This operation also creates a copy of the corresponding group."
author: "MSFTRickyCastaneda"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 08/19/2024
---

# team: clone

Namespace: microsoft.graph

Create a copy of a [team](../resources/team.md). This operation also creates a copy of the corresponding [group](../resources/group.md).
You can specify which parts of the team to clone:

- **apps** - Copies Microsoft Teams apps that are installed in the team.
- **channels** – Copies the channel structure (but not the messages in the channel).
- **members** – Copies the members and owners of the group.
- **settings** – Copies all settings within the team, along with key group settings.
- **tabs** – Copies the tabs within channels.

> [!NOTE]
> This method isn't supported for organization-wide teams.

> [!NOTE]
> A known issue related to owners of cloned teams is associated with this method. For details, see [Known issues](https://developer.microsoft.com/graph/known-issues).

When tabs are cloned, they aren't configured. The tabs are displayed on the tab bar in Microsoft Teams, and the first time a user opens them, they must go through the configuration screen. 
If the user who opens the tab doesn't have permission to configure apps, they see a message that says that the tab isn't configured.

Cloning is a long-running operation. After the POST clone returns, you need to GET the [operation](../resources/teamsasyncoperation.md) returned by the `Location:` header to see if it's `running`, `succeeded`, or `failed`. You should continue to GET until the status isn't `running`. The recommended delay between GETs is 5 seconds.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "team_clone" } -->
[!INCLUDE [permissions-table](../includes/permissions/team-clone-permissions.md)]

> [!NOTE]
> The Group.ReadWrite.All and Directory.ReadWrite.All are supported only for backward compatibility. We recommend that you update your solutions to use an alternative permission listed in the previous table and avoid using these permissions going forward.

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /teams/{id}/clone
```

## Request headers
| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json  |

## Request body

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|classification|String (optional)|Describes a classification for the group (such as low, medium, or high business impact). If classification isn't specified, the classification is copied from the original team/group.|
|description|String (optional)|An optional description for the group. If this property isn't specified, it's left blank.|
|displayName|String|The display name for the group. This property is required when a group is created and it can't be cleared during updates. Supports $filter and $orderby.|
|mailNickname|String|The mail alias for the group, unique in the organization. This property must be specified when a group is created. Supports `filter`. If this property isn't specified, it's computed from the displayName. This property is currently ignored.|
|partsToClone| [clonableTeamParts](../resources/clonableteamparts.md) |A comma-separated list of the parts to clone. Legal parts are "apps, tabs, settings, channels, members".|
|visibility|[teamVisibilityType](../resources/teamvisibilitytype.md) (optional)| Specifies the visibility of the group. Possible values are: **Private**, **Public**. If visibility isn't specified, the visibility is copied from the original team/group. If the team being cloned is an **educationClass** team, the visibility parameter is ignored, and the new group's visibility will be set to HiddenMembership.|

> [!NOTE]
> If the **description** property isn't specified in the request body, it takes the value of the **displayName** property from the request payload.

## Response

If successful, this method returns a `202 Accepted` response code with a Location: header pointing to the [operation](../resources/teamsasyncoperation.md) resource.
When the operation is complete, the operation resource tells you the ID of the created team.

## Example
### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "clone_team"
}-->
```http
POST https://graph.microsoft.com/v1.0/teams/{id}/clone
Content-Type: application/json

{  
     "displayName": "Library Assist",
     "description": "Self help community for library",
     "mailNickname": "libassist",
     "partsToClone": "apps,tabs,settings,channels,members",
     "visibility": "public"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/clone-team-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/clone-team-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/clone-team-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/clone-team-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/clone-team-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/clone-team-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/clone-team-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/clone-team-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response. Note: The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 202 Accepted
Location: /teams({id})/operations({opId})
Content-Type: text/plain
Content-Length: 0
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create Team",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

## Related content

[Microsoft Graph service-specific throttling limits](/graph/throttling-limits#microsoft-teams-service-limits)
