---
title: "managementFeatureFlightDetail resource type"
description: "Intune Deviceconfig Managementfeatureflightdetail Resources ."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 10/15/2024
---

# managementFeatureFlightDetail resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.



## Properties
|Property|Type|Description|
|:---|:---|:---|
|flightId|String|Flight id/name.|
|flightValue|String|Flight value for the requestor.|

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
