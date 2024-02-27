---
title: "allDomains resource type"
description: "A derived complex type which defines that Entra Id will perform validation for all root domains"
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# allDomains resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A derived complex type which defines that Entra Id will perform validation (whether federated account's root domain matches with mapped Entra Id account's root domain) for all root domains based on the value for 'rootDomains' property.

Inherits from [validatingDomains](../resources/validatingdomains.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|rootDomains|rootDomains|Defines the types of domains to which the validation applies. Inherited from [validatingDomains](../resources/validatingdomains.md).The possible values are: `none`, `all`, `allFederated`, `allManaged`, `enumerated`, `allManagedAndEnumeratedFederated`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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
