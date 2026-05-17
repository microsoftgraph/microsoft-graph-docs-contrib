---
title: "purviewInsiderRiskCasesRecord resource type"
description: "Represents an audit record for cases created in Microsoft Purview Insider Risk Management."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Purview insider risk cases record"
---
# purviewInsiderRiskCasesRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures cases created in Microsoft Purview Insider Risk Management. This resource tracks the lifecycle of insider risk cases, including case creation, updates, assignment, resolution, and other case management activities. These audit records help organizations maintain a record of how insider risk investigations are managed for compliance, governance, and operational purposes.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.purviewInsiderRiskCasesRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.purviewInsiderRiskCasesRecord"
}
```

