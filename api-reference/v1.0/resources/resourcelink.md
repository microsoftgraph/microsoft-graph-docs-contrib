---
title: "resourceLink resource type"
description: "Represents external links that should be associated with a building in Places, such as a dining menu or a link to other services."
author: tiwarisakshi02
ms.date: 11/11/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: resourcePageType
---

# resourceLink resource type

Namespace: microsoft.graph

Represents external links that should be associated with a [building](./building.md) in Places, such as a dining menu or a link to other services.

For more information on how to set up services in Places, see [Add services to buildings](/microsoft-365/places/services-in-places).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|linkType|resourceLinkType|Type of link. The possible values are: `url`, `unknownFutureValue`.|
|name|String|The link text that is visible in the Places app. The maximum length is 200 characters.|
|value|String|The URL of the resource link. The maximum length is 200 characters.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.resourceLink"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.resourceLink",
  "linkType": "String",
  "name": "String",
  "value": "String"
}
```

