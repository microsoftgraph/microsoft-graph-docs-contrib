---
title: "allDomains resource type"
description: "Defines the categories of domains to which federated token validation applies."
author: "vimrang"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 03/30/2026
---

# allDomains resource type

Namespace: microsoft.graph

A derived complex type that defines validation that applies to a category of domains without enumerating specific domain names. The **validatingDomains** property of the [federatedTokenValidationPolicy](../resources/federatedtokenvalidationpolicy.md) resource returns this type when `rootDomains` is set to `none`, `all`, `allFederated`, or `allManaged`.

Inherits from [validatingDomains](../resources/validatingdomains.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|rootDomains|[rootDomains](../resources/enums.md#rootdomains-values)|Defines the types of domains that Microsoft Entra ID validates. Inherited from [validatingDomains](../resources/validatingdomains.md). For this subtype the value can be `none`, `all` (default), `allFederated`, `allManaged`, or `unknownFutureValue`. The `enumerated` and `allManagedAndEnumeratedFederated` values belong to the [enumeratedDomains](../resources/enumerateddomains.md) subtype.|

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
