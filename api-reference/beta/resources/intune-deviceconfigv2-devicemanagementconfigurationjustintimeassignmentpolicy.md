---
title: "deviceManagementConfigurationJustInTimeAssignmentPolicy resource type"
description: "The DeviceManagementConfigurationJustInTimeAssignmentPolicy entity is used to create a just-in-time assignment of specific DeviceManagementConfigurationPolicy to an AAD group."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: resourcePageType
---

# deviceManagementConfigurationJustInTimeAssignmentPolicy resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The DeviceManagementConfigurationJustInTimeAssignmentPolicy entity is used to create a just-in-time assignment of specific DeviceManagementConfigurationPolicy to an AAD group.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|targetType|[deviceManagementConfigurationJustInTimeAssignmentPolicyType](../resources/intune-deviceconfigv2-devicemanagementconfigurationjustintimeassignmentpolicytype.md)|Type of the target. Possible values are Entra Security Group or Organization Unit (Ou). Default value : unknown. Possible values are: `unknown`, `entraSecurityGroup`, `organizationalUnit`, `unknownFutureValue`.|
|target|String collection|A list of unique identifiers representing static Entra Security Group IDs or Organizational Units to create the just-in-time assignment for newly enrolled devices.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceManagementConfigurationJustInTimeAssignmentPolicy"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementConfigurationJustInTimeAssignmentPolicy",
  "targetType": "String",
  "target": [
    "String"
  ]
}
```
