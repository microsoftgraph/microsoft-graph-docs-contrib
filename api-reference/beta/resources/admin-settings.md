---
title: "settings resource type"
description:  "The settings resource contains information about the organization settings for the SharePoint and OneDrive for Business workload.
Refer to [tenant] for details."
author: lfernandez
ms.localizationpriority: medium
ms.prod: "Sharepoint"
doc_type: "resourcePageType"
---

# settings resource type

Namespace: microsoft.graph.admin

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the organization settings for the SharePoint and OneDrive for Business workload.

## Methods
|Method|Return type|Description
|:---|:---|:---
|[Get settings](../api/admin-settings-get.md)|[microsoft.graph.admin.settings](../resources/admin-settings.md) | Get the admin settings for the current tenant.|
|[Update settings](../api/admin-settings-update.md) | [microsoft.graph.admin.settings](../resources/admin-settings.md) | Update the admin settings for the current tenant.|

## Properties
|Property|Type|Description
|:---|:---|:---
| allowedDomainGuidsForSyncApp                       | Collection Guid             | List of trusted domain GUIDs for sync client.                                                                                                                                                                           |
| availableManagedPathsForSiteCreation               | Collection String           | Array of strings representing the managed paths available for site creation.                                                                                                                                            |
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



## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.admin.settings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.termStore.store",
  "id": "String (identifier)",
  "defaultLanguageTag": "String",
  "languageTags": [
    "String"
  ]  
}
```