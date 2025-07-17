---
title: "whoisContact resource type"
description: "Represents details about a specific contact entry within a whoisRecord."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# whoisContact resource type

Namespace: microsoft.graph.security

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

The following JSON representation shows the resource type.

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
