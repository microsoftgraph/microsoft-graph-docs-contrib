---
title: "externalDomainName resource type"
description: "Domain name of the external organization that a Microsoft Entra tenant acting as the resource tenant is federating with."
author: "namkedia"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# externalDomainName resource type

Namespace: microsoft.graph

Represents the domain name of the external organization that a Microsoft Entra tenant acting as the resource tenant is federating with.

Inherits from [entity](../resources/entity.md).

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Domain name of the external organization that the Microsoft Entra tenant is federating with. Inherited from [entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.externalDomainName",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.externalDomainName",
  "id": "String (identifier)"
}
```
