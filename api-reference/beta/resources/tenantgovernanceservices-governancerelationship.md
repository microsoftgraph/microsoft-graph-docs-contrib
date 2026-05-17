---
title: "governanceRelationship resource type"
description: "Represents an established governance relationship between a governing tenant and a governed tenant."
author: "hafowler"
ms.date: 03/10/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# governanceRelationship resource type

Namespace: microsoft.graph.tenantGovernanceServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an established governance relationship between a governing tenant and a governed tenant. A governance relationship is created when a [governanceRequest](tenantgovernanceservices-governancerequest.md) is accepted by the governed tenant.


Inherits from [microsoft.graph.entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/tenantgovernanceservices-list-governancerelationships.md)|[microsoft.graph.tenantGovernanceServices.governanceRelationship](../resources/tenantgovernanceservices-governancerelationship.md) collection|Get a list of the [governanceRelationship](../resources/tenantgovernanceservices-governancerelationship.md) objects and their properties.|
|[Get](../api/tenantgovernanceservices-governancerelationship-get.md)|[microsoft.graph.tenantGovernanceServices.governanceRelationship](../resources/tenantgovernanceservices-governancerelationship.md)|Read the properties of a [governanceRelationship](../resources/tenantgovernanceservices-governancerelationship.md) object.|
|[Update](../api/tenantgovernanceservices-governancerelationship-update.md)|[microsoft.graph.tenantGovernanceServices.governanceRelationship](../resources/tenantgovernanceservices-governancerelationship.md)|Update the **status** property to initiate termination of the governance relationship.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdType|microsoft.graph.tenantGovernanceServices.relationshipCreationType|Indicates how the relationship was created. The possible values are: `approvedByAdmin`, `addOnTenant`, `unknownFutureValue`.<br></br> Supports `$filter` (`eq`, `ne`) and `$orderBy`.|
|creationDateTime|DateTimeOffset|The date and time when the relationship was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2026 is `2026-01-01T00:00:00Z`.<br></br> Supports `$filter` (`lt`, `le`, `gt`, `ge`, `eq`, `ne`) and `$orderBy`.|
|governedTenantId|String|The Microsoft Entra tenant ID of the governed tenant.<br></br> Supports `$filter` (`eq`, `ne`) and `$orderBy`.|
|governedTenantName|String|The display name of the governed tenant.<br></br> Supports `$filter` (`eq`, `ne`) and `$orderBy`.|
|governingTenantId|String|The Microsoft Entra tenant ID of the governing tenant.<br></br> Supports `$filter` (`eq`, `ne`) and `$orderBy`.|
|governingTenantName|String|The display name of the governing tenant.<br></br> Supports `$filter` (`eq`, `ne`) and `$orderBy`.|
|id|String|The unique identifier for the governance relationship. Inherited from [entity](../resources/entity.md).<br></br> Supports `$filter` (`eq`, `ne`) and `$orderBy`.|
|policySnapshot|[microsoft.graph.tenantGovernanceServices.relationshipPolicy](../resources/tenantgovernanceservices-relationshippolicy.md)|A snapshot of the governance policy applied to this relationship, including delegated administration role assignments and multi-tenant applications to provision.|
|status|microsoft.graph.tenantGovernanceServices.relationshipStatus|The current status of the governance relationship. The possible values are: `active`, `terminated`, `terminationRequestedByGoverningTenant`, `unknownFutureValue`.<br></br> Supports `$filter` (`eq`, `ne`) and `$orderBy`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.tenantGovernanceServices.governanceRelationship",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantGovernanceServices.governanceRelationship",
  "createdType": "String",
  "creationDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "status": "String",
  "governingTenantId": "String",
  "governedTenantId": "String",
  "governingTenantName": "String",
  "governedTenantName": "String",
  "policySnapshot": {
    "@odata.type": "microsoft.graph.tenantGovernanceServices.relationshipPolicy"
  }
}
```

