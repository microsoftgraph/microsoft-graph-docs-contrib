---
title: "mdaDataSecuritySignalRecord resource type"
description: "Represents a record that captures Microsoft Defender for Apps (MDA) data security signals related to potential security threats."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "MDA data security signal record"
---
# mdaDataSecuritySignalRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a record that captures Microsoft Defender for Apps (MDA) data security signals related to potential security threats. This record type documents security indicators, anomalies, and risk signals detected in cloud applications and services, providing detailed information about potential security incidents and data protection concerns that may require investigation.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.mdaDataSecuritySignalRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.mdaDataSecuritySignalRecord"
}
```

