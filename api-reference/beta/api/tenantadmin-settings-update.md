---
title: "Update settings (tenantAdmin)"
description: "Update one or more tenant-level settings for SharePoint and OneDrive for Business."
author: "liamfernandez"
ms.localizationpriority: medium
ms.prod: "files"
doc_type: apiPageType
---

# Update settings (tenantAdmin)
Namespace: microsoft.graph.tenantAdmin

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update one or more tenant-level [settings](../resources/tenantadmin-settings.md) for SharePoint and OneDrive for Business.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|SharePointTenantSettings.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|SharePointTenantSettings.ReadWrite.All|

When calling on behalf of a user, the user needs to belong to one of the following admin roles. To learn more about admin roles, see [About admin roles in the Microsoft 365 admin center](/microsoft-365/admin/add-users/about-admin-roles):
* Global Administrator
* SharePoint Administrator

## HTTP request

<!-- {
  "blockType": "ignored",
  "truncated": true,
  "@odata.type":"microsoft.graph.tenantAdmin.settings",
  "name": "update_tenant_settings"
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
The following table shows the properties that can be edited for a [settings](../resources/tenantadmin-settings.md) object.

|Property|Type|Description|
|:---|:---|:---|
## Properties
|Property|Type|Description|
|:---|:---|:---|
| allowedDomainGuidsForSyncApp                       | GUID collection              | Collection of trusted domain GUIDs for the OneDrive sync app.                                                                                                                                                  |
| deletedUserPersonalSiteRetentionPeriodInDays       | Int32                        | The number of days for preserving a deleted user's OneDrive.                                                                                                                                                   |
| excludedFileExtensionsForSyncApp                   | String collection            | Collection of file extensions not uploaded by the OneDrive sync app.                                                                                                                                           |
| imageTaggingOption                                 | imageTaggingChoice           | Specifies the image tagging option for the tenant. Possible values are: `disabled`, `basic`, `enhanced`.                                                                                                       |
| isCommentingOnSitePagesEnabled                     | Boolean                      | Indicates if comments are allowed on modern site pages in SharePoint.                                                                                                                                          |
| isFileActivityNotificationEnabled                  | Boolean                      | Indicates if push notifications are enabled for OneDrive events.                                                                                                                                               |
| isLoopEnabled                                      | Boolean                      | Indicates if Fluid Framework is allowed on SharePoint sites.                                                                                                                                                   |
| isMacSyncAppEnabled                                | Boolean                      | Indicates if files can be synced using the OneDrive sync app for Mac.                                                                                                                                          |
| isResharingByExternalUsersEnabled                  | Boolean                      | Indicates if guests are allowed to reshare files, folders, and sites they don't own.                                                                                                                           |
| isSharePointMobileNotificationEnabled              | Boolean                      | Indicates if mobile push notifications are enabled for SharePoint.                                                                                                                                             |
| isSharePointNewsfeedEnabled                        | Boolean                      | Indicates if the newsfeed is allowed on the modern site pages in SharePoint.                                                                                                                                   |
| isSiteCreationEnabled                              | Boolean                      | Indicates whether users are allowed to create sites.                                                                                                                                                           |
| isSiteCreationUIEnabled                            | Boolean                      | Indicates if the UI commands for creating sites are shown.                                                                                                                                                     |
| isSitePagesCreationEnabled                         | Boolean                      | Indicates if creating new modern pages is allowed on SharePoint sites.                                                                                                                                         |
| isSitesStorageLimitAutomatic                       | Boolean                      | Indicates if site storage space is automatically managed or if specific storage limits are set per site.                                                                                                       |
| isSyncButtonHiddenOnPersonalSite                   | Boolean                      | Indicates if the sync button in OneDrive is hidden.                                                                                                                                                            |
| isUnmanagedSyncAppForTenantRestricted              | Boolean                      | Indicates if users are allowed to sync files only on PCs joined to specific domains.                                                                                                                           |
| personalSiteDefaultStorageLimitInMB                | Int64                        | The default OneDrive storage limit for all new and existing users who are assigned a qualifying license. Measured in megabytes (MB).                                                                           |
| sharingAllowedDomainList                           | String collection            | Collection of email domains that is allowed for sharing outside the organization.                                                                                                                              |
| sharingBlockedDomainList                           | String collection            | Collection of email domains that is blocked for sharing outside the organization.                                                                                                                              |
| sharingCapability                                  | sharingCapabilities          | Sharing capability for the tenant. Possible values are: `disabled`, `externalUserSharingOnly`, `externalUserAndGuestSharing`,`existingExternalUserSharingOnly`.                                                |
| sharingDomainRestrictionMode                       | sharingDomainRestrictionMode | Specifies the external sharing mode for domains. Possible values are: `none`, `allowList`, `blockList`.                                                                                                        |
| siteCreationDefaultManagedPath                     | String                       | The value of the team site managed path. This is the path under which new team sites will be created.                                                                                                          |
| siteCreationDefaultStorageLimitInMB                | Int32                        | The default storage quota for a new site upon creation. Measured in megabytes (MB).                                                                                                                            |
| tenantDefaultTimezone                              | String                       | The default timezone of a tenant for newly created sites.                                                                                                                                                      |




## Response

If successful, this method returns a `200 OK` response code and an updated [settings](../resources/tenantadmin-settings.md) object in the response body.

## Examples

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "truncated": true,
  "@odata.type":"microsoft.graph.tenantAdmin.settings",
  "name": "update_tenant_settings"
}
-->
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

The following is an example of the response.

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