---
title: "onDemandExchangeClassification resource type"
description: "Represents audit data for On-Demand Exchange Classification events."
author: "diksha27"
ms.date: 9/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# onDemandExchangeClassification resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Audit data for On-Demand Exchange Classification events returned in the **auditData** property of an [auditLogRecord](../resources/security-auditlogrecord.md).

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md).

This resource is an open type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|dynamicProperties|[microsoft.graph.security.auditRecordTypeDictionary](../resources/security-auditrecordtypedictionary.md)|An open-type dictionary that contains dynamic audit event properties as name-value pairs. Inherited from [microsoft.graph.security.auditData](../resources/security-auditdata.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.onDemandExchangeClassification"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.onDemandExchangeClassification",
  "dynamicProperties": {
    "@odata.type": "microsoft.graph.security.auditRecordTypeDictionary"
  }
}
```

