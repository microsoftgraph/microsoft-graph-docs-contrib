---
title: "Overview of group settings"
description: "Use group settings to configure tenant-wide or object-specific settings in your tenant through Microsoft Graph APIs."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: yuhko, khotzteam, aadgroupssg
ms.topic: concept-article
ms.subservice: entra-groups
ms.localizationpriority: high
ms.date: 02/21/2025
#Customer intent: As a developer, I want to learn how to use Microsoft Graph to configure tenant-wide and object-specific settings for Microsoft 365 groups, security groups, consent policies, password rules, and prohibited sames.
---

# Overview of group settings

Group settings, also known as *directory settings* in `beta`, are a collection of configurations that allow you to manage behaviors for specific Microsoft Entra objects like Microsoft 365 groups. These settings can be applied tenant-wide or to specific objects, enabling you to control various aspects of group functionality.

In this article, we explore the different types of group settings, and deep dive into the settings applicable to Microsoft 365 groups

## Types of group settings

Group settings are organized into templates, each containing a collection of individual settings. These templates are read-only and define the allowed behaviors for specific Microsoft Entra objects. The following eight groups of setting templates available:

|Setting template name  |Description  |
|---------|---------|
|Group.Unified     |  Includes settings for Microsoft 365 groups. Examples include blocked words for group names, whether a prefix should be appended to a group name, and whether sensitivity labels can be assigned to groups. For more information, see [Group.Unified](#groupunified)       |
|Group.Unified.Guest     |  Includes settings for guest access in Microsoft 365 groups.       |
|Application     |  Includes settings for managing tenant-wide application behavior.       |
|Custom Policy Settings     |  Includes the tenant-wide conditional access settings, such as URL.       |
|Consent Policy Settings     |  Includes settings for the tenant-wide consent policy, such as whether user consent is blocked for risky applications and whether users can request for admin consent.     |
|Password Rule Settings     |  Includes settings for managing tenant-wide password rule settings, such as the banned paswword list, whether banned password check is enabled, and the lockout duration after failed sign-in attempts. For more information, see [Configure custom banned passwords for Microsoft Entra password protection](/entra/identity/authentication/tutorial-configure-custom-password-protection)       |
|Prohibited Names Restricted Settings     |   Includes tenant-wide settings for prohibited names.       |
|Prohibited Names Settings     |   Includes prohibited names for applications.      |

The setting templates are available through the [groupSettingTemplates resource type](/graph/api/resources/groupsettingtemplate) in `v1.0` and [directorySettingTemplates](/graph/api/resources/directorysettingtemplate) resource type in `beta`.

Initially, Microsoft Entra ID assigns the default configuration to the tenant and there are no setting objects. To change the default settings, you must create a new settings object from a settings template.

From the setting templates, you can configure tenant-wide settings or settings for individual objects. Use the [groupSettings resource type](/graph/api/resources/groupsetting) in `v1.0` or the [directorySetting resource type](/graph/api/resources/directorysetting) in `beta` and their associated APIs.

For groups, only settings for Microsoft 365 groups are available.

## Group.Unified

This object specifies Microsoft 365 group settings for your tenant.

Unless otherwise indicated, these features require a Microsoft Entra ID P1 license.

| Setting name | Type | Description |
|--|--|--|
| AllowGuestsToAccessGroups | Boolean | Indicates whether a guest has access to Microsoft 365 groups and their data. This setting doesn't require a Microsoft Entra ID P1 license. |
| AllowGuestsToBeGroupOwner | Boolean | Indicates whether a guest can be a Microsoft 365 group owner. |
| AllowToAddGuests | Boolean | Indicates whether a Microsoft 365 group can have guests as members. This setting can be overridden and become read-only if **EnableMIPLabels** is `true` and a guest policy is associated with the sensitivity label assigned to the group. If this setting is `false` at the tenant-level, it overrides the corresponding group-level setting when it's `true`. To enable guest access for only a few Microsoft 365 groups, set **AllowToAddGuests** to be `true` at the tenant-level, and then selectively disable this setting for individual Microsoft 365 groups to exclude. |
| ClassificationDescriptions | String | A comma-delimited list of classification descriptions. A valid value has the following format: `"Value:Description"` where *Value* matches an entry in the **ClassificationList** setting. This setting doesn't apply when **EnableMIPLabels** is `true`. Maximum character limit is 300 and commas can't be escaped. |
| ClassificationList | String | A comma-delimited list of values that can be applied to classify Microsoft 365 groups. This setting doesn't apply when **EnableMIPLabels** is `true`. For more information, see [SharePoint "modern" sites classification](/sharepoint/dev/solution-guidance/modern-experience-site-classification). |
| CustomBlockedWordsList | String | Comma-separated string of phrases that users aren't permitted to use in group names or aliases. For more information, see [Enforce a naming policy for Microsoft 365 groups](/entra/identity/users/groups-naming-policy). |
| DefaultClassification | String | The default classification for a Microsoft 365 group if none was specified during group creation. This setting doesn't apply when **EnableMIPLabels** is `true`. For more information, see [SharePoint "modern" sites classification](/sharepoint/dev/solution-guidance/modern-experience-site-classification). |
| EnableGroupCreation | Boolean | Indicates whether nonadmin users can create Microsoft 365 groups. The default setting is `true`. This setting doesn't require a Microsoft Entra ID P1 license. This setting corresponds to the _Users can create Microsoft 365 groups in Azure portals, API or PowerShell_ setting in the [group settings menu in the Microsoft Entra admin center](/entra/identity/users/groups-self-service-management). <br/><br/> **Note:** _The Users can create security groups in Azure portals, API or PowerShell_ setting is configured through the **allowedToCreateSecurityGroups** property of the [defaultUserRolePermissions](/graph/api/resources/defaultuserrolepermissions) object of the [authorizationPolicy resource type](/graph/api/resources/authorizationpolicy).|
| EnableMSStandardBlockedWords | Boolean | Deprecated and retired. |
| EnableMIPLabels | Boolean | Indicates whether information protection sensitivity labels published in the Microsoft Purview compliance portal can be applied to Microsoft 365 groups. For more information, see [Assign Sensitivity Labels for Microsoft 365 groups](/entra/identity/users/groups-assign-sensitivity-labels). |
| GroupCreationAllowedGroupId | GUID | Identifier of the security group for which the members are allowed to create Microsoft 365 groups even when **EnableGroupCreation** is `false`. This setting doesn't require a Microsoft Entra ID P1 license. |
| GuestUsageGuidelinesUrl | String | The URL of a link to the guest usage guidelines. |
| NewUnifiedGroupWritebackDefault | Boolean | A tenant-wide setting that assigns the default value to the **writebackConfiguration/isEnabled** property of new groups, if the property isn't specified during group creation. This setting is applicable when group writeback is configured in Microsoft Entra Connect. The default value is `true`. <br/><br/>Updating this setting to `false` changes the default writeback behavior for new Microsoft 365 groups, but doesn't change **writebackConfiguration/isEnabled** property for existing Microsoft 365 groups. For more information about this setting and the group's **writebackConfiguration** property, see [group resource type](/graph/api/resources/group?view=graph-rest-beta&preserve-view=true) |
| PrefixSuffixNamingRequirement | String | Defines the naming convention for Microsoft 365 group names and mail nicknames. Maximum character limit is 64. For more information, see [Enforce a naming policy for Microsoft 365 groups](/entra/identity/users/groups-naming-policy). |
| UsageGuidelinesUrl | String | A link to the Group Usage Guidelines. The default is an empty value. |

## Group.Unified.Guest

The settings in this object specify whether guests can be added to all or specific Microsoft 365 groups in the tenant. Only one setting is available in this collection.

| Setting name | Type | Description |
|--|--|--|
| AllowToAddGuests | Boolean | Indicates whether guests can be added to all or specific Microsoft 365 groups. The default setting is `true`. This setting can be overwritten when: <br/><li>**EnableMIPLabels** is `true` and a guest policy is applied when a sensitivity label is assigned to a group </ul><li>**AllowToAddGuests** is `false` at the tenant-level, then the group-level setting is overwritten </ul> |

## How to manage a group setting

To manage a group setting:
1. First, retrieve the details of the group setting template you want to use by using the [List groupSettings API](/graph/api/groupsettingtemplate-list).
1. Create the group setting: Use the retrieved template to create a new group setting.
1. Update the Group Setting: If needed, update the group setting with specific values.

### Example: Configure a prefix for Microsoft 365 group names

### Step 1: Retrieve the PrefixSuffixNamingRequirement group setting configuration

You must retrieve all group settings because the API doesn't support filtering. The `PrefixSuffixNamingRequirement` group setting is contained in the `Group.Unified` template.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "group-directory-settings-get-groupsettingtemplates"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/groupSettingTemplates
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/group-directory-settings-get-groupsettingtemplates-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/group-directory-settings-get-groupsettingtemplates-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/group-directory-settings-get-groupsettingtemplates-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/group-directory-settings-get-groupsettingtemplates-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/group-directory-settings-get-groupsettingtemplates-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/group-directory-settings-get-groupsettingtemplates-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/group-directory-settings-get-groupsettingtemplates-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.groupSettingTemplate",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#groupSettingTemplates",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET groupSettingTemplates?$select=description,displayName",
    "value": [
        {
            "id": "62375ab9-6b52-47ed-826b-58e47e0e304b",
            "deletedDateTime": null,
            "displayName": "Group.Unified",
            "description": "\n        Setting templates define the different settings that can be used for the associated ObjectSettings. This template defines\n        settings that can be used for Unified Groups.\n      ",
            "values": [
                {
                    "name": "PrefixSuffixNamingRequirement",
                    "type": "System.String",
                    "defaultValue": "",
                    "description": "A structured string describing how a Unified Group displayName and mailNickname should be structured. Please refer to docs to discover how to structure a valid requirement."
                }
            ]
        }
    ]
}
```


### Step 2: Create the tenant-wide group prefix policy

#### Request

The following request specifies only the `PrefixSuffixNamingRequirement` setting. The request creates the group setting and assigns default values to other settings in the `Group.Unified` template.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "group-directory-settings-get-groupsettingtemplates"
}-->
```msgraph-interactive
POST https://graph.microsoft.com/v1.0/groupSettings

{
    "templateId": "62375ab9-6b52-47ed-826b-58e47e0e304b",
    "values": [
        {
            "name": "PrefixSuffixNamingRequirement",
            "value": "[Contoso-][GroupName]"
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/group-directory-settings-get-groupsettingtemplates-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/group-directory-settings-get-groupsettingtemplates-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/group-directory-settings-get-groupsettingtemplates-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/group-directory-settings-get-groupsettingtemplates-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/group-directory-settings-get-groupsettingtemplates-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/group-directory-settings-get-groupsettingtemplates-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/group-directory-settings-get-groupsettingtemplates-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.groupSettingTemplate",
  "isCollection": true
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#groupSettings/$entity",
    "id": "98208f14-04ff-4a4e-9a67-3dcb5fa6fd6f",
    "displayName": null,
    "templateId": "62375ab9-6b52-47ed-826b-58e47e0e304b",
    "values": [
        {
            "name": "PrefixSuffixNamingRequirement",
            "value": "[Contoso-][GroupName]"
        }
    ]
}
```

## Related content

- [groupSettingTemplate resource type](/graph/api/resources/groupsettingtemplate)
- [groupSettings resource type](/graph/api/resources/groupsetting)
