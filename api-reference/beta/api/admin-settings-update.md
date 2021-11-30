---
title: "Update settings"
description: "Update the properties of a settings object. Allows users to update organization level settings that pertain to SharePoint/OneDrive."
author: "lfernandez"
ms.localizationpriority: medium
ms.prod: "Admin"
doc_type: apiPageType
---

# Update settings
Namespace: microsoft.graph.admin

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update properties of a tenant's organizational [settings](../resources/admin-settings.md) for the SharePoint and OneDrive for Business workload.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|SharePointTenantSettings.ReadWrite.All , Sites.ReadWrite.All , Sites.Manage.All , Sites.FullControl.All|
|Delegated (personal Microsoft account)|Not Supported|
|Application|SharePointTenantSettings.ReadWrite.All , Sites.ReadWrite.All , Sites.Manage.All , Sites.FullControl.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /admin/sharepoint/settings
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]
The following table shows the properties that can be edited for a [settings](../resources/admin-settings.md) object.

|Property|Type|Description|
|:---|:---|:---|
| allowedDomainGuidsForSyncApp                       | Collection Guid             | List of trusted domain GUIDs for sync client.                                                                                                                                                                           |
| deletedUserPersonalSiteRetentionPeriod             | Int                          | Integer representing the number of days for preserving a deleted user's personal sites.                                                                                                                                 |
| excludedFileExtensionsForSyncApp                   | Collection String           | List of strings representing the file extensions that should be excluded from the sync client.                                                                                                                          |
| imageTaggingOption                                 | Int                          | Integer representing mapping to ImageTaggingChoice enum. 0 disables the image tagging option for the tenant. 1 sets the image tagging option to 'basic'. 2 sets the image tagging option to 'enhanced'.                 |
| imageTaggingOptionV2                               | ImageTaggingChoice           | Specifies the image tagging option for the tenant. Value should be one of the values listed in [imageTaggingChoice] enumeration.                                                                                        |
| isCommentsOnSitePagesEnabled                       | Boolean                      | Boolean indicating if comments are allowed on the modern site pages in SharePoint.                                                                                                                                      |
| isFileActivityNotificationsEnabled                 | Boolean                      | Boolean indicating if push notifications are enabled for OneDrive for Business events.                                                                                                                                  |
| isFluidEnabled                                     | Boolean                      | Boolean indicating if Fluid Framework is allowed on SharePoint sites.                                                                                                                                                   |
| isMacSyncAppEnabled                                | Boolean                      | Boolean indicating if Mac clients should be blocked from sync.                                                                                                                                                          |
| isResharingByExternalUsersEnabled                  | Boolean                      | Boolean indicating if external users are blocked from resharing files, folders, and sites that they do not own.                                                                                                         |
| isSharePointMobileNotificationsEnabled             | Boolean                      | Boolean indicating if mobile push notifications are enabled for SharePoint.                                                                                                                                             |
| isSharePointNewsfeedEnabled                        | Boolean                      | Boolean indicating if newsfeed is allowed on the modern site pages in SharePoint.                                                                                                                                       |
| isSiteCreationEnabled                              | Boolean                      | Boolean indicating whether or not to show self service site creation.                                                                                                                                                   |
| isSiteCreationUxEnabled                            | Boolean                      | Boolean indicating if the new UX for site creation will be enabled.                                                                                                                                                     |
| isSitePagesEnabled                                 | Boolean                      | Boolean indicating if create new mordern pages is allowed on SharePoint sites.                                                                                                                                          |
| isSiteStorageLimitsAutomatic                       | Boolean                      | Boolean indicating if sites storage space will be automatically managed or managed by letting the user set specific storage limits per site.                                                                            |
| isSyncButtonHiddenOnPersonalSite                   | Boolean                      | Boolean indicating if the sync button on OneDrive for Business sites will be shown or hidden.                                                                                                                           |
| isUnmanagedSyncAppForTenantRestricted              | Boolean                      | Boolean indicating if the unmanaged sync client will be enabled for the tenant.                                                                                                                                         |
| personalSiteDefaultStorageLimit                    | Long                         | Integer representing the default OneDrive storage limit for all new and existing users who are assigned a qualifying license. Measured in megabytes (Mb).                                                               |
| sharingAllowedDomainList                           | Collection String           | Specifies a list of email domains that is allowed for sharing with the external collaborators.                                                                                                                          |
| sharingBlockedDomainList                           | Collection String           | Specifies a list of email domains that is blocked or prohibited for sharing with the external collaborators.                                                                                                            |
| sharingCapability                                  | SharingCapabilities          | Sharing capability for the tenant. Value should be one of the values listed in [sharingCapabilities] enumeration.                                                                                                       |
| sharingDomainRestrictionMode                       | SharingDomainRestrictionMode | Specifies the external sharing mode for domains. Value should be one of the values listed in [sharingDomainRestrictionMode] enumeration.                                                                                |
| siteCreationDefaultManagedPath                     | String                       | String representing the value of the team site managed path. This is the path under which new team sites will be created under.                                                                                         |
| siteCreationDefaultStorageLimit                    | Int                          | Integer representing the default storage quota for a new site upon creation. Measured in megabytes (Mb).                                                                                                                |
| tenantDefaultTimezoneId                            | Int                          | Integer representing the tenant's default timezone ID.                                                                                                                                                                  |



## Response

If successful, this method returns a `200 OK` response code and an updated [settings](../resources/admin-settings.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_settings"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/admin/sharepoint/settings
Content-Type: application/json
Content-length: 1323

{
  "@odata.type": "#microsoft.graph.admin.settings",
  "allowedDomainGuidsForSyncApp": [
        "bdd1ab9b-3fd0-4def-a761-ec8d7471732c", 
        "ad31vb6b-5zd0-7tyg-m231-kj8d6578432c"
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
    "isStreamCrossLinkEnabled": true,
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
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
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
```

