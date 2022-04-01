---
title: "tenant admin settings resource type"
description:  "The tenant admin settings resource contains information about the organization settings for the SharePoint and OneDrive workload."
author: "liamfernandez"
ms.localizationpriority: medium
ms.prod: "files"
doc_type: "resourcePageType"
---

# Settings resource type

Namespace: microsoft.graph.tenantAdmin

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the organization settings for the SharePoint and OneDrive workload.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description
|:---|:---|:---
|[Get settings](../api/tenantAdmin-settings-get.md)|[microsoft.graph.tenantAdmin.settings](../resources/tenantAdmin-settings.md) | Get the admin settings for the current tenant.|
|[Update settings](../api/tenantAdmin-settings-update.md) | [microsoft.graph.tenantAdmin.settings](../resources/tenantAdmin-settings.md) | Update the admin settings for the current tenant.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
| allowedDomainGuidsForSyncApp                       | Collection(Guid)            | List of trusted domain GUIDs for the OneDrive sync app.                                                                                                                                                                 |
| availableManagedPathsForSiteCreation               | Collection(String)           | Array of strings representing the managed paths available for site creation. Read-only.                                                                                                                                 |
| deletedUserPersonalSiteRetentionPeriodInDays       | Int                          | Integer representing the number of days for preserving a deleted user's OneDrive.                                                                                                                                       |
| excludedFileExtensionsForSyncApp                   | Collection(String)            | List of strings representing the file extensions not uploaded by the OneDrive sync app.                                                                                                                                 |
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
| sharingAllowedDomainList                           | Collection(String)           | Specifies a list of email domains that is allowed for sharing outside the organization.                                                                                                                                 |
| sharingBlockedDomainList                           | Collection(String)           | Specifies a list of email domains that is blocked for sharing outside the organization.                                                                                                                                 |
| sharingCapability                                  | SharingCapabilities          | Sharing capability for the tenant.                                                                                                                                                                                      |
| sharingDomainRestrictionMode                       | SharingDomainRestrictionMode | Specifies the external sharing mode for domains.                                                                                                                                                                        |
| siteCreationDefaultManagedPath                     | String                       | String representing the value of the team site managed path. This is the path under which new team sites will be created.                                                                                               |
| siteCreationDefaultStorageLimitInMB                | Int                          | Integer representing the default storage quota for a new site upon creation. Measured in megabytes (MB).                                                                                                                |
| tenantDefaultTimezone                              | String                       | The tenant's default timezone for newly created sites.                                                                                                                                                                  |

### ImageTaggingOption property values
| Value                           | Description                                                                                                           |
| :------------------------------ | :---------------------------------------------------------------------------------------------------------------------|
| disabled                        | The image tagging option for the tenant is disabled.                                                                  |
| basic                           | Allows users within the tenant to add basic tags to images to make them accessible through search.                    |
| enhanced                        | Allows users to tag images with custom tags and enhanced features.                                                    |

### SharingCapabilities property values
| Value                           | Description                                                                                                           |
| :------------------------------ | :---------------------------------------------------------------------------------------------------------------------|
| disabled                        | Users can share only with people in the organization. No external sharing is allowed.                                 |
| externalUserSharingOnly         | Users can share with new and existing guests. Guests must sign in or provide a verification code.                     |
| externalUserAndGuestSharing     | Users can share with anyone by using links that don't require sign-in.                                                |
| existingExternalUserSharingOnly | Users can share with existing guests (those already in the organization's directory).                                 |

### SharingDomainRestrictionMode property values
| Value                           | Description                                                                                                           |
|---------------------------------|-----------------------------------------------------------------------------------------------------------------------|
| none                            | No restrictions apply                                                                                                 |
| allowList                       | Users will be able to share with external collaborators coming only from the list of allowed email domains.           |
| blockList                       | Users will be able to share with all external collaborators apart from the ones on the list of blocked email domains. |

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
    "id": "string (identifier)",
    "allowedDomainGuidsForSyncApp": ["string (identifier)"],
    "availableManagedPathsForSiteCreation": ["string"],
    "deletedUserPersonalSiteRetentionPeriodInDays": 236,
    "excludedFileExtensionsForSyncApp": ["string"],
    "imageTaggingOption": {"@odata.type": "microsoft.graph.tenantAdmin.imageTaggingChoice"},
    "isCommentingOnSitePagesEnabled": "boolean",
    "isFileActivityNotificationEnabled": "boolean",
    "isLoopEnabled": "boolean",
    "isMacSyncAppEnabled": "boolean",
    "isResharingByExternalUsersEnabled": "boolean",
    "isSharePointMobileNotificationEnabled": "boolean",
    "isSharePointNewsfeedEnabled": "boolean",
    "isSiteCreationEnabled": "boolean",
    "isSiteCreationUIEnabled": "boolean",
    "isSitePagesCreationEnabled": "boolean",
    "isSitesStorageLimitAutomatic": "boolean",
    "isSyncButtonHiddenOnPersonalSite": "boolean",
    "isUnmanagedSyncAppForTenantRestricted": "boolean",
    "personalSiteDefaultStorageLimitInMB": 80000,
    "sharingAllowedDomainList" : ["string"],
    "sharingBlockedDomainList" : ["string"],
    "sharingCapability": {"@odata.type": "microsoft.graph.tenantAdmin.sharingCapabilities"},
    "sharingDomainRestrictionMode": {"@odata.type": "microsoft.graph.tenantAdmin.sharingDomainRestrictionMode"},
    "siteCreationDefaultManagedPath": "string",
    "siteCreationDefaultStorageLimitInMB": 240000,
    "tenantDefaultTimezone": "string"
}
```