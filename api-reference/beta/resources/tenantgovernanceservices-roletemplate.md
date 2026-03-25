---
title: "roleTemplate resource type"
description: "Represents a Microsoft Entra role template definition."
author: "hafowler"
ms.date: 03/10/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# roleTemplate resource type

Namespace: microsoft.graph.tenantGovernanceServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a [Microsoft Entra role template definition](../resources/unifiedroledefinition.md) used in [delegated administration role assignments](../resources/tenantgovernanceservices-delegatedadministrationroleassignmentsnapshot.md). The role template specifies which Microsoft Entra role should be assigned.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The template ID of the Microsoft Entra role (e.g., `62e90394-69f5-4237-9190-012177145e10` for Global Administrator).|
|name|String|The display name of the role (e.g., "Global Administrator", "Helpdesk Administrator").|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.tenantGovernanceServices.roleTemplate"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantGovernanceServices.roleTemplate",
  "id": "String",
  "name": "String"
}
```

