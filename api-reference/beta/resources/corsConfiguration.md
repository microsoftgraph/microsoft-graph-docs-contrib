---
title: "corsConfiguration resource type"
description: "Represents the CORS settings for an on-premises application segment published via Application Proxy."
ms.localizationpriority: medium
author: "dhruvinshah"
ms.prod: "applications"
doc_type: "resourcePageType"
---

# corsConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the CORS settings for the [onPremisesApplicationSegment](onPremisesApplicationSegment.md) resource when publishing an on-premises application with Azure AD Application Proxy. This resource is used for setting CORS Rule for a particular application segment. For more information, see [Understand and solve Azure Active Directory Application Proxy CORS issues](/azure/active-directory/app-proxy/application-proxy-understand-cors-issues).


## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|resource|String|Resource within the application segment for which CORS permissions are granted. "/" would grant permission for whole app segment.|
|allowedOrigins|String Collection|The origin domains that are permitted to make a request against the service via CORS. The origin domain is the domain from which the request originates. Note that the origin must be an exact case-sensitive match with the origin that the user age sends to the service. |
|allowedHeaders|String Collection|The request headers that the origin domain may specify on the CORS request. Note that the wildcard character '*' indicates that any header beginning with the specified prefix is allowed.|
|allowedMethods|String Collection|The methods (HTTP request verbs) that the origin domain may use for a CORS request.|
|maxAgeInSeconds|Integer|The maximum amount time that a browser should cache the preflight OPTIONS request.|


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.corsConfiguration",
  "baseType": null
}-->

```json
{
"resource":"/",
"allowedOrigins":["https://contoso.com/"],
"allowedHeaders":["x-ms-meta-data", "x-ms-meta-target"],
"allowedMethods":["PUT","GET"],
"maxAgeInSeconds":3600
}
```

<!-- {
  "type": "#page.annotation",
  "description": "corsConfiguration resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
