---
title: "corsConfiguration resource type (deprecated)"
description: "Represents the CORS settings for an on-premises application segment published via Application Proxy."
ms.localizationpriority: medium
author: "dhruvinrshah"
ms.subservice: "entra-applications"
doc_type: "resourcePageType"
ms.date: 07/26/2024
---

# corsConfiguration resource type (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the CORS settings for the [onPremisesApplicationSegment](onPremisesApplicationSegment.md) resource when publishing an on-premises application through Microsoft Entra application proxy. For more information, see [Understand and solve Microsoft Entra application proxy CORS issues](/azure/active-directory/app-proxy/application-proxy-understand-cors-issues).


## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|allowedHeaders|String Collection|The request headers that the origin domain may specify on the CORS request. The wildcard character `*` indicates that any header beginning with the specified prefix is allowed.|
|allowedMethods|String Collection|The HTTP request methods that the origin domain may use for a CORS request.|
|allowedOrigins|String Collection|The origin domains that are permitted to make a request against the service via CORS. The origin domain is the domain from which the request originates. The origin must be an exact case-sensitive match with the origin that the user age sends to the service. |
|maxAgeInSeconds|Integer|The maximum amount of time that a browser should cache the response to the preflight **OPTIONS** request.|
|resource|String|Resource within the application segment for which CORS permissions are granted. `/` grants permission for whole app segment.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.corsConfiguration",
  "baseType": null
}-->

```json
{
  "@odata.type": "#microsoft.graph.corsConfiguration",
  "resource": "String",
  "allowedOrigins": [
    "String"
  ],
  "allowedHeaders": [
    "String"
  ],
  "allowedMethods": [
    "String"
  ],
  "maxAgeInSeconds": "Integer"
}
```

<!-- {
  "type": "#page.annotation",
  "description": "corsConfiguration resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
