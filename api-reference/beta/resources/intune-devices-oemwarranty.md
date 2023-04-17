---
title: "oemWarranty resource type"
description: "OEM Warranty information for a given device"
author: "dougeby"
localization_priority: Normal
ms.prod: "Intune"
doc_type: resourcePageType
---

# oemWarranty resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

OEM Warranty information for a given device

## Properties
|Property|Type|Description|
|:---|:---|:---|
|baseWarranties|[warrantyOffer](../resources/intune-devices-warrantyoffer.md) collection|List of base warranty offers. This collection can contain a maximum of 100 elements.|
|additionalWarranties|[warrantyOffer](../resources/intune-devices-warrantyoffer.md) collection|List of additional warranty offers. This collection can contain a maximum of 100 elements.|
|deviceWarrantyUrl|String|Device warranty page URL|
|deviceConfigurationUrl|String|Device configuration page URL|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.oemWarranty"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.oemWarranty",
  "baseWarranties": [
    {
      "@odata.type": "microsoft.graph.warrantyOffer",
      "type": "String",
      "description": "String",
      "startDateTime": "String (timestamp)",
      "endDateTime": "String (timestamp)"
    }
  ],
  "additionalWarranties": [
    {
      "@odata.type": "microsoft.graph.warrantyOffer",
      "type": "String",
      "description": "String",
      "startDateTime": "String (timestamp)",
      "endDateTime": "String (timestamp)"
    }
  ],
  "deviceWarrantyUrl": "String",
  "deviceConfigurationUrl": "String"
}
```




