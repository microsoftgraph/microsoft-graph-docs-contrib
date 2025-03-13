---
title: "serviceUsage resource type"
description: "Represents monthly active usage data for a service in a managed tenant."
author: "kylewirpel"
ms.localizationpriority: medium
ms.subservice: "m365-lighthouse"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# serviceUsage resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents monthly active usage data for a service in a managed tenant.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|monthlyActiveUsers|Int32|Number of monthly active users of the service. Required. Read-only.|
|serviceName|String|The name for the Microsoft 365 service that generated the usage. Required. Read-only.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.managedTenants.serviceUsage"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.serviceUsage",
  "serviceName": "String",
  "monthlyActiveUsers": "Integer"
}
```

