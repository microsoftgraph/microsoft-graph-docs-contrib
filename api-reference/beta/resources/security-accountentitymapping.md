---
title: "accountEntityMapping resource type"
description: "Represents a mapping from columns in a custom detection rule query result to an account entity that is attached to the resulting alert."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 05/25/2026
---

# accountEntityMapping resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a mapping from columns in a [custom detection rule](../resources/security-detectionrule.md) query result to an account entity that is attached to the resulting alert.

Base type: [entityMapping](../resources/security-entitymapping.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|aadUserIdColumn|String|Name of the detection query column that maps to the Microsoft Entra user ID of the alert entity.|
|dnsDomainColumn|String|Name of the detection query column that maps to the DNS domain of the alert entity.|
|nameColumn|String|Name of the detection query column that maps to the name of the alert entity.|
|ntDomainColumn|String|Name of the detection query column that maps to the NT domain of the alert entity.|
|sidColumn|String|Name of the detection query column that maps to the security identifier (SID) of the alert entity.|
|upnColumn|String|Name of the detection query column that maps to the user principal name (UPN) of the alert entity.|
|upnSuffixColumn|String|Name of the detection query column that maps to the UPN suffix of the alert entity.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.accountEntityMapping",
  "baseType": "microsoft.graph.security.entityMapping",
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.accountEntityMapping",
  "aadUserIdColumn": "String",
  "dnsDomainColumn": "String",
  "nameColumn": "String",
  "ntDomainColumn": "String",
  "sidColumn": "String",
  "upnColumn": "String",
  "upnSuffixColumn": "String"
}
```
