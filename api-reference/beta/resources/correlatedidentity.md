---
title: "correlatedIdentity resource type"
description: "Represents a correlated identity result, containing the source and target identity details and the correlation status."
author: "tolian"
ms.date: 05/07/2026
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# correlatedIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a correlated identity result, containing the source and target identity details and the correlation status.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/identitycorrelation-list-identities.md)|[correlatedIdentity](../resources/correlatedidentity.md) collection|Get a list of the [correlatedIdentity](../resources/correlatedidentity.md) objects and their properties.|
|[Get](../api/correlatedidentity-get.md)|[correlatedIdentity](../resources/correlatedidentity.md)|Read the properties of a [correlatedIdentity](../resources/correlatedidentity.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|correlatedDateTime|DateTimeOffset|The date and time when the identity was correlated.|
|error|[correlationError](../resources/correlationerror.md)|Error information if the correlation for this identity failed. Null if successful.|
|id|String|The unique identifier for the correlated identity. Inherited from [entity](../resources/entity.md).|
|sourceIdentity|[identityInfo](../resources/identityinfo.md)|The source identity information from the on-premises directory.|
|status|String|The correlation and assignment status. Possible values include: `uncorrelated`, `correlatedNotAssigned`, `correlatedAssigned` and `failToCorrelate`.|
|targetIdentity|[identityInfo](../resources/identityinfo.md)|The target identity information from Microsoft Entra ID.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.correlatedIdentity",
  "baseType": "microsoft.graph.entity"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.correlatedIdentity",
  "id": "String (identifier)",
  "correlatedDateTime": "DateTimeOffset",
  "sourceIdentity": {
    "@odata.type": "microsoft.graph.identityInfo"
  },
  "targetIdentity": {
    "@odata.type": "microsoft.graph.identityInfo"
  },
  "status": "String",
  "error": {
    "@odata.type": "microsoft.graph.correlationError"
  }
}
```