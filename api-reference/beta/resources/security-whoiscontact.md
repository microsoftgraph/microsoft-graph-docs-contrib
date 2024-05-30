---
title: "whoisContact resource type"
description: "Represents details about a specific contact entry within a whoisRecord."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# whoisContact resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

Represents details about a specific contact entry within a [whoisRecord](../resources/security-whoisrecord.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|address|[microsoft.graph.physicalAddress](../resources/physicaladdress.md)|The physical address of the entity.|
|email|String|The email of this WHOIS contact.|
|fax|String|The fax of this WHOIS contact. No format is guaranteed.|
|name|String|The name of this WHOIS contact.|
|organization|String|The organization of this WHOIS contact.|
|telephone|String|The telephone of this WHOIS contact. No format is guaranteed.|

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
