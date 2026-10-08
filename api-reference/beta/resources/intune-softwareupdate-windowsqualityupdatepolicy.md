---
title: "windowsQualityUpdatePolicy resource type"
description: "Windows Quality Update Policy"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# windowsQualityUpdatePolicy resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Windows Quality Update Policy

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List windowsQualityUpdatePolicies](../api/intune-softwareupdate-windowsqualityupdatepolicy-list.md)|[windowsQualityUpdatePolicy](../resources/intune-softwareupdate-windowsqualityupdatepolicy.md) collection|List properties and relationships of the [windowsQualityUpdatePolicy](../resources/intune-softwareupdate-windowsqualityupdatepolicy.md) objects.|
|[Get windowsQualityUpdatePolicy](../api/intune-softwareupdate-windowsqualityupdatepolicy-get.md)|[windowsQualityUpdatePolicy](../resources/intune-softwareupdate-windowsqualityupdatepolicy.md)|Read properties and relationships of the [windowsQualityUpdatePolicy](../resources/intune-softwareupdate-windowsqualityupdatepolicy.md) object.|
|[Create windowsQualityUpdatePolicy](../api/intune-softwareupdate-windowsqualityupdatepolicy-create.md)|[windowsQualityUpdatePolicy](../resources/intune-softwareupdate-windowsqualityupdatepolicy.md)|Create a new [windowsQualityUpdatePolicy](../resources/intune-softwareupdate-windowsqualityupdatepolicy.md) object.|
|[Delete windowsQualityUpdatePolicy](../api/intune-softwareupdate-windowsqualityupdatepolicy-delete.md)|None|Deletes a [windowsQualityUpdatePolicy](../resources/intune-softwareupdate-windowsqualityupdatepolicy.md).|
|[Update windowsQualityUpdatePolicy](../api/intune-softwareupdate-windowsqualityupdatepolicy-update.md)|[windowsQualityUpdatePolicy](../resources/intune-softwareupdate-windowsqualityupdatepolicy.md)|Update the properties of a [windowsQualityUpdatePolicy](../resources/intune-softwareupdate-windowsqualityupdatepolicy.md) object.|
|[assign action](../api/intune-softwareupdate-windowsqualityupdatepolicy-assign.md)|None||
|[bulkAction action](../api/intune-softwareupdate-windowsqualityupdatepolicy-bulkaction.md)|[bulkCatalogItemActionResult](../resources/intune-softwareupdate-bulkcatalogitemactionresult.md)||
|[retrieveWindowsQualityUpdateCatalogItemDetails function](../api/intune-softwareupdate-windowsqualityupdatepolicy-retrievewindowsqualityupdatecatalogitemdetails.md)|[windowsQualityUpdateCatalogItemPolicyDetail](../resources/intune-softwareupdate-windowsqualityupdatecatalogitempolicydetail.md) collection||

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|This id is assigned when creating the profile. Read-only|
|displayName|String|The display name for the policy. Max allowed length is 200 chars.|
|description|String|The description of the policy which is specified by the user. Max allowed length is 1500 chars.|
|createdDateTime|DateTimeOffset|Timestamp of when the profile was created. The value cannot be modified and is automatically populated when the profile is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. Read-only|
|lastModifiedDateTime|DateTimeOffset|Timestamp of when the profile was modified. The value cannot be modified and is automatically populated when the profile is modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. Read-only|
|roleScopeTagIds|String collection|List of the scope tag ids for this profile.|
|hotpatchEnabled|Boolean|Indicates if hotpatch is enabled for the tenants. When 'true', tenant can apply quality updates without rebooting their devices. When 'false', tenant devices will receive cold patch associated with Windows quality updates.|
|approvalSettings|[windowsQualityUpdateApprovalSetting](../resources/intune-softwareupdate-windowsqualityupdateapprovalsetting.md) collection|The list of approval settings for this policy. The maximun number of approval settings supported for one policy is 6. The expected number of approval settings for one policy from UX is 4.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[windowsQualityUpdatePolicyAssignment](../resources/intune-softwareupdate-windowsqualityupdatepolicyassignment.md) collection|List of the groups this profile is assgined to.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsQualityUpdatePolicy"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsQualityUpdatePolicy",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "roleScopeTagIds": [
    "String"
  ],
  "hotpatchEnabled": true,
  "approvalSettings": [
    {
      "@odata.type": "microsoft.graph.windowsQualityUpdateApprovalSetting",
      "windowsQualityUpdateCadence": "String",
      "windowsQualityUpdateCategory": "String",
      "approvalMethodType": "String",
      "deferredDeploymentInDay": 1024
    }
  ]
}
```