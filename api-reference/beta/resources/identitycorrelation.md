---
title: "identityCorrelation resource type"
description: "Represents an identity correlation report that captures the results of correlating identities between an on-premises directory and Microsoft Entra ID for a specific service principal."
author: "tolian"
ms.date: 05/07/2026
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# identityCorrelation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an identity correlation report that captures the results of correlating identities between an on-premises directory and Microsoft Entra ID for a specific service principal.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/reportroot-list-correlations.md)|[identityCorrelation](../resources/identitycorrelation.md) collection|Get a list of the [identityCorrelation](../resources/identitycorrelation.md) objects and their properties.|
|[Get](../api/identitycorrelation-get.md)|[identityCorrelation](../resources/identitycorrelation.md)|Read the properties and relationships of an [identityCorrelation](../resources/identitycorrelation.md) object.|
|[List identities](../api/identitycorrelation-list-identities.md)|[correlatedIdentity](../resources/correlatedidentity.md) collection|List the correlated identities for this identity correlation report.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|endDateTime|DateTimeOffset|The date and time when the correlation process completed.|
|error|[correlationError](../resources/correlationerror.md)|Error information if the correlation process failed. `null` if successful. <br/><br/> Supports `$filter` (`eq`).|
|id|String|The unique identifier for the identity correlation report. Inherited from [entity](../resources/entity.md). <br/><br/> Supports `$filter` (`eq`).|
|startDateTime|DateTimeOffset|The date and time when the correlation process started.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|identities|[correlatedIdentity](../resources/correlatedidentity.md) collection|The collection of correlated identity results for this correlation report.|
|servicePrincipal|[servicePrincipal](../resources/serviceprincipal.md)|The service principal associated with this correlation report.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityCorrelation",
  "baseType": "microsoft.graph.entity"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityCorrelation",
  "id": "String (identifier)",
  "startDateTime": "DateTimeOffset",
  "endDateTime": "DateTimeOffset",
  "error": {
    "@odata.type": "microsoft.graph.correlationError"
  },
  "servicePrincipal": {
    "@odata.type": "microsoft.graph.servicePrincipal"
  }
}
```