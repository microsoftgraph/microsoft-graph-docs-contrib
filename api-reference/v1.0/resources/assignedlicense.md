---
title: "assignedLicense resource type"
description: "Represents a license assigned to a user or group. The assignedLicenses property of the user or group entity is a collection of assignedLicense objects."
ms.localizationpriority: medium
author: "frank-masuelli"
ms.subservice: entra-users
doc_type: resourcePageType
ms.date: 07/23/2024
---

# assignedLicense resource type

Namespace: microsoft.graph

Represents a license assigned to a user or group. The **assignedLicenses** property of the [user](user.md) or [group](group.md) entitity is a collection of **assignedLicense** objects.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|disabledPlans|Guid collection|A collection of the unique identifiers for plans that have been disabled. IDs are available in **servicePlans** > **servicePlanId** in the tenant's [subscribedSkus](../resources/subscribedsku.md) or **serviceStatus** > **servicePlanId** in the tenant's [companySubscription](../resources/subscribedsku.md). |
|skuId|Guid|The unique identifier for the SKU. Corresponds to the **skuId** from [subscribedSkus](../resources/subscribedsku.md) or [companySubscription](../resources/companysubscription.md).|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.assignedLicense"
}-->

```json
{
  "disabledPlans": ["Guid"],
  "skuId": "Guid"
}

```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "assignedLicense resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

