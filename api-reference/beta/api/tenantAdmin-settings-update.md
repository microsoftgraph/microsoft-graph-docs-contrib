---
title: "Update settings"
description: "Update the properties of a settings object. Allows users to update organization-level settings that pertain to SharePoint and OneDrive."
author: "liamfernandez"
ms.localizationpriority: medium
ms.prod: "files"
doc_type: apiPageType
---

# Update settings
Namespace: microsoft.graph.tenantAdmin

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an organization's [tenant admin settings](../resources/tenantAdmin-settings.md) for SharePoint and OneDrive.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|SharePointTenantSettings.ReadWrite.All|
|Delegated (personal Microsoft account)|Not Supported|
|Application|SharePointTenantSettings.ReadWrite.All|

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
The following table shows the properties that can be edited for a [settings](../resources/tenantAdmin-settings.md) object.

|Property|Type|Description|
|:---|:---|:---|
| allowedDomainGuidsForSyncApp                       | Collection Guid              | List of trusted domain GUIDs for the OneDrive sync app.                                                                                                                                                                 |
| deletedUserPersonalSiteRetentionPeriodInDays       | Int                          | Integer representing the number of days for preserving a deleted user's OneDrive..                                                                                                                                      |
| excludedFileExtensionsForSyncApp                   | Collection String            | List of strings representing the file extensions not uploaded by the OneDrive sync app.                                                                                                                                 |
| imageTaggingOption                                 | ImageTaggingChoice           | Specifies the image tagging option for the tenant.                                                                                                                                                                      |
| isCommentingOnSitePagesEnabled                     | Boolean                      | Boolean indicating if comments are allowed on modern site pages in SharePoint.                                                                                                                                          |
| isFileActivityNotificationEnabled                  | Boolean                      | Boolean indicating if push notifications are enabled for OneDrive events.                                                                                                                                               |
| isLoopEnabled                                      | Boolean                      | Boolean indicating if Fluid Framework is allowed on SharePoint sites.                                                                                                                                                   |
| isMacSyncAppEnabled                                | Boolean                      | Boolean indicating if files can be synced using the OneDrive sync app for Mac.                                                                                                                                          |
| isResharingByExternalUsersEnabled                  | Boolean                      | Boolean indicating if guests are allowed to reshare files, folders, and sites they don't own.                                                                                                                           |
| isSharePointMobileNotificationEnabled              | Boolean                      | Boolean indicating if mobile push notifications are enabled for SharePoint.                                                                                                                                             |
| isSharePointNewsfeedEnabled                        | Boolean                      | Boolean indicating if the newsfeed is allowed on the modern site pages in SharePoint.                                                                                                                                   |
| isSiteCreationEnabled                              | Boolean                      | Boolean indicating whether users are allowed to create sites.                                                                                                                                                           |
| isSiteCreationUIEnabled                            | Boolean                      | Boolean indicating if the UI commands for creating sites are shown.                                                                                                                                                     |
| isSitePagesCreationEnabled                         | Boolean                      | Boolean indicating if creating new modern pages is allowed on SharePoint sites.                                                                                                                                         |
| isSitesStorageLimitAutomatic                       | Boolean                      | Boolean indicating if site storage space is automatically managed or if specific storage limits are set per site.                                                                                                       |
| isSyncButtonHiddenOnPersonalSite                   | Boolean                      | Boolean indicating if the sync button in OneDrive is hidden.                                                                                                                                                            |
| isUnmanagedSyncAppForTenantRestricted              | Boolean                      | Boolean indicating if users are allowed to sync files only on PCs joined to specific domains.                                                                                                                           |
| personalSiteDefaultStorageLimitInMB                | Long                         | Integer representing the default OneDrive storage limit for all new and existing users who are assigned a qualifying license. Measured in megabytes (MB).                                                               |
| sharingAllowedDomainList                           | Collection String            | Specifies a list of email domains that is allowed for sharing outside the organization.                                                                                                                                 |
| sharingBlockedDomainList                           | Collection String            | Specifies a list of email domains that is blocked for sharing outside the organization.                                                                                                                                 |
| sharingCapability                                  | SharingCapabilities          | Sharing capability for the tenant.                                                                                                                                                                                      |
| sharingDomainRestrictionMode                       | SharingDomainRestrictionMode | Specifies the external sharing mode for domains.                                                                                                                                                                        |
| siteCreationDefaultManagedPath                     | String                       | String representing the value of the team site managed path. This is the path under which new team sites will be created.                                                                                               |
| siteCreationDefaultStorageLimitInMB                | Int                          | Integer representing the default storage quota for a new site upon creation. Measured in megabytes (MB).                                                                                                                |
| tenantDefaultTimezone                              | String                       | The tenant's default timezone for newly created sites.                                                                                                                                                                  |



## Response

If successful, this method returns a `200 OK` response code and an updated [settings](../resources/tenantAdmin-settings.md) object in the response body.

## Examples

### Request
``` http
PATCH https://graph.microsoft.com/beta/admin/sharepoint/settings
Content-Type: application/json
Content-length: 1323

{
    "deletedUserPersonalSiteRetentionPeriodInDays": 365,
    "excludedFileExtensionsForSyncApp": [".mp3"],
    "imageTaggingOption": "enhanced",
    "isSitesStorageLimitAutomatic": false,
    "isSyncButtonHiddenOnPersonalSite": false,
    "isUnmanagedSyncAppForTenantRestricted": false,
    "personalSiteDefaultStorageLimitInMB": 120000,
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
    "deletedUserPersonalSiteRetentionPeriodInDays": 365,
    "excludedFileExtensionsForSyncApp": [
        ".mp3"
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
    "isSitesStorageLimitAutomatic": false,
    "isSyncButtonHiddenOnPersonalSite": false,
    "isUnmanagedSyncAppForTenantRestricted": false,
    "personalSiteDefaultStorageLimitInMB": 120000,
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
```