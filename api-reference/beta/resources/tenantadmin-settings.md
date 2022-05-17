---
title: "settings resource type (tenantAdmin)"
description: "Represents the tenant-level settings for SharePoint and OneDrive."
author: "liamfernandez"
ms.localizationpriority: medium
ms.prod: "files"
doc_type: "resourcePageType"
---

# settings resource type (tenantAdmin)

Namespace: microsoft.graph.tenantAdmin

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the tenant-level settings for SharePoint and OneDrive for Business.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description
|:---|:---|:---
|[Get settings](../api/tenantadmin-settings-get.md)|[settings](../resources/tenantadmin-settings.md) | Get the tenant-level settings for SharePoint and OneDrive.|
|[Update settings](../api/tenantadmin-settings-update.md) | [settings](../resources/tenantadmin-settings.md) | Update one or more tenant-level settings for SharePoint and OneDrive.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
| allowedDomainGuidsForSyncApp                       | GUID collection              | Collection of trusted domain GUIDs for the OneDrive sync app.                                                                                                                                                  |
| availableManagedPathsForSiteCreation               | String collection            | Collection of managed paths available for site creation. Read-only.                                                                                                                                            |
| deletedUserPersonalSiteRetentionPeriodInDays       | Int32                        | The number of days for preserving a deleted user's OneDrive.                                                                                                                                                   |
| excludedFileExtensionsForSyncApp                   | String collection            | Collection of file extensions not uploaded by the OneDrive sync app.                                                                                                                                           |
| imageTaggingOption                                 | [imageTaggingChoice](../resources/tenantadmin-settings.md#imagetaggingchoice-values)           | Specifies the image tagging option for the tenant. Possible values are: `disabled`, `basic`, `enhanced`.                                                                                                       |
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
| sharingCapability                                  | [sharingCapabilities](../resources/tenantadmin-settings.md#sharingcapabilities-values)          | Sharing capability for the tenant. Possible values are: `disabled`, `externalUserSharingOnly`, `externalUserAndGuestSharing`, `existingExternalUserSharingOnly`.                                                |
| sharingDomainRestrictionMode                       | [sharingDomainRestrictionMode](../resources/tenantadmin-settings.md#sharingdomainrestrictionmode-values) | Specifies the external sharing mode for domains. Possible values are: `none`, `allowList`, `blockList`.                                                                                                        |
| siteCreationDefaultManagedPath                     | String                       | The value of the team site managed path. This is the path under which new team sites will be created.                                                                                                          |
| siteCreationDefaultStorageLimitInMB                | Int32                        | The default storage quota for a new site upon creation. Measured in megabytes (MB).                                                                                                                            |
| tenantDefaultTimezone                              | String                       | The default timezone of a tenant for newly created sites.                                                                                                                                                      |

### imageTaggingChoice values
| Member                          | Description                                                                                                           |
| :------------------------------ | :---------------------------------------------------------------------------------------------------------------------|
| disabled                        | The image tagging option for the tenant is disabled.                                                                  |
| basic                           | Allows users within the tenant to add basic tags to images to make them accessible through search.                    |
| enhanced                        | Allows users to tag images with custom tags and enhanced features.                                                    |
| unknownFutureValue              | Evolvable enumeration sentinel value. Do not use.                                                                     |

### sharingCapabilities values
| Member                          | Description                                                                                                           |
| :------------------------------ | :---------------------------------------------------------------------------------------------------------------------|
| disabled                        | Users can share only with people in the organization. No external sharing is allowed.                                 |
| externalUserSharingOnly         | Users can share with new and existing guests. Guests must sign in or provide a verification code.                     |
| externalUserAndGuestSharing     | Users can share with anyone by using links that don't require sign-in.                                                |
| existingExternalUserSharingOnly | Users can share with existing guests (those already in the directory of the organization).                            |
| unknownFutureValue              | Evolvable enumeration sentinel value. Do not use.                                                                     |

### sharingDomainRestrictionMode values
| Member                          | Description                                                                                                           |
|---------------------------------|-----------------------------------------------------------------------------------------------------------------------|
| none                            | No restrictions apply.                                                                                                |
| allowList                       | Users will be able to share with external collaborators coming only from the list of allowed email domains.           |
| blockList                       | Users will be able to share with all external collaborators apart from the ones on the list of blocked email domains. |
| unknownFutureValue              | Evolvable enumeration sentinel value. Do not use.                                                                     |

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
    "allowedDomainGuidsForSyncApp": ["string (identifier)"],
    "availableManagedPathsForSiteCreation": ["string"],
    "deletedUserPersonalSiteRetentionPeriodInDays": "Int32",
    "excludedFileExtensionsForSyncApp": ["string"],
    "id": "string (identifier)",
    "imageTaggingOption": "string",
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
    "personalSiteDefaultStorageLimitInMB": "Int64",
    "sharingAllowedDomainList" : ["string"],
    "sharingBlockedDomainList" : ["string"],
    "sharingCapability": "string",
    "sharingDomainRestrictionMode": "string",
    "siteCreationDefaultManagedPath": "string",
    "siteCreationDefaultStorageLimitInMB": "Int32",
    "tenantDefaultTimezone": "string"
}
```

<!--
{
  "type": "#page.annotation",
  "description": "settings resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "namespace": "microsoft.graph.tenantAdmin"
}
-->