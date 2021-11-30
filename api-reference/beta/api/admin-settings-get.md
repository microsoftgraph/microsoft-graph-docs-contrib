---
title: "Get settings"
description: "Read the properties and relationships of a settings object."
author: "lfernandez"
ms.localizationpriority: medium
ms.prod: "Admin"
doc_type: apiPageType
---

# Get settings
Namespace: microsoft.graph.admin

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [settings](../resources/admin-settings.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|SharePointTenantSettings.Read.All , SharePointTenantSettings.ReadWrite.All , Sites.Read.All , Sites.ReadWrite.All , Sites.Manage.All , Sites.FullControl.All |
|Delegated (personal Microsoft account)|Not supported|
|Application|SharePointTenantSettings.Read.All , SharePointTenantSettings.ReadWrite.All , Sites.Read.All , Sites.ReadWrite.All , Sites.Manage.All , Sites.FullControl.All|

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
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [settings](../resources/admin-settings.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_settings"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/sharepoint/settings
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.admin.settings"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.admin.settings",
    "id": "e79403fa-abdf-af49-56c5-f7119d8b1948",
    "allowedDomainGuidsForSyncApp": [
        "bdd1ab9b-3fd0-4def-a761-ec8d7471732c", 
        "ad31vb6b-5zd0-7tyg-m231-kj8d6578432c"
    ],
    "availableManagedPathsForSiteCreation": [
        "/sites/",
        "/teams/"
        ],
    "deletedUserPersonalSiteRetentionPeriod": 344,
    "excludedFileExtensionsForSyncApp": [
        ".md", 
        ".git"
    ],
    "imageTaggingOption": 1,
    "imageTaggingOptionV2": "basic",
    "isCommentsOnSitePagesEnabled": true,
    "isFileActivityNotificationsEnabled": true,
    "isFluidEnabled": true,
    "isMacSyncAppEnabled": false,
    "isResharingByExternalUsersEnabled": true,
    "isSharePointMobileNotificationsEnabled": true,
    "isSharePointNewsfeedEnabled": true,
    "isSiteCreationEnabled": true,
    "isSiteCreationUxEnabled": true,
    "isSitePagesEnabled": true,
    "isSiteStorageLimitsAutomatic": true,
    "isSyncButtonHiddenOnPersonalSite": true,
    "isUnmanagedSyncAppForTenantRestricted": true,
    "personalSiteDefaultStorageLimit": 113664,
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
    "siteCreationDefaultStorageLimit": 808034,
    "tenantDefaultTimezoneId": 34
  }
}
```

