---
title: "governanceRequest resource type"
description: "Represents a request from a governing tenant to establish a governance relationship with a governed tenant."
author: "hafowler"
ms.date: 08/13/2026
ai-usage: ai-assisted
ms.custom: msecd-doc-authoring-1028
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# governanceRequest resource type

Namespace: microsoft.graph

Represents a request from a governing tenant to establish a governance relationship with a governed tenant. The governed tenant can accept or reject the request. When accepted, a [governanceRelationship](tenantgovernanceservices-governancerelationship.md) is created.



## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/tenantgovernanceservices-list-governancerequests.md)|[microsoft.graph.governanceRequest](../resources/tenantgovernanceservices-governancerequest.md) collection|Get a list of the [governanceRequest](../resources/tenantgovernanceservices-governancerequest.md) objects and their properties.|
|[Create](../api/tenantgovernanceservices-post-governancerequests.md)|[microsoft.graph.governanceRequest](../resources/tenantgovernanceservices-governancerequest.md)|Create a new governance request to establish a relationship with a governed tenant.|
|[Get](../api/tenantgovernanceservices-governancerequest-get.md)|[microsoft.graph.governanceRequest](../resources/tenantgovernanceservices-governancerequest.md)|Read the properties of a [governanceRequest](../resources/tenantgovernanceservices-governancerequest.md) object.|
|[Update](../api/tenantgovernanceservices-governancerequest-update.md)|[microsoft.graph.governanceRequest](../resources/tenantgovernanceservices-governancerequest.md)|Update the **status** property to accept or reject the governance request.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|expirationDateTime|DateTimeOffset|The date and time when the request expires if not accepted or rejected. The timestamp type represents date and time information using ISO 8601 format and is always in UTC.<br></br> Supports `$filter` (`lt`, `le`, `gt`, `ge`, `eq`, `ne`) and `$orderBy`.|
|governedTenantId|String|The Microsoft Entra tenant ID of the governed tenant.<br></br> Supports `$filter` (`eq`, `ne`) and `$orderBy`.|
|governedTenantName|String|The display name of the governed tenant.<br></br> Supports `$filter` (`eq`, `ne`) and `$orderBy`.|
|governingTenantId|String|The Microsoft Entra tenant ID of the governing tenant.<br></br> Supports `$filter` (`eq`, `ne`) and `$orderBy`.|
|governingTenantName|String|The display name of the governing tenant.<br></br> Supports `$filter` (`eq`, `ne`) and `$orderBy`.|
|id|String|The unique identifier for the governance request.<br></br> Supports `$filter` (`eq`, `ne`) and `$orderBy`.|
|policySnapshot|[microsoft.graph.relationshipPolicy](../resources/tenantgovernanceservices-relationshippolicy.md)|A snapshot of the governance policy to be applied if the request is accepted, including delegated administration role assignments and multi-tenant applications to provision.|
|requestDateTime|DateTimeOffset|The date and time when the request was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC.<br></br> Supports `$filter` (`lt`, `le`, `gt`, `ge`, `eq`, `ne`) and `$orderBy`.|
|status|microsoft.graph.requestStatus|The current status of the governance request. The possible values are: `pending`, `accepted`, `rejected`, `unknownFutureValue`.<br></br> Supports `$filter` (`eq`, `ne`) and `$orderBy`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|governancePolicyTemplate|[microsoft.graph.tenantGovernancePolicyTemplate](../resources/tenantgovernanceservices-tenantgovernancepolicytemplate.md)|The governance policy template associated with this request.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.governanceRequest",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.governanceRequest",
  "id": "String (identifier)",
  "governingTenantId": "String",
  "governingTenantName": "String",
  "governedTenantId": "String",
  "governedTenantName": "String",
  "expirationDateTime": "String (timestamp)",
  "requestDateTime": "String (timestamp)",
  "status": "String",
  "policySnapshot": {
    "@odata.type": "microsoft.graph.relationshipPolicy"
  }
}
```
