---
title: "deviceAppManagementTask resource type"
description: "A device app management task."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceAppManagementTask resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A device app management task.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceAppManagementTasks](../api/intune-partnerintegration-deviceappmanagementtask-list.md)|[deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md) collection|List properties and relationships of the [deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md) objects.|
|[Get deviceAppManagementTask](../api/intune-partnerintegration-deviceappmanagementtask-get.md)|[deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md)|Read properties and relationships of the [deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md) object.|
|[Create deviceAppManagementTask](../api/intune-partnerintegration-deviceappmanagementtask-create.md)|[deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md)|Create a new [deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md) object.|
|[Delete deviceAppManagementTask](../api/intune-partnerintegration-deviceappmanagementtask-delete.md)|None|Deletes a [deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md).|
|[Update deviceAppManagementTask](../api/intune-partnerintegration-deviceappmanagementtask-update.md)|[deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md)|Update the properties of a [deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md) object.|
|[updateStatus action](../api/intune-partnerintegration-deviceappmanagementtask-updatestatus.md)|None|Set the task's status and attach a note.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The entity key.|
|displayName|String|The name.|
|description|String|The description.|
|createdDateTime|DateTimeOffset|The created date.|
|dueDateTime|DateTimeOffset|The due date.|
|category|[deviceAppManagementTaskCategory](../resources/intune-partnerintegration-deviceappmanagementtaskcategory.md)|The category. The possible values are: `unknown`, `advancedThreatProtection`.|
|priority|[deviceAppManagementTaskPriority](../resources/intune-partnerintegration-deviceappmanagementtaskpriority.md)|The priority. The possible values are: `none`, `high`, `low`.|
|creator|String|The email address of the creator.|
|creatorNotes|String|Notes from the creator.|
|assignedTo|String|The name or email of the admin this task is assigned to.|
|status|[deviceAppManagementTaskStatus](../resources/intune-partnerintegration-deviceappmanagementtaskstatus.md)|The status. The possible values are: `unknown`, `pending`, `active`, `completed`, `rejected`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceAppManagementTask"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceAppManagementTask",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "createdDateTime": "String (timestamp)",
  "dueDateTime": "String (timestamp)",
  "category": "String",
  "priority": "String",
  "creator": "String",
  "creatorNotes": "String",
  "assignedTo": "String",
  "status": "String"
}
```