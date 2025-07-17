---
title: "devicesFilter resource type"
description: "Defines a rule to filter the devices and whether devices that satisfy the rule should be allowed or blocked."
author: "vimrang"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 06/08/2024
---

# devicesFilter resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines a rule to filter the devices and whether devices that satisfy the rule should be allowed or blocked.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|mode|crossTenantAccessPolicyTargetConfigurationAccessType|Determines whether devices that satisfy the rule should be allowed or blocked. The possible values are: `allowed`, `blocked`, `unknownFutureValue`.|
|rule|String|Defines the rule to filter the devices. For example, `device.deviceAttribute2 -eq 'PrivilegedAccessWorkstation'`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.devicesFilter"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.devicesFilter",
  "mode": "String",
  "rule": "String"
}
```
