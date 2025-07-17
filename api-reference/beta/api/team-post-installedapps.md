---
title: "Add app to team"
description: "Installs an app to the specified team."
author: "akjo"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 06/27/2024
---

# Add app to team

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Install an [app](../resources/teamsapp.md) to the specified [team](../resources/team.md).

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "team_post_installedapps" } -->
[!INCLUDE [permissions-table](../includes/permissions/team-post-installedapps-permissions.md)]

> [!NOTE]
> - The TeamsAppInstallation.ReadWriteSelfForTeam, TeamsAppInstallation.ReadWriteForTeam, TeamsAppInstallation.ReadWriteSelfForTeam.All, and TeamsAppInstallation.ReadWriteForTeam.All permissions cannot be used to install apps that require consent to [resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent) permissions.
> - The Group.ReadWrite.All and Directory.ReadWrite.All permissions are supported only for backward compatibility. We recommend that you update your solutions to use an alternative permission and avoid using these permissions going forward.

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /teams/{team-id}/installedApps
```

## Request headers

| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

The request body should contain the catalog app's generated app ID. For details, see [teamsApp properties](../resources/teamsapp.md#properties).

The following table lists other properties that can be included in the request body.

| Property   | Type |Description|
|:---------------|:--------|:----------|
|teamsApp|String|The ID of the app to add.|
|consentedPermissionSet|[teamsAppPermissionSet](../resources/teamsapppermissionset.md)|The set of resource-specific permissions that are being consented to.|

> **Note**:
> The permissions consented to during the install must be the same as the resource-specific permissions present in the [teamsAppDefinition](../resources/teamsAppDefinition.md) of the app. To get the application and delegated resource-specific permissions, see [Example 7](../api/appcatalogs-list-teamsapps.md#example-7-list-applications-with-a-given-id-and-return-only-the-resource-specific-permissions-required-by-the-app). If only delegated resource-specific permissions are present in **teamsAppDefinition**, permissions can be omitted in the body of this request.

## Response

If successful, this method returns a `200 OK` response code. It doesn't return anything in the response body.

## Examples

### Example 1: Install an app in a chat

#### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "add_app_in_team_e1",
  "sampleKeys": ["87654321-0abc-zqf0-321456789q"]
}-->
```http
POST https://graph.microsoft.com/beta/teams/87654321-0abc-zqf0-321456789q/installedApps
Content-type: application/json

{
   "teamsApp@odata.bind":"https://graph.microsoft.com/beta/appCatalogs/teamsApps/12345678-9abc-def0-123456789a"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/add-app-in-team-e1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/add-app-in-team-e1-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/add-app-in-team-e1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/add-app-in-team-e1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/add-app-in-team-e1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/add-app-in-team-e1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/add-app-in-team-e1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/add-app-in-team-e1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 200 OK
```

### Example 2: Install an app in a team with consent to the resource-specific permissions required by the app

To get the list of resource-specific permissions required by the app, get the app from **appCatalog**, as shown in [Example 7](../api/appcatalogs-list-teamsapps.md#example-7-list-applications-with-a-given-id-and-return-only-the-resource-specific-permissions-required-by-the-app).

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "add_app_in_team_e2",
  "sampleKeys": ["7023576d-9e40-47ca-9cf2-daae6838e785"]
}-->

```http
POST https://graph.microsoft.com/beta/teams/7023576d-9e40-47ca-9cf2-daae6838e785/installedApps
Content-Type: application/json

{
	"teamsApp@odata.bind" : "https://graph.microsoft.com/beta/appCatalogs/teamsApps/7023576d-9e40-47ca-9cf2-daae6838e785",
    "consentedPermissionSet": {
        "resourceSpecificPermissions": [
        {
          "permissionValue": "OnlineMeeting.ReadBasic.Chat",
          "permissionType": "delegated"
        },
        {
          "permissionValue": "ChatMessage.Read.Chat",
          "permissionType": "application"
        }]
      }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/add-app-in-team-e2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/add-app-in-team-e2-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/add-app-in-team-e2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/add-app-in-team-e2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/add-app-in-team-e2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/add-app-in-team-e2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/add-app-in-team-e2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/add-app-in-team-e2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response"
} -->

```http
HTTP/1.1 201 Created
```

If your call results in an error message that states `The required permissions have not been consented to by the caller`, the request body doesn't specify all the RSC permissions required by the app to which the user must grant consent. Make sure that you build your request as shown in the [example](#request-1).

## Related content

- [List apps in catalog](appcatalogs-list-teamsapps.md)
- [Request resource-specific consent for apps](/microsoftteams/platform/graph-api/rsc/resource-specific-consent)
- [Microsoft Graph service-specific throttling limits](/graph/throttling-limits#microsoft-teams-service-limits)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Add teamsApp",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
