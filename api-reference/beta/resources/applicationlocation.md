---
title: "applicationLocation resource type"
description: "Represents the geographical and operational locations associated with an application, such as where its primary data center and headquarters are based."
author: "HildaK-pm"
ms.date: 10/13/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
---

# applicationLocation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the location attributes of an [application](../resources/applicationtemplate.md) used to indicate where its infrastructure operates and where the owning organization is based.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|dataCenter|String|Specifies the region or physical location where the application's primary data center is hosted.|
|headquarters|String|Specifies the city, country or region where the application's owning organization is headquartered.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.applicationLocation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.applicationLocation",
  "dataCenter": "String",
  "headquarters": "String"
}
```

