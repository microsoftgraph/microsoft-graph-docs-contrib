---
title: "Get sharepointSettings"
description: "Get the tenant-level settings for SharePoint and OneDrive."
author: "liamfernandez"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 09/14/2024
---

# Get settings
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the tenant-level [settings](../resources/sharepointsettings.md) for SharePoint and OneDrive.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "sharepointsettings_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/sharepointsettings-get-permissions.md)]

When calling on behalf of a user, the user needs to belong to one of the following admin roles. To learn more about admin roles, see [About admin roles in the Microsoft 365 admin center](/microsoft-365/admin/add-users/about-admin-roles):
* Global Reader
* SharePoint Administrator

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/sharepoint/settings
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [settings](../resources/sharepointsettings.md) object in the response body.

## Examples

### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_settings_at_tenant_level"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/sharepoint/settings
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-settings-at-tenant-level-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-settings-at-tenant-level-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-settings-at-tenant-level-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-settings-at-tenant-level-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-settings-at-tenant-level-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-settings-at-tenant-level-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-settings-at-tenant-level-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-settings-at-tenant-level-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.sharepointSettings"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "value": {
        "@odata.type": "#microsoft.graph.sharepointSettings",
        "allowedDomainGuidsForSyncApp": [
            "bdd1ab9b-3fd0-4def-a761-ec8d7471732c", 
            "ad31vb6b-5zd0-7tyg-m231-kj8d6578432c"
        ],
        "availableManagedPathsForSiteCreation": [
            "/sites/",
            "/teams/"
        ],
        "deletedUserPersonalSiteRetentionPeriodInDays": 344,
        "excludedFileExtensionsForSyncApp": [
            ".md", 
            ".git"
        ],
        "idleSessionSignOut": {
            "isEnabled": true,
            "warnAfterInSeconds": 120,
            "signOutAfterInSeconds": 300
        },
        "imageTaggingOption": "basic",
        "isCommentingOnSitePagesEnabled": true,
        "isFileActivityNotificationEnabled": true,
        "isLegacyAuthProtocolsEnabled": false,
        "isLoopEnabled": true,
        "isMacSyncAppEnabled": false,
        "isRequireAcceptingUserToMatchInvitedUserEnabled": true,
        "isResharingByExternalUsersEnabled": true,
        "isSharePointMobileNotificationEnabled": true,
        "isSharePointNewsfeedEnabled": true,
        "isSiteCreationEnabled": true,
        "isSiteCreationUIEnabled": true,
        "isSitePagesCreationEnabled": true,
        "isSitesStorageLimitAutomatic": true,
        "isSyncButtonHiddenOnPersonalSite": true,
        "isUnmanagedSyncAppForTenantRestricted": true,
        "personalSiteDefaultStorageLimitInMB": 113664,
        "sharingAllowedDomainList" : [
            "contoso.com",
            "fabrikam.com"
        ],
        "sharingBlockedDomainList" : [
            "contoso.com",
            "fabrikam.com"
        ],
        "sharingCapability": "externalUserAndGuestSharing",
        "sharingDomainRestrictionMode": "allowList",
        "siteCreationDefaultManagedPath": "/sites/",
        "siteCreationDefaultStorageLimitInMB": 808034,
        "tenantDefaultTimezone": "(UTC-05:00) Eastern Time (US and Canada)"
    }
}
```
