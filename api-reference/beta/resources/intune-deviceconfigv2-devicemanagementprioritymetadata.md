---
title: "deviceManagementPriorityMetaData resource type"
description: "Priority metadata of the policy."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagementPriorityMetaData resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Priority metadata of the policy.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|priority|Int32|Priority of the policy. Valid values 1 to 500|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceManagementPriorityMetaData"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementPriorityMetaData",
  "priority": 1024
}
```
