---
title: "privacyDataMinimizationRecord resource type"
description: "Represents an audit record that captures information about data minimization activities for privacy compliance."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Privacy data minimization record"
---
# privacyDataMinimizationRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information about data minimization activities for privacy compliance. This resource provides details about actions taken to minimize the collection, processing, and storage of personal data in accordance with privacy regulations such as GDPR. These audit records help organizations track data retention practices, automatic deletion processes, and other data minimization efforts to demonstrate compliance with the principle of data minimization.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.privacyDataMinimizationRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.privacyDataMinimizationRecord"
}
```

