---
title: "enumeratedDomains resource type"
description: "Defines the specific root domains to which federated token validation applies."
author: "vimrang"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 03/30/2026
---

# enumeratedDomains resource type

Namespace: microsoft.graph

A derived complex type that defines validation against an enumerated list of root domains. The **validatingDomains** property of the [federatedTokenValidationPolicy](../resources/federatedtokenvalidationpolicy.md) resource returns this type when `rootDomains` is set to `enumerated` or `allManagedAndEnumeratedFederated`.

Inherits from [validatingDomains](../resources/validatingdomains.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|domainNames|String collection|List of federated or managed root domains that Microsoft Entra ID validates.|
|rootDomains|[rootDomains](../resources/enums.md#rootdomains-values)|Defines the types of domains that Microsoft Entra ID validates. Inherited from [validatingDomains](../resources/validatingdomains.md). For this subtype the value can be `enumerated`, `allManagedAndEnumeratedFederated`, or `unknownFutureValue`. The `none`, `all` (default), `allFederated`, and `allManaged` values belong to the [allDomains](../resources/alldomains.md) subtype.|

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
