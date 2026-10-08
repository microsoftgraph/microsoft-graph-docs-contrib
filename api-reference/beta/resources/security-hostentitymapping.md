---
title: "hostEntityMapping resource type"
description: "Represents a mapping from columns in a custom detection rule query result to a host entity that is attached to the resulting alert."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 05/25/2026
---

# hostEntityMapping resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a mapping from columns in a [custom detection rule](../resources/security-detectionrule.md) query result to a host entity that is attached to the resulting alert.

Base type: [entityMapping](../resources/security-entitymapping.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|deviceIdColumn|String|Name of the detection query column that maps to the device ID of the alert entity.|
|dnsDomainColumn|String|Name of the detection query column that maps to the DNS domain of the alert entity.|
|nameColumn|String|Name of the detection query column that maps to the name of the alert entity.|
|netBiosNameColumn|String|Name of the detection query column that maps to the NetBIOS name of the alert entity.|
|ntDomainColumn|String|Name of the detection query column that maps to the NT domain of the alert entity.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.hostEntityMapping",
  "baseType": "microsoft.graph.security.entityMapping",
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.hostEntityMapping",
  "deviceIdColumn": "String",
  "dnsDomainColumn": "String",
  "nameColumn": "String",
  "netBiosNameColumn": "String",
  "ntDomainColumn": "String"
}
```
