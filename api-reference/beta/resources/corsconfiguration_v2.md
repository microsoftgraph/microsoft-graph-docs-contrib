---
title: "corsConfiguration_v2 resource type"
description: "Represents the CORS settings for an on-premises web application segment published via Application Proxy."
ms.localizationpriority: medium
author: "dhruvinshah"
ms.prod: "applications"
doc_type: "resourcePageType"
---

# corsConfiguration_v2 resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the CORS settings for the [webApplicationSegment](webapplicationsegment.md) resource when publishing an on-premises application through Azure AD Application Proxy. For more information, see [Understand and solve Azure Active Directory Application Proxy CORS issues](/azure/active-directory/app-proxy/application-proxy-understand-cors-issues).


## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|allowedHeaders|String Collection|The request headers that the origin domain may specify on the CORS request. The wildcard character `*` indicates that any header beginning with the specified prefix is allowed.|
|allowedMethods|String Collection|The HTTP request methods that the origin domain may use for a CORS request.|
|allowedOrigins|String Collection|The origin domains that are permitted to make a request against the service via CORS. The origin domain is the domain from which the request originates. The origin must be an exact case-sensitive match with the origin that the user agent sends to the service. |
|id|String|The unique identifier for the CORS configuration that is assigned to a CORS rule by Azure AD. Not nullable. Read-only. Supports `$filter` (`eq`).  |
|maxAgeInSeconds|Integer|The maximum amount of time that a browser should cache the response to the preflight **OPTIONS** request.|
|resource|String|Resource within the application segment for which CORS permissions are granted. `/` grants permission for the whole app segment.|


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.corsConfiguration_v2",
  "baseType": null
}-->

```json
{
  "@odata.type": "microsoft.graph.corsConfiguration_v2",
  "allowedHeaders": [
    "String"
  ],
  "allowedMethods": [
    "String"
  ],
  "allowedOrigins": [
    "String"
  ],
  "id": "String (identifier)",
  "maxAgeInSeconds": "Integer",
  "resource": "String"
}
```

<!-- {
  "type": "#page.annotation",
  "description": "corsConfiguration resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
