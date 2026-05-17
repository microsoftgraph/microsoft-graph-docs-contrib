---
title: "microsoftPurviewMetadataPolicyOperationRecord resource type"
description: "Represents an audit record that captures activities related to Microsoft Purview metadata policy operations."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Microsoft Purview metadata policy operation record"
---
# microsoftPurviewMetadataPolicyOperationRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures activities related to Microsoft Purview metadata policy operations. This record type documents events such as creating, modifying, or deleting metadata policies, applying metadata rules to data assets, and managing metadata standards within the Purview catalog, providing visibility into how metadata governance is implemented and maintained across the organization's data estate.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.microsoftPurviewMetadataPolicyOperationRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.microsoftPurviewMetadataPolicyOperationRecord"
}
```

