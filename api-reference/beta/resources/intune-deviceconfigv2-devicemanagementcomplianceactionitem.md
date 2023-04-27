---
title: "deviceManagementComplianceActionItem resource type"
description: "Scheduled Action for Rule"
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagementComplianceActionItem resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Scheduled Action for Rule

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceManagementComplianceActionItems](../api/intune-deviceconfigv2-devicemanagementcomplianceactionitem-list.md)|[deviceManagementComplianceActionItem](../resources/intune-deviceconfigv2-devicemanagementcomplianceactionitem.md) collection|List properties and relationships of the [deviceManagementComplianceActionItem](../resources/intune-deviceconfigv2-devicemanagementcomplianceactionitem.md) objects.|
|[Get deviceManagementComplianceActionItem](../api/intune-deviceconfigv2-devicemanagementcomplianceactionitem-get.md)|[deviceManagementComplianceActionItem](../resources/intune-deviceconfigv2-devicemanagementcomplianceactionitem.md)|Read properties and relationships of the [deviceManagementComplianceActionItem](../resources/intune-deviceconfigv2-devicemanagementcomplianceactionitem.md) object.|
|[Create deviceManagementComplianceActionItem](../api/intune-deviceconfigv2-devicemanagementcomplianceactionitem-create.md)|[deviceManagementComplianceActionItem](../resources/intune-deviceconfigv2-devicemanagementcomplianceactionitem.md)|Create a new [deviceManagementComplianceActionItem](../resources/intune-deviceconfigv2-devicemanagementcomplianceactionitem.md) object.|
|[Delete deviceManagementComplianceActionItem](../api/intune-deviceconfigv2-devicemanagementcomplianceactionitem-delete.md)|None|Deletes a [deviceManagementComplianceActionItem](../resources/intune-deviceconfigv2-devicemanagementcomplianceactionitem.md).|
|[Update deviceManagementComplianceActionItem](../api/intune-deviceconfigv2-devicemanagementcomplianceactionitem-update.md)|[deviceManagementComplianceActionItem](../resources/intune-deviceconfigv2-devicemanagementcomplianceactionitem.md)|Update the properties of a [deviceManagementComplianceActionItem](../resources/intune-deviceconfigv2-devicemanagementcomplianceactionitem.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of this setting within the policy which contains it. Automatically generated.|
|gracePeriodHours|Int32|Number of hours to wait till the action will be enforced. Valid values 0 to 8760|
|actionType|[deviceManagementComplianceActionType](../resources/intune-deviceconfigv2-devicemanagementcomplianceactiontype.md)|What action to take. Possible values are: `noAction`, `notification`, `block`, `retire`, `wipe`, `removeResourceAccessProfiles`, `pushNotification`, `remoteLock`.|
|notificationTemplateId|String|What notification Message template to use|
|notificationMessageCCList|String collection|A list of group IDs to speicify who to CC this notification message to. This collection can contain a maximum of 100 elements.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagementComplianceActionItem"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementComplianceActionItem",
  "id": "String (identifier)",
  "gracePeriodHours": 1024,
  "actionType": "String",
  "notificationTemplateId": "String",
  "notificationMessageCCList": [
    "String"
  ]
}
```
