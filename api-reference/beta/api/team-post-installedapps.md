---
title: "Add app to team"
description: "Installs an app to the specified team."
author: "akjo"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Add app to team

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Install an [app](../resources/teamsapp.md) to the specified [team](../resources/team.md).

> **Note:**
> - Currently, installing an app that requires resource-specific consent permissions is not supported in application context.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | TeamsAppInstallation.ReadWriteSelfForTeam<sup>1</sup>, TeamsAppInstallation.ReadWriteForTeam<sup>1</sup>,  TeamsAppInstallation.ReadWriteAndConsentSelfForTeam, Group.ReadWrite.All<sup>2</sup>, Directory.ReadWrite.All<sup>2</sup> |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | TeamsAppInstallation.ReadWriteSelfForTeam.All<sup>1</sup>, TeamsAppInstallation.ReadWriteForTeam.All<sup>1</sup>, TeamsAppInstallation.ReadWriteAndConsentForTeam.All, TeamsAppInstallation.ReadWriteAndConsentSelfForTeam.All, Group.ReadWrite.All<sup>2</sup>, Directory.ReadWrite.All<sup>2</sup> |

> **Note**:
<br><sup>1</sup> These permissions cannot be used to install apps that require consent to [resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent) permissions
<br><sup>2</sup> These permissions are supported only for backward compatibility. We recommend that you update your solutions to use an alternative permission and avoid using these permissions going forward.

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /teams/{team-id}/installedApps
```

## Request headers

| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body

The request body should contain the catalog app's generated app ID. For details, see [teamsApp properties](../resources/teamsapp.md#properties).

The following table lists additional properties that can be included in the request body.

| Property   | Type |Description|
|:---------------|:--------|:----------|
|teamsApp|String|The ID of the app to add.|
|consentedPermissionSet|[teamsAppPermissionSet](../resources/teamsapppermissionset.md)|The set of resource-specific permissions that are being consented to.|

> **Note**:
> The permissions consented to during the install must be the same as the resource-specific permissions present in the [teamsAppDefinition](../resources/teamsAppDefinition.md) of the app. To get the application and delegated resource-specific permissions, see [Example 7](../api/appcatalogs-list-teamsapps.md#example-7-list-applications-with-a-given-id-and-return-only-the-resource-specific-permissions-required-by-the-app). If only delegated resource-specific permissions are present in **teamsAppDefinition**, permissions can be omitted in the body of this request.

## Response

If successful, this method returns a `200 OK` response code. It does not return anything in the response body.

## Examples

### Example 1: Install app in a chat

#### Request

The following is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "add_app_in_team_e1",
  "sampleKeys": ["87654321-0abc-zqf0-321456789q"]
}-->
```http
POST /teams/87654321-0abc-zqf0-321456789q/installedApps
Content-type: application/json

{
   "teamsApp@odata.bind":"https://graph.microsoft.com/beta/appCatalogs/teamsApps/12345678-9abc-def0-123456789a"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/add-app-in-team-e1-csharp-snippets.md)]
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

---

#### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 200 OK
```

### Example 2: Install app in a team and consent to the resource-specific permissions required by the app
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

---

#### Response

<!-- {
  "blockType": "response"
} -->

```http
HTTP/1.1 201 Created
```
## See also
- [List apps in catalog](appcatalogs-list-teamsapps.md)
- [Request resource-specific consent for apps](/microsoftteams/platform/graph-api/rsc/resource-specific-consent)
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


