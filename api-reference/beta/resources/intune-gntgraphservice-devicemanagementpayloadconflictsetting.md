---
title: "deviceManagementPayloadConflictSetting resource type"
description: "Represents the assignment of a payload to a specific target, used to manage and track the details of payload assignments within the system."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceManagementPayloadConflictSetting resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents the assignment of a payload to a specific target, used to manage and track the details of payload assignments within the system.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|payloadId|String|Indicates the identifier of a payload assigned to a target. Read-Only.|
|conflictSetting|[organizationalUnitAssignmentConflictSetting](../resources/intune-gntgraphservice-organizationalunitassignmentconflictsetting.md)|Indicates the conflict settings of a payload belonging to a conflict area.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceManagementPayloadConflictSetting"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementPayloadConflictSetting",
  "payloadId": "String",
  "conflictSetting": {
    "@odata.type": "microsoft.graph.organizationalUnitAssignmentConflictSetting",
    "assignmentOverride": "String",
    "versionNumber": 1024
  }
}
```