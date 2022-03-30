---
title: "subjectRightsRequestEnumeratedSiteLocation resource type"
description: "Represents the properties for subject rights request enumerated site location."
author: "skadam-msft"
ms.localizationpriority: medium
ms.prod: "compliance"
doc_type: resourcePageType
---

# subjectRightsRequestEnumeratedSiteLocation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the properties for subject rights request enumerated site location. This type should be used only when specified list of sites should be searched.

Inherits from [subjectRightsRequestSiteLocation](../resources/subjectrightsrequestsitelocation.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|urls|String collection|Collection of site url that should be included. Include the url of the site. For example https://www.contoso.com/site1|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.subjectRightsRequestEnumeratedSiteLocation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.subjectRightsRequestEnumeratedSiteLocation",
  "urls": [
    "https://www.contoso.com/site1",
    "https://www.contoso.com/site2"
  ]
}
```

