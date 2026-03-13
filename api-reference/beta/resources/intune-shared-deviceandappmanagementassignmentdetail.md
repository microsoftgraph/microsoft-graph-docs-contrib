---
title: "deviceAndAppManagementAssignmentDetail resource type"
description: "Abstract polymorphic base class for capturing all properties besides the following common properties for payload assignment - group, assignment filter, identifier information. If a workload assignment has no other properties besides the common assignment properties, then the workload does not need to create a derived type. For example, DCv2 has no other assignment properties and so won't need a derived type."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceAndAppManagementAssignmentDetail resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Abstract polymorphic base class for capturing all properties besides the following common properties for payload assignment - group, assignment filter, identifier information. If a workload assignment has no other properties besides the common assignment properties, then the workload does not need to create a derived type. For example, DCv2 has no other assignment properties and so won't need a derived type.

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceAndAppManagementAssignmentDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementAssignmentDetail"
}
```