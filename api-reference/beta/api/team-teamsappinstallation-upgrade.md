---
title: "teamsAppInstallation: upgrade"
description: "Upgrade an app installation in a team"
author: "akjo"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# teamsAppInstallation: upgrade

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Upgrade an [app installation](../resources/teamsappinstallation.md) in a [team](../resources/team.md) to the latest version of the app.

**Known issue:**
> - Currently, the operation of upgrading an app that requires RSC permissions is not supported in application context.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | TeamsAppInstallation.ReadWriteSelfForTeam<sup>1</sup>, TeamsAppInstallation.ReadWriteForTeam<sup>1</sup>, TeamsAppInstallation.ReadWriteAndConsentForTeam, TeamsAppInstallation.ReadWriteAndConsentSelfForTeam, Group.ReadWrite.All<sup>2</sup>, Directory.ReadWrite.All<sup>2</sup> |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | TeamsAppInstallation.ReadWriteSelfForTeam.All<sup>1</sup>, TeamsAppInstallation.ReadWriteForTeam.All<sup>1</sup>, TeamsAppInstallation.ReadWriteAndConsentForTeam.All, TeamsAppInstallation.ReadWriteAndConsentSelfForTeam.All, Group.ReadWrite.All<sup>2</sup>, Directory.ReadWrite.All<sup>2</sup> |

> **Note**:
<br><sup>1</sup> These permissions cannot be used for installing apps that require consent to [resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent) permissions.
<br><sup>2</sup> These permissions are supported only for backward compatibility. We recommend that you update your solutions to use an alternative permission listed in the previous table and avoid using these permissions going forward.

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /teams/{team-id}/installedApps/{app-installation-id}/upgrade
```

## Request headers

| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body

Following table shows additional parameters that can be used with the upgrade action.

|Parameter|Type|Description|
|:---|:---|:---|
|consentedPermissionSet|[teamsAppPermissionSet](../resources/teamsapppermissionset.md)|Set of resource specific permissions that are being consented.|

> **Note**:
> The permissions consented during the upgrade must be same as the resource-specific permissions present in the [teamsAppDefinition](../resources/teamsAppDefinition.md) of the app. Please follow this [example](../api/appcatalogs-list-teamsapps.md?#example-7-list-applications-with-a-given-id-and-return-only-the-resource-specific-permissions-required-by-the-app) to get the application and delegated resource-specific permissions. If there are only delegated resource-specific permissions present in teamsAppDefinition, then permissions can be omitted in the body of this request.

## Response

If successful, this method returns `204 No Content` response code. It does not return anything in the response body.

## Examples

### Example 1: Upgrade the teams app installed in team.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "upgrade_teamsapp_in_team",
  "sampleKeys": ["db5e04be-daa2-4a35-beb1-5e73cc381599", "NjkwM2ZhOTMtNjA1Yi00M2VmLTkyMGUtNzdjNDcyOWY4MjU4IyMwMjQwYTM2OC0yNWUwLTQ1NjktOGViZS0xMzYwMWNiNTVhMTg="]
}-->

```http
POST https://graph.microsoft.com/beta/teams/db5e04be-daa2-4a35-beb1-5e73cc381599/installedApps/NjkwM2ZhOTMtNjA1Yi00M2VmLTkyMGUtNzdjNDcyOWY4MjU4IyMwMjQwYTM2OC0yNWUwLTQ1NjktOGViZS0xMzYwMWNiNTVhMTg=/upgrade
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/upgrade-teamsapp-in-team-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/upgrade-teamsapp-in-team-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/upgrade-teamsapp-in-team-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/upgrade-teamsapp-in-team-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/upgrade-teamsapp-in-team-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/upgrade-teamsapp-in-team-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response. 

<!-- {
  "blockType": "response",
  "name": "upgrade_teamsapp_in_team",
  "truncated": true
} -->
```http
HTTP/1.1 204 No Content
```
### Example 2: Upgrade app installed in a team and consent to the resource-specific permissions required by the app
The list of resource-specific permissions required by the app can be found by getting the app from appCatalog as shown in this [example](../api/appcatalogs-list-teamsapps.md?#example-7-list-applications-with-a-given-id-and-return-only-the-resource-specific-permissions-required-by-the-app).

#### Request

<!-- {
  "blockType": "request",
  "name": "upgrade_installedApps_in_team",
  "sampleKeys": ["20988f0f-a647-42f6-be30-79e04de3c2ed", "MjA5ODhmMGYtYTY0Ny00MmY2LWJlMzAtNzllMDRkZTNjMmVkIyNmYTkzN2Y4OS1iYWNhLTQ5NzktYmY4YS00MmY5ODE5MWY3ODA="]
}-->

```http
POST https://graph.microsoft.com/beta/teams/20988f0f-a647-42f6-be30-79e04de3c2ed/installedApps/MjA5ODhmMGYtYTY0Ny00MmY2LWJlMzAtNzllMDRkZTNjMmVkIyNmYTkzN2Y4OS1iYWNhLTQ5NzktYmY4YS00MmY5ODE5MWY3ODA=/upgrade
Content-Type: application/json

{
  "consentedPermissionSet": {
    "resourceSpecificPermissions": [
      {
        "permissionValue": "Channel.Create.Group",
        "permissionType": "application"
      },
      {
        "permissionValue": "ChannelMeeting.ReadBasic.Group",
        "permissionType": "delegated"
      }
    ]
  }
}
```

#### Response

<!-- {
  "blockType": "response"
} -->

```http
HTTP/1.1 204 No Content
```
## See also
- [List apps in catalog](appcatalogs-list-teamsapps.md)
- [Request resource-specific consent for apps](/microsoftteams/platform/graph-api/rsc/resource-specific-consent)
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Upgrade app in team",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


