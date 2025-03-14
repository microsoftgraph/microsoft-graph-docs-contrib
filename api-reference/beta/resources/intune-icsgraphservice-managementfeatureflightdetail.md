---
title: "managementFeatureFlightDetail resource type"
description: "Represents a flight status."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# managementFeatureFlightDetail resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents a flight status.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|flightId|String|Flight id/name. It can be any string defined by feature owner in ECS. E.g., featureName or guid.|
|flightValue|String|Flight value for the requestor. See Experimental Configuration Service manual for how to make it differ depending on TenantId, UserId and DeviceId.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.managementFeatureFlightDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managementFeatureFlightDetail",
  "flightId": "String",
  "flightValue": "String"
}
```
