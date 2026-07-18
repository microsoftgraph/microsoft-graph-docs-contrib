---
title: "placeServicePlanInfo resource type"
description: "Represents details of a service plan associated with a place."
author: tiwarisakshi02
ms.date: 07/03/2026
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: resourcePageType
---

# placeServicePlanInfo resource type

Namespace: microsoft.graph

Represents details of a service plan associated with a place.

This type is returned by the **servicePlans** property of the [desk](./desk.md) resource.

## Properties

|Property|Type|Description|
|:--|:--|:--|
|servicePlanId|String|The service plan identifier.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.placeServicePlanInfo",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.placeServicePlanInfo",
  "servicePlanId": "String"
}
```