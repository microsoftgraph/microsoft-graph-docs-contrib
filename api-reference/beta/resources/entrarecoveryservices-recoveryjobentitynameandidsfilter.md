---
title: "recoveryJobEntityNameAndIdsFilter resource type"
description: "Filters recovery jobs to only include changes for specific entities identified by type and ID."
author: "yuhko-msft"
ms.date: 03/04/2026
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: resourcePageType
---

# recoveryJobEntityNameAndIdsFilter resource type

Namespace: microsoft.graph.entraRecoveryServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Filters a [recovery job](../resources/entrarecoveryservices-recoveryjob.md) to only include changes for specific entities identified by type and ID. Used as **filteringCriteria** in [Create recoveryPreviewJob](../api/entrarecoveryservices-snapshot-post-recoverypreviewjobs.md) and [Create recoveryJob](../api/entrarecoveryservices-snapshot-post-recoveryjobs.md) operations. 

Inherits from [microsoft.graph.entraRecoveryServices.recoveryJobFilteringCriteriaBase](../resources/entrarecoveryservices-recoveryjobfilteringcriteriabase.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|filterValues|[microsoft.graph.entraRecoveryServices.entityTypeAndIds](../resources/entrarecoveryservices-entitytypeandids.md) collection|The list of entity type and ID pairs to include in the recovery job. Duplicate entity types are not allowed and return a `400 Bad Request` error.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.entraRecoveryServices.recoveryJobEntityNameAndIdsFilter"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.entraRecoveryServices.recoveryJobEntityNameAndIdsFilter",
  "filterValues": [
    {
      "@odata.type": "microsoft.graph.entraRecoveryServices.entityTypeAndIds"
    }
  ]
}
```
