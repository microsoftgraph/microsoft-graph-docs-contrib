---
title: "subjectRightsRequestEnumeratedSiteLocation resource type"
description: "Represents the properties for a subject rights request that defines specific sites (SharePoint sites, OneDrive for Business sites, and Microsoft Teams channels) as a search location."
author: "skadam-msft"
ms.localizationpriority: medium
ms.prod: "compliance"
doc_type: resourcePageType
---

# subjectRightsRequestEnumeratedSiteLocation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the properties for a subject rights request that defines specific sites (SharePoint sites, OneDrive for Business sites, and Microsoft Teams channels) as a search location.

Inherits from [subjectRightsRequestSiteLocation](../resources/subjectrightsrequestsitelocation.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|urls|String collection|Collection of site URLs that should be included. Includes the URL of each site, for example, `https://www.contoso.com/site1`.|

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
    "String"
  ]
}
```

