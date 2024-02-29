---
title: "allDomains resource type"
description: "A derived complex type that defines the type of domains that Microsoft Entra ID validates."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# allDomains resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A derived complex type that defines the type of domains that Microsoft Entra ID validates.

Inherits from [validatingDomains](../resources/validatingdomains.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|rootDomains|rootDomains|Defines the types of domains that Microsoft Entra ID validates. Inherited from [validatingDomains](../resources/validatingdomains.md). The possible values are: `none`, `all`, `allFederated`, `allManaged`, `enumerated`, `allManagedAndEnumeratedFederated`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.allDomains"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.allDomains",
  "rootDomains": "String"
}
```
