---
title: "Get settings"
description: "Read the properties and relationships of a tenant admin settings resource."
author: "liamfernandez"
ms.localizationpriority: medium
ms.prod: "files"
doc_type: apiPageType
---

# Get settings
Namespace: microsoft.graph.tenantAdmin

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [tenant admin settings](../resources/tenantAdmin-settings.md) resource.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|SharePointTenantSettings.Read.All, SharePointTenantSettings.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported|
|Application|SharePointTenantSettings.Read.All, SharePointTenantSettings.ReadWrite.All|

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

If successful, this method returns a `200 OK` response code and a [settings](../resources/tenantAdmin-settings.md) object in the response body.

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
  "@odata.type": "microsoft.graph.tenantAdmin.settings"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "value": {
        "@odata.type": "#microsoft.graph.tenantAdmin.settings",
        "id": "e79403fa-abdf-af49-56c5-f7119d8b1948",
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
        "imageTaggingOption": "basic",
        "isCommentingOnSitePagesEnabled": true,
        "isFileActivityNotificationEnabled": true,
        "isLoopEnabled": true,
        "isMacSyncAppEnabled": false,
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

