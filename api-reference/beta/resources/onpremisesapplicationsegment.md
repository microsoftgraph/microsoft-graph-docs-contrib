---
title: "onPremisesApplicationSegment resource type (deprecated)"
description: "Represents onPremisesApplicationSegment object when publishing an on-premises wildcard application with Azure AD Application Proxy."
ms.localizationpriority: medium
author: "dhruvinshah"
ms.prod: "applications"
doc_type: "resourcePageType"
---

# onPremisesApplicationSegment resource type (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a [onPremisesApplicationSegment](onPremisesApplicationSegment.md) object when publishing an on-premises wildcard application with Azure AD Application Proxy. This resource is used for setting an application segment for a particular wildcard application.


## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|alternateUrl|String|If you're configuring a traffic manager in front of multiple App Proxy application segments, contains the user-friendly URL that will point to the traffic manager.|
|corsConfigurations|[corsConfiguration](corsconfiguration.md) collection|CORS Rule definition for a particular application segment.|
|externalUrl|String |The published external URL for the application segment; for example, https://intranet.contoso.com./|
|internalUrl|String |The internal URL of the application segment; for example, https://intranet/.|



## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.onPremisesApplicationSegment"
}
-->
``` json
{
  "alternateUrl": "String",
    "corsConfigurations": [
    {
      "@odata.type": "microsoft.graph.corsConfiguration"
    }
  ],
  "externalUrl": "String",
  "internalUrl": "String",
}
```
