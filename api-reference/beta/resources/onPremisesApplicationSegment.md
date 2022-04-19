---
title: "onPremisesApplicationSegment resource type"
description: "Represents the CORS settings for an on-premises application segment published via Application Proxy."
ms.localizationpriority: medium
author: "dhruvinshah"
ms.prod: "applications"
doc_type: "resourcePageType"
---

# onPremisesApplicationSegment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents [onPremisesApplicationSegment](onPremisesApplicationSegment.md) resource when publishing an on-premises application with Azure AD Application Proxy. This resource is used for setting application segment for a particular application.


## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|alternateUrl|String|If you are configuring a traffic manager in front of multiple App Proxy application segments, the alternateUrl is the user-friendly URL that will point to the traffic manager.|
|corsConfigurations|[corsConfiguration](corsConfiguration.md)|CORS Rule definition for particular application segment.|
|externalUrl|String |The published external url for the application segment. For example, https://intranet-contoso.msappproxy.net/|
|internalUrl|String |The internal url of the application segment. For example, https://intranet/.|



## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.onPremisesApplicationSegment",
  "baseType": null
}-->

```json
{
"alternateUrl":"String",
"corsConfigurations":{"@odata.type": "microsoft.graph.corsConfiguration"},
"externalUrl":"String",
"internalUrl":"String"
}
```

<!-- {
  "type": "#page.annotation",
  "description": "onPremisesApplicationSegment resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
