---
title: "deviceManagementComplianceScheduledActionForRule resource type"
description: "Scheduled Action for Rule"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceManagementComplianceScheduledActionForRule resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Scheduled Action for Rule

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceManagementComplianceScheduledActionForRules](../api/intune-deviceconfigv2-devicemanagementcompliancescheduledactionforrule-list.md)|[deviceManagementComplianceScheduledActionForRule](../resources/intune-deviceconfigv2-devicemanagementcompliancescheduledactionforrule.md) collection|List properties and relationships of the [deviceManagementComplianceScheduledActionForRule](../resources/intune-deviceconfigv2-devicemanagementcompliancescheduledactionforrule.md) objects.|
|[Get deviceManagementComplianceScheduledActionForRule](../api/intune-deviceconfigv2-devicemanagementcompliancescheduledactionforrule-get.md)|[deviceManagementComplianceScheduledActionForRule](../resources/intune-deviceconfigv2-devicemanagementcompliancescheduledactionforrule.md)|Read properties and relationships of the [deviceManagementComplianceScheduledActionForRule](../resources/intune-deviceconfigv2-devicemanagementcompliancescheduledactionforrule.md) object.|
|[Create deviceManagementComplianceScheduledActionForRule](../api/intune-deviceconfigv2-devicemanagementcompliancescheduledactionforrule-create.md)|[deviceManagementComplianceScheduledActionForRule](../resources/intune-deviceconfigv2-devicemanagementcompliancescheduledactionforrule.md)|Create a new [deviceManagementComplianceScheduledActionForRule](../resources/intune-deviceconfigv2-devicemanagementcompliancescheduledactionforrule.md) object.|
|[Delete deviceManagementComplianceScheduledActionForRule](../api/intune-deviceconfigv2-devicemanagementcompliancescheduledactionforrule-delete.md)|None|Deletes a [deviceManagementComplianceScheduledActionForRule](../resources/intune-deviceconfigv2-devicemanagementcompliancescheduledactionforrule.md).|
|[Update deviceManagementComplianceScheduledActionForRule](../api/intune-deviceconfigv2-devicemanagementcompliancescheduledactionforrule-update.md)|[deviceManagementComplianceScheduledActionForRule](../resources/intune-deviceconfigv2-devicemanagementcompliancescheduledactionforrule.md)|Update the properties of a [deviceManagementComplianceScheduledActionForRule](../resources/intune-deviceconfigv2-devicemanagementcompliancescheduledactionforrule.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of this setting within the policy which contains it. Automatically generated.|
|ruleName|String|Name of the rule which this scheduled action applies to.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|scheduledActionConfigurations|[deviceManagementComplianceActionItem](../resources/intune-deviceconfigv2-devicemanagementcomplianceactionitem.md) collection|The list of scheduled action configurations for this compliance policy. This collection can contain a maximum of 100 elements.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagementComplianceScheduledActionForRule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementComplianceScheduledActionForRule",
  "id": "String (identifier)",
  "ruleName": "String"
}
```