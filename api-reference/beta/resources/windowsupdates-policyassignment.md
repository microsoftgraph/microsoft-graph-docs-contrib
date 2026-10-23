---
title: "policyAssignment resource type"
description: "Represents a read-only assignment that associates a Windows Autopatch policy with a device."
author: "arorariya"
ms.date: 09/21/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: resourcePageType
---

# policyAssignment resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a read-only assignment that associates a Windows Autopatch policy with a device.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List policyAssignments](../api/windowsupdates-updatedata-list-policyassignments.md)|[microsoft.graph.windowsUpdates.policyAssignment](../resources/windowsupdates-policyassignment.md) collection|List policy assignments and their associated devices.|
|[Get policy assignment](../api/windowsupdates-policyassignment-get.md)|[microsoft.graph.windowsUpdates.policyAssignment](../resources/windowsupdates-policyassignment.md)|Read the properties and relationships of a policy assignment.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|azureAdDeviceId|String|The Microsoft Entra identifier of the assigned device. Read-only.|
|id|String|The unique identifier for the assignment. Read-only.|
|policyId|String|The identifier of the assigned Windows Autopatch policy. Read-only.|
|policyName|String|The display name of the assigned Windows Autopatch policy. Read-only.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|deviceProfile|[microsoft.graph.windowsUpdates.deviceProfile](../resources/windowsupdates-deviceprofile.md)|The profile of the assigned device.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.policyAssignment",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.policyAssignment",
  "azureAdDeviceId": "String",
  "id": "String (identifier)",
  "policyId": "String",
  "policyName": "String"
}
```
