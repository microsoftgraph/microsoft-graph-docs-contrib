---
title: "complianceEvaluationIncomplete resource type"
description: "Represents audit data for incomplete compliance evaluations."
author: "diksha27"
ms.date: 10/06/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# complianceEvaluationIncomplete resource type

Namespace: microsoft.graph.security

Audit data for incomplete compliance evaluations returned in the **auditData** property of an [auditLogRecord](../resources/security-auditlogrecord.md).

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
  "@odata.type": "microsoft.graph.security.complianceEvaluationIncomplete"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.complianceEvaluationIncomplete",
  "dynamicProperties": {
    "@odata.type": "microsoft.graph.security.auditRecordTypeDictionary"
  }
}
```
