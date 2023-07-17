---
title: "whoisContact resource type"
description: "Represents key contact details for a whois record"
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# whoisContact resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

A **whoisContact** represents a specific contact for whois details. These details are included in a [whoisRecord](../resources/security-whoisrecord.md) to denote a specific contact entry.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|address|[microsoft.graph.physicalAddress](../resources/physicaladdress.md)|A physical address of the entity.|
|email|String|The email of this whois contact.|
|fax|String|The fax of this whois contact. **Note**: No format is guaranteed.|
|name|String|The name of this whois contact.|
|organization|String|The organization of this whois contact.|
|telephone|String|The telephone of this whois contact. **Note**: No format is guaranteed.|

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
  "email": "String",
  "name": "String",
  "organization": "String",
  "address": {
    "@odata.type": "microsoft.graph.physicalAddress"
  },
  "telephone": "String",
  "fax": "String"
}
```
