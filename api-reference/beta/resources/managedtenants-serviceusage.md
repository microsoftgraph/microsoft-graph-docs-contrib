---
title: "serviceUsage resource type"
description: "Represents Microsoft 365 service usage for a managed tenant."
author: "kylewirpel"
ms.localizationpriority: medium
ms.prod: "microsoft-365-lighthouse"
doc_type: resourcePageType
---

# serviceUsage resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents monthly active usage data for a service in a managed tenant.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|monthlyActiveUsers|Int32|Number of monthly active users of the service. Required. Read-only.|
|serviceName|String|Name of the service. Example services: `Excel`, `Exchange`, `Intune`, `Outlook`, `Teams`, `Word`. Required. Read-only.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

