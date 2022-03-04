---
title: "settings resource type"
description:  "The settings resource contains information about the organization settings for the SharePoint and OneDrive for Business workload.
Refer to [tenant] for details."
author: lfernandez
ms.localizationpriority: medium
ms.prod: "Sharepoint"
doc_type: "resourcePageType"
---

# Ssttings resource type

Namespace: microsoft.graph.tenantAdmin

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the organization settings for the SharePoint and OneDrive for Business workload.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description
|:---|:---|:---
|[Get settings](../api/tenantAdmin-settings-get.md)|[microsoft.graph.tenantAdmin.settings](../resources/tenantAdmin-settings.md) | Get the admin settings for the current tenant.|
|[Update settings](../api/tenantAdmin-settings-update.md) | [microsoft.graph.tenantAdmin.settings](../resources/tenantAdmin-settings.md) | Update the admin settings for the current tenant.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
| allowedDomainGuidsForSyncApp                       | Collection Guid              | List of trusted domain GUIDs for sync client.                                                                                                                                                                           |
| availableManagedPathsForSiteCreation               | Collection String            | Array of strings representing the managed paths available for site creation.                                                                                                                                            |
| deletedUserPersonalSiteRetentionPeriodInDays       | Int                          | Integer representing the number of days for preserving a deleted user's personal sites.                                                                                                                                 |
| excludedFileExtensionsForSyncApp                   | Collection String            | List of strings representing the file extensions that should be excluded from the sync client.                                                                                                                          |
| imageTaggingOption                                 | ImageTaggingChoice           | Specifies the image tagging option for the tenant. Value should be one of the values listed in [imageTaggingChoice] enumeration.                                                                                        |
| isCommentingOnSitePagesEnabled                     | Boolean                      | Boolean indicating if comments are allowed on the modern site pages in SharePoint.                                                                                                                                      |
| isFileActivityNotificationEnabled                  | Boolean                      | Boolean indicating if push notifications are enabled for OneDrive for Business events.                                                                                                                                  |
| isLoopEnabled                                      | Boolean                      | Boolean indicating if Fluid Framework is allowed on SharePoint sites.                                                                                                                                                   |
| isMacSyncAppEnabled                                | Boolean                      | Boolean indicating if Mac clients should be blocked from sync.                                                                                                                                                          |
| isResharingByExternalUsersEnabled                  | Boolean                      | Boolean indicating if external users are blocked from resharing files, folders, and sites that they do not own.                                                                                                         |
| isSharePointMobileNotificationEnabled              | Boolean                      | Boolean indicating if mobile push notifications are enabled for SharePoint.                                                                                                                                             |
| isSharePointNewsfeedEnabled                        | Boolean                      | Boolean indicating if newsfeed is allowed on the modern site pages in SharePoint.                                                                                                                                       |
| isSiteCreationEnabled                              | Boolean                      | Boolean indicating whether or not to show self service site creation.                                                                                                                                                   |
| isSiteCreationUIEnabled                            | Boolean                      | Boolean indicating if the new UI for site creation will be enabled.                                                                                                                                                     |
| isSitePagesCreationEnabled                         | Boolean                      | Boolean indicating if create new mordern pages is allowed on SharePoint sites.                                                                                                                                          |
| isSitesStorageLimitAutomatic                       | Boolean                      | Boolean indicating if sites storage space will be automatically managed or managed by letting the user set specific storage limits per site.                                                                            |
| isSyncButtonHiddenOnPersonalSite                   | Boolean                      | Boolean indicating if the sync button on OneDrive for Business sites will be shown or hidden.                                                                                                                           |
| isUnmanagedSyncAppForTenantRestricted              | Boolean                      | Boolean indicating if the unmanaged sync client will be enabled for the tenant.                                                                                                                                         |
| personalSiteDefaultStorageLimitInMB                | Long                         | Integer representing the default OneDrive storage limit for all new and existing users who are assigned a qualifying license. Measured in megabytes (Mb).                                                               |
| sharingAllowedDomainList                           | Collection String            | Specifies a list of email domains that is allowed for sharing with the external collaborators.                                                                                                                          |
| sharingBlockedDomainList                           | Collection String            | Specifies a list of email domains that is blocked or prohibited for sharing with the external collaborators.                                                                                                            |
| sharingCapability                                  | SharingCapabilities          | Sharing capability for the tenant. Value should be one of the values listed in [sharingCapabilities] enumeration.                                                                                                       |
| sharingDomainRestrictionMode                       | SharingDomainRestrictionMode | Specifies the external sharing mode for domains. Value should be one of the values listed in [sharingDomainRestrictionMode] enumeration.                                                                                |
| siteCreationDefaultManagedPath                     | String                       | String representing the value of the team site managed path. This is the path under which new team sites will be created under.                                                                                         |
| siteCreationDefaultStorageLimitInMB                | Int                          | Integer representing the default storage quota for a new site upon creation. Measured in megabytes (Mb).                                                                                                                |
| tenantDefaultTimezone                              | String                       | The tenant's default timezone for newly created sites.                                                                                                                                                                  |

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.tenantAdmin.settings",
  "openType": "false"
}
-->
``` json
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
```