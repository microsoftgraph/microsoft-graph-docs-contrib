---
title: "deviceManagementPriorityMetaData resource type"
description: "Priority metadata of the policy."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceManagementPriorityMetaData resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

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