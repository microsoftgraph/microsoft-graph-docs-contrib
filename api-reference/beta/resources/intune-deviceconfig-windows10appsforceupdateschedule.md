---
title: "windows10AppsForceUpdateSchedule resource type"
description: "Windows 10 force update schedule for Apps"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# windows10AppsForceUpdateSchedule resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Windows 10 force update schedule for Apps

## Properties
|Property|Type|Description|
|:---|:---|:---|
|startDateTime|DateTimeOffset|The start time for the force restart.|
|recurrence|[windows10AppsUpdateRecurrence](../resources/intune-deviceconfig-windows10appsupdaterecurrence.md)|Recurrence schedule. The possible values are: `none`, `daily`, `weekly`, `monthly`.|
|runImmediatelyIfAfterStartDateTime|Boolean|If true, runs the task immediately if StartDateTime is in the past, else, runs at the next recurrence.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windows10AppsForceUpdateSchedule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windows10AppsForceUpdateSchedule",
  "startDateTime": "String (timestamp)",
  "recurrence": "String",
  "runImmediatelyIfAfterStartDateTime": true
}
```