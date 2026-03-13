---
title: "physicalBadgingSignalAuditRecord resource type"
description: "Represents an audit record that captures information about physical access badge events in facilities."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Physical badging signal audit record"
---
# physicalBadgingSignalAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information about physical access badge events in facilities. This resource provides details about physical building access activities, such as badge swipes, entry and exit events, and access control system interactions. These audit records enable security teams to correlate physical building access with digital resource access for comprehensive insider risk monitoring and security incident investigations.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.physicalBadgingSignalAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.physicalBadgingSignalAuditRecord"
}
```

