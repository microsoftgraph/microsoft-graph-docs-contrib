---
title: "deviceInfo resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 04/03/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# deviceInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


## Properties
|Property|Type|Description|
|:---|:---|:---|
|deviceId|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|enrollmentProfileName|String|**TODO: Add Description**|
|extensionAttribute1|String|**TODO: Add Description**|
|extensionAttribute10|String|**TODO: Add Description**|
|extensionAttribute11|String|**TODO: Add Description**|
|extensionAttribute12|String|**TODO: Add Description**|
|extensionAttribute13|String|**TODO: Add Description**|
|extensionAttribute14|String|**TODO: Add Description**|
|extensionAttribute15|String|**TODO: Add Description**|
|extensionAttribute2|String|**TODO: Add Description**|
|extensionAttribute3|String|**TODO: Add Description**|
|extensionAttribute4|String|**TODO: Add Description**|
|extensionAttribute5|String|**TODO: Add Description**|
|extensionAttribute6|String|**TODO: Add Description**|
|extensionAttribute7|String|**TODO: Add Description**|
|extensionAttribute8|String|**TODO: Add Description**|
|extensionAttribute9|String|**TODO: Add Description**|
|isCompliant|Boolean|**TODO: Add Description**|
|manufacturer|String|**TODO: Add Description**|
|mdmAppId|String|**TODO: Add Description**|
|model|String|**TODO: Add Description**|
|operatingSystem|String|**TODO: Add Description**|
|operatingSystemVersion|String|**TODO: Add Description**|
|ownership|String|**TODO: Add Description**|
|physicalIds|String collection|**TODO: Add Description**|
|profileType|String|**TODO: Add Description**|
|systemLabels|String collection|**TODO: Add Description**|
|trustType|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceInfo",
  "deviceId": "String",
  "ownership": "String",
  "displayName": "String",
  "enrollmentProfileName": "String",
  "isCompliant": "Boolean",
  "mdmAppId": "String",
  "operatingSystem": "String",
  "operatingSystemVersion": "String",
  "physicalIds": [
    "String"
  ],
  "profileType": "String",
  "systemLabels": [
    "String"
  ],
  "trustType": "String",
  "manufacturer": "String",
  "model": "String",
  "extensionAttribute1": "String",
  "extensionAttribute2": "String",
  "extensionAttribute3": "String",
  "extensionAttribute4": "String",
  "extensionAttribute5": "String",
  "extensionAttribute6": "String",
  "extensionAttribute7": "String",
  "extensionAttribute8": "String",
  "extensionAttribute9": "String",
  "extensionAttribute10": "String",
  "extensionAttribute11": "String",
  "extensionAttribute12": "String",
  "extensionAttribute13": "String",
  "extensionAttribute14": "String",
  "extensionAttribute15": "String"
}
```

