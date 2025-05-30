---
title: "changeAssignmentsActionResult resource type"
description: "ChangeAssignmentsActionResult represents the result of executing the changeAssignments action on tracking the live reporting data for applications or configuration regarding their removal or restoration process"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# changeAssignmentsActionResult resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

ChangeAssignmentsActionResult represents the result of executing the changeAssignments action on tracking the live reporting data for applications or configuration regarding their removal or restoration process


Inherits from [deviceActionResult](../resources/intune-devices-deviceactionresult.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionName|String|Action name Inherited from [deviceActionResult](../resources/intune-devices-deviceactionresult.md)|
|actionState|[actionState](../resources/intune-shared-actionstate.md)|State of the action Inherited from [deviceActionResult](../resources/intune-devices-deviceactionresult.md). Possible values are: `none`, `pending`, `canceled`, `active`, `done`, `failed`, `notSupported`.|
|startDateTime|DateTimeOffset|Time the action was initiated Inherited from [deviceActionResult](../resources/intune-devices-deviceactionresult.md)|
|lastUpdatedDateTime|DateTimeOffset|Time the action state was last updated Inherited from [deviceActionResult](../resources/intune-devices-deviceactionresult.md)|
|deviceAssignmentItems|[deviceAssignmentItem](../resources/intune-devices-deviceassignmentitem.md) collection|Indicates the list of applications or configuration to report live results during their changeAssignments action execution process. The result for each individual application or configuration can contain whether it's being removed or restored, what's the current status with potential message or error code, and when any changes happen on it. Read-Only. This collection can contain a maximum of 30 elements.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.changeAssignmentsActionResult"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.changeAssignmentsActionResult",
  "actionName": "String",
  "actionState": "String",
  "startDateTime": "String (timestamp)",
  "lastUpdatedDateTime": "String (timestamp)",
  "deviceAssignmentItems": [
    {
      "@odata.type": "microsoft.graph.deviceAssignmentItem",
      "itemId": "String",
      "itemType": "String",
      "itemSubTypeDisplayName": "String",
      "itemDisplayName": "String",
      "assignmentItemActionIntent": "String",
      "assignmentItemActionStatus": "String",
      "intentActionMessage": "String",
      "errorCode": 1024,
      "lastActionDateTime": "String (timestamp)",
      "lastModifiedDateTime": "String (timestamp)"
    }
  ]
}
```