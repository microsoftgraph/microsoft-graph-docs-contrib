---
title: "Overview of group settings"
description: "Use group settings to configure tenant-wide or object-specific settings in your tenant."
author: "FaithOmbongi"
ms.author: ombongifaith
ms.reviewer: jodah
ms.localizationpriority: high
ms.date: 06/08/2022
---

# Overview of group settings

Group settings (also called *directory settings* in `beta`) are a collection of settings that allow you to configure either tenant-wide or object-specific allowed behaviors for specific Azure AD objects like Microsoft 365 groups.

There are eight groups of setting templates with each setting template including a collection of individual settings.
+ Group.Unified
+ Group.Unified.Guest
+ Application
+ Custom Policy Settings
+ Consent Policy Settings
+ Password Rule Settings
+ Prohibited Names Restricted Settings
+ Prohibited Names Settings

The setting templates are available through the [groupSettingTemplates resource type](/graph/api/resources/groupsettingtemplate?view=graph-rest-1.0&preserve-view=true) in `v1.0` and [directorySettingTemplates](/graph/api/resources/directorysettingtemplate?view=graph-rest-beta&preserve-view=true) resource type in `beta`. These setting templates are defined by Azure AD and are read-only.

Initially, Azure AD assigns the default configuration to the tenant and there are no setting objects. To change the default settings, you must create a new settings object from a settings template.

From the setting templates, you can configure tenant-wide settings or settings for individual objects. Use the [groupSettings resource type](/graph/api/resources/groupsetting?view=graph-rest-1.0&preserve-view=true) in `v1.0` or the [directorySetting resource type](/graph/api/resources/directorysetting?view=graph-rest-1.0&preserve-view=true) in `beta` and their associated APIs.

For groups, only settings for Microsoft 365 groups are available. The following article describes only settings that are available for Microsoft 365 groups.

## Group.Unified

The settings in this object specify whether guests can be added to all or specific Microsoft 365 groups in the tenant.

Only one setting is available in this collection.

Unless otherwise indicated, these features require an Azure AD P1 license.

| Setting name | Type | Description |
|--|--|--|
| AllowGuestsToAccessGroups | Boolean | Indicates whether a guest user can have access to Microsoft 365 groups and their data. This setting doesn't require an Azure AD P1 license. |
| AllowGuestsToBeGroupOwner | Boolean | Indicates whether a guest user can be a Microsoft 365 group owner. |
| AllowToAddGuests | Boolean | Indicating whether a Microsoft 365 group can have guest users as members. This setting may be overridden and become read-only if **EnableMIPLabels** is `true` and a guest policy is associated with the sensitivity label assigned to the group. If this setting is `false` at the tenant-level, it overrides the corresponding group-level setting when it's `true`. To enable guest access for only a few Microsoft 365 groups, set **AllowToAddGuests** to be `true` at the tenant-level, and then selectively disable this setting for individual Microsoft 365 groups to exclude. |
| ClassificationDescriptions | String | A comma-delimited list of classification descriptions. The value of ClassificationDescriptions is only valid in this format: `"Value:Description"` where *Value* matches an entry in the **ClassificationList** setting. This setting doesn't apply when **EnableMIPLabels** is `true`. Maximum character limit is 300 and commas can't be escaped. |
| ClassificationList | String | A comma-delimited list of values that can be applied to classify Microsoft 365 groups. This setting doesn't apply when **EnableMIPLabels** is `true`. For more information, see [SharePoint "modern" sites classification](/sharepoint/dev/solution-guidance/modern-experience-site-classification). |
| CustomBlockedWordsList | String | Comma-separated string of phrases that users won't be permitted to use in group names or aliases. For more information, see [Enforce a naming policy for Microsoft 365 groups](/azure/active-directory/enterprise-users/groups-naming-policy). |
| DefaultClassification | String | The classification that's used as the default classification for a Microsoft 365 group if none was specified during group creation. This setting doesn't apply when **EnableMIPLabels** is `true`. For more information, see [SharePoint "modern" sites classification](/sharepoint/dev/solution-guidance/modern-experience-site-classification). |
| EnableGroupCreation | Boolean | Indicates whether non-admin users can create Microsoft 365 groups. The default setting is `true`. This setting doesn't require an Azure AD P1 license. This setting corresponds to the _Users can create Microsoft 365 groups in Azure portals, API or PowerShell_ setting in the [group settings menu in the Azure portal](/azure/active-directory/enterprise-users/groups-self-service-management). <br/><br/> **Note:** _The Users can create security groups in Azure portals, API or PowerShell_ setting is configured through the **allowedToCreateSecurityGroups** property of the [defaultUserRolePermissions](/graph/api/resources/defaultuserrolepermissions) object of the [authorizationPolicy resource type](/graph/api/resources/authorizationpolicy).|
| EnableMSStandardBlockedWords | Boolean | Deprecated and retired. |
| EnableMIPLabels | Boolean | Indicates whether Microsoft information protection sensitivity labels published in the Microsoft Purview compliance portal can be applied to Microsoft 365 groups. For more information, see [Assign Sensitivity Labels for Microsoft 365 groups](/azure/active-directory/enterprise-users/groups-assign-sensitivity-labels). |
| GroupCreationAllowedGroupId | GUID | Identifier of the security group for which the members are allowed to create Microsoft 365 groups even when **EnableGroupCreation** is `false`. |
| GuestUsageGuidelinesUrl | String | The URL of a link to the guest usage guidelines. |
| NewUnifiedGroupWritebackDefault | Boolean | A tenant-wide setting that assigns the default value to the **writebackConfiguration/isEnabled** property of new groups, if the property isn't specified during group creation. This setting is applicable when group writeback is configured in Azure AD Connect. The default value is `true`. <br/><br/>Updating this setting to `false` changes the default writeback behavior for new Microsoft 365 groups, but won't change **writebackConfiguration/isEnabled** property for existing Microsoft 365 groups. For more information about this setting and the group's **writebackConfiguration** property, see [group resource type](/graph/api/resources/group?view=graph-rest-beta&preserve-view=true) |
| PrefixSuffixNamingRequirement | String | Defines the naming convention configured for Microsoft 365 group names and mail nicknames. Maximum character limit is 64. For more information, see [Enforce a naming policy for Microsoft 365 groups](/azure/active-directory/enterprise-users/groups-naming-policy). |
| UsageGuidelinesUrl | String | A link to the Group Usage Guidelines. The default is an empty value. |

## Group.Unified.Guest

The settings in this object specify whether guests can be added to all or specific Microsoft 365 groups in the tenant.

Only one setting is available in this collection.

| Setting name | Type | Description |
|--|--|--|
| AllowToAddGuests | Boolean | Indicates whether guest users can be added to all or specific Microsoft 365 groups. The default setting is `true`. This setting can be overwritten when: <br/><li>**EnableMIPLabels** is `true` and a guest policy is applied when a sensitivity label is assigned to a group </ul><li>**AllowToAddGuests** is `false` at the tenant-level, the group-level setting is overwritten </ul> |

## Next steps

+ [groupSettingTemplate resource type](/graph/api/resources/groupsettingtemplate?view=graph-rest-1.0&preserve-view=true)
+ [groupSettings resource type](/graph/api/resources/groupsetting?view=graph-rest-1.0&preserve-view=true)
