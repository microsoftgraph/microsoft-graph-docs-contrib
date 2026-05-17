---
title: "governanceInvitation resource type"
description: "Represents an invitation sent by a governing tenant to establish a governance relationship with a governed tenant."
author: "hafowler"
ms.date: 03/10/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# governanceInvitation resource type

Namespace: microsoft.graph.tenantGovernanceServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an invitation sent by a future governed tenant to a future governing tenant. This invitation authorizes the governing tenant to send a [governance request](../resources/tenantgovernanceservices-governancerequest.md) to the governed tenant to establish a [governance relationship](../resources/tenantgovernanceservices-governanceinvitation.md). The invitation expires after 30 days.


Inherits from [microsoft.graph.entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/tenantgovernanceservices-list-governanceinvitations.md)|[microsoft.graph.tenantGovernanceServices.governanceInvitation](../resources/tenantgovernanceservices-governanceinvitation.md) collection|Get a list of the [governanceInvitation](../resources/tenantgovernanceservices-governanceinvitation.md) objects and their properties.|
|[Create](../api/tenantgovernanceservices-post-governanceinvitations.md)|[microsoft.graph.tenantGovernanceServices.governanceInvitation](../resources/tenantgovernanceservices-governanceinvitation.md)|Create a new governance invitation.|
|[Get](../api/tenantgovernanceservices-governanceinvitation-get.md)|[microsoft.graph.tenantGovernanceServices.governanceInvitation](../resources/tenantgovernanceservices-governanceinvitation.md)|Read the properties of a [governanceInvitation](../resources/tenantgovernanceservices-governanceinvitation.md) object.|
|[Delete](../api/tenantgovernanceservices-governanceinvitation-delete.md)|None|Delete a governance invitation.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time when the invitation was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC.<br></br> Supports `$filter` (`lt`, `le`, `gt`, `ge`, `eq`, `ne`) and `$orderBy`.|
|expirationDateTime|DateTimeOffset|The date and time when the invitation expires. The timestamp type represents date and time information using ISO 8601 format and is always in UTC.<br></br> Supports `$filter` (`lt`, `le`, `gt`, `ge`, `eq`, `ne`) and `$orderBy`.|
|governedTenantId|String|The Microsoft Entra tenant ID of the governed tenant.<br></br> Supports `$filter` (`eq`, `ne`) and `$orderBy`.|
|governedTenantName|String|The display name of the governed tenant.<br></br> Supports `$filter` (`eq`, `ne`) and `$orderBy`.|
|governingTenantId|String|The Microsoft Entra tenant ID of the governing tenant.<br></br> Supports `$filter` (`eq`, `ne`) and `$orderBy`.|
|governingTenantName|String|The display name of the governing tenant.<br></br> Supports `$filter` (`eq`, `ne`) and `$orderBy`.|
|id|String|The unique identifier for the governance invitation. Inherited from [entity](../resources/entity.md).<br></br> Supports `$filter` (`eq`, `ne`) and `$orderBy`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.tenantGovernanceServices.governanceInvitation",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantGovernanceServices.governanceInvitation",
  "id": "String (identifier)",
  "governingTenantId": "String",
  "governedTenantId": "String",
  "governingTenantName": "String",
  "governedTenantName": "String",
  "createdDateTime": "String (timestamp)",
  "expirationDateTime": "String (timestamp)"
}
```

