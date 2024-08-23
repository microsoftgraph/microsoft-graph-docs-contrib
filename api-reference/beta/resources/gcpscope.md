---
title: "gcpScope resource type"
description: "Represents the service and resource type of a GCP resource"
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
---

# gcpScope resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the service and resource type of a GCP resource. For example, a compute instance resource has a `compute` **service** and `instances` **resourceType**.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|resourceType|String|Type of GCP resource.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|service|[authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md)|Service associated with a resource in an authorization system. This is auto-expanded.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.gcpScope"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.gcpScope",
  "resourceType": "String"
}
```

