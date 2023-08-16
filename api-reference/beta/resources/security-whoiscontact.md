---
title: "whoisContact resource type"
description: "Represents key contact details for a whois record."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# whoisContact resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

Represents key contact details for a [whoisRecord](../resources/security-whoisrecord.md). These details are included in a [whoisRecord](../resources/security-whoisrecord.md) to denote a specific contact entry.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|address|[microsoft.graph.physicalAddress](../resources/physicaladdress.md)|The physical address of the entity.|
|email|String|The email of this whois contact.|
|fax|String|The fax of this whois contact. No format is guaranteed.|
|name|String|The name of this whois contact.|
|organization|String|The organization of this whois contact.|
|telephone|String|The telephone of this whois contact. No format is guaranteed.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.whoisContact"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.whoisContact",
  "address": {"@odata.type": "microsoft.graph.physicalAddress"},
  "email": "String",
  "fax": "String",
  "name": "String",
  "organization": "String",
  "telephone": "String"
}
```
