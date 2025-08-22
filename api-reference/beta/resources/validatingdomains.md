---
title: "validatingDomains resource type"
description: "Defines the types of domains to which the federated token validation applies."
author: "vimrang"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 03/06/2024
---

# validatingDomains resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the types of domains to which the federated token validation applies.
This object is an abstract type from which the [allDomains](../resources/alldomains.md) and [enumeratedDomains](../resources/enumerateddomains.md) resources derive.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|rootDomains|rootDomains|Defines the types of domains to which the validation applies. The possible values are: `none`, `all`, `allFederated`, `allManaged`, `enumerated`, `allManagedAndEnumeratedFederated`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.validatingDomains"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.validatingDomains",
  "rootDomains": "String"
}
```
