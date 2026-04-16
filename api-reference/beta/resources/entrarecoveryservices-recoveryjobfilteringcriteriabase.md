---
title: "recoveryJobFilteringCriteriaBase resource type"
description: "Abstract base complex type for filtering criteria used to scope recovery jobs to specific entity types or entity IDs."
author: "yuhko-msft"
ms.date: 03/04/2026
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: resourcePageType
---

# recoveryJobFilteringCriteriaBase resource type

Namespace: microsoft.graph.entraRecoveryServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Abstract base complex type for filtering criteria used to scope [recovery jobs](../resources/entrarecoveryservices-recoveryjob.md) to specific entity types or entity IDs. This type has no properties of its own.

Derived types:
- [recoveryJobEntityNamesFilter](entrarecoveryservices-recoveryjobentitynamesfilter.md)
- [recoveryJobEntityNameAndIdsFilter](entrarecoveryservices-recoveryjobentitynameandidsfilter.md)

## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.entraRecoveryServices.recoveryJobFilteringCriteriaBase"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.entraRecoveryServices.recoveryJobFilteringCriteriaBase"
}
```
