---
title: "enumeratedDomains resource type"
description: "A derived complex type that defines the specified domains that Microsoft Entra ID validates."
author: "vimrang"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 03/06/2024
---

# enumeratedDomains resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A derived complex type that defines the specified domains that Microsoft Entra ID validates.

Inherits from [validatingDomains](../resources/validatingdomains.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|domainNames|String collection|List of federated or managed root domains that Microsoft Entra ID validates.|
|rootDomains|rootDomains|Defines the types of domains that Microsoft Entra ID validates. Inherited from [validatingDomains](../resources/validatingdomains.md). The possible values are: `none`, `all`, `allFederated`, `allManaged`, `enumerated`, `allManagedAndEnumeratedFederated`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.enumeratedDomains"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.enumeratedDomains",
  "rootDomains": "String",
  "domainNames": [
    "String"
  ]
}
```
