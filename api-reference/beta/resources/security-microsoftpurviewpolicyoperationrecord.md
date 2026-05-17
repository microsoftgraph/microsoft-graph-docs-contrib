---
title: "microsoftPurviewPolicyOperationRecord resource type"
description: "Represents an audit record that captures activities related to Microsoft Purview policy management operations."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Microsoft Purview policy operation record"
---
# microsoftPurviewPolicyOperationRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures activities related to Microsoft Purview policy management operations. This record type documents events such as creating, modifying, or deleting information protection, data governance, compliance, and risk management policies within the Microsoft Purview suite, providing visibility into how governance and compliance controls are implemented across the organization.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.microsoftPurviewPolicyOperationRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.microsoftPurviewPolicyOperationRecord"
}
```

