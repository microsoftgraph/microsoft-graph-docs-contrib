---
title: "certificateBasedAuthConfiguration resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# certificateBasedAuthConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List certificateBasedAuthConfigurations](../api/certificatebasedauthconfiguration-list.md)|[certificateBasedAuthConfiguration](../resources/certificatebasedauthconfiguration.md) collection|Get a list of the [certificateBasedAuthConfiguration](../resources/certificatebasedauthconfiguration.md) objects and their properties.|
|[Create certificateBasedAuthConfiguration](../api/certificatebasedauthconfiguration-post-certificatebasedauthconfiguration.md)|[certificateBasedAuthConfiguration](../resources/certificatebasedauthconfiguration.md)|Create a new [certificateBasedAuthConfiguration](../resources/certificatebasedauthconfiguration.md) object.|
|[Get certificateBasedAuthConfiguration](../api/certificatebasedauthconfiguration-get.md)|[certificateBasedAuthConfiguration](../resources/certificatebasedauthconfiguration.md)|Read the properties and relationships of a [certificateBasedAuthConfiguration](../resources/certificatebasedauthconfiguration.md) object.|
|[Update certificateBasedAuthConfiguration](../api/certificatebasedauthconfiguration-update.md)|[certificateBasedAuthConfiguration](../resources/certificatebasedauthconfiguration.md)|Update the properties of a [certificateBasedAuthConfiguration](../resources/certificatebasedauthconfiguration.md) object.|
|[Delete certificateBasedAuthConfiguration](../api/certificatebasedauthconfiguration-delete.md)|None|Deletes a [certificateBasedAuthConfiguration](../resources/certificatebasedauthconfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|certificateAuthorities|[certificateAuthority](../resources/certificateauthority.md) collection|**TODO: Add Description**|
|id|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.certificateBasedAuthConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.certificateBasedAuthConfiguration",
  "id": "String (identifier)",
  "certificateAuthorities": [
    {
      "@odata.type": "microsoft.graph.certificateAuthority"
    }
  ]
}
```

