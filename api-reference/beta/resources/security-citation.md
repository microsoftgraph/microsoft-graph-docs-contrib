---
title: "citation resource type"
description: "Represents the file plan descriptor of type citation applied to a particular retention label."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# citation resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the file plan descriptor of type citation applied to a particular retention label.


Inherits from [microsoft.graph.security.filePlanDescriptorBase](../resources/security-fileplandescriptorBase.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|citationJurisdiction|String|Represents the jurisdiction or agency that published the citation.|
|citationUrl|String|Represents the URL to the published citation.|
|displayName|String|Unique string that defines a citation name. Inherited from [microsoft.graph.security.filePlanDescriptor](../resources/security-fileplandescriptor.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.citation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.citation",
  "displayName": "String",
  "citationUrl": "String",
  "citationJurisdiction": "String"
}
```

