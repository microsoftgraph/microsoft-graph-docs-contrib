---
title: "enumeratedDomains resource type"
description: "A derived complex type, which defines that Microsoft Entra ID performs validation for specified Microsoft Entra ID domains."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# enumeratedDomains resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A derived complex type, which defines that Microsoft Entra ID performs validation for all specified Microsoft Entra ID  domains if `rootDomains` is 'enumerated' or for all Managed and specified Microsoft Entra ID domains if `rootDomains` is 'allManagedAndEnumeratedFederated'.

Inherits from [validatingDomains](../resources/validatingdomains.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|domainNames|String collection|List of federated and/or managed root domains for which Microsoft Entra ID performs the validation.|
|rootDomains|rootDomains|Defines the types of domains to which the validation applies. Inherited from [validatingDomains](../resources/validatingdomains.md). The possible values are: `none`, `all`, `allFederated`, `allManaged`, `enumerated`, `allManagedAndEnumeratedFederated`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
This is a JSON representation of the resource.
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
