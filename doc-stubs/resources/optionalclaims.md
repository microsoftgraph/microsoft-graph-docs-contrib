---
title: "optionalClaims resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# optionalClaims resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessToken|[optionalClaim](../resources/optionalclaim.md) collection|**TODO: Add Description**|
|idToken|[optionalClaim](../resources/optionalclaim.md) collection|**TODO: Add Description**|
|saml2Token|[optionalClaim](../resources/optionalclaim.md) collection|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.optionalClaims"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.optionalClaims",
  "idToken": [
    {
      "@odata.type": "microsoft.graph.optionalClaim"
    }
  ],
  "accessToken": [
    {
      "@odata.type": "microsoft.graph.optionalClaim"
    }
  ],
  "saml2Token": [
    {
      "@odata.type": "microsoft.graph.optionalClaim"
    }
  ]
}
```

