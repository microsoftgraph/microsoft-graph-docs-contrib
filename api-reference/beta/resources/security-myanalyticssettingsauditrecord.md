---
title: "myAnalyticsSettingsAuditRecord resource type"
description: "Represents an audit record that captures information about changes to MyAnalytics settings."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "My analytics settings audit record"
---
# myAnalyticsSettingsAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information about changes to MyAnalytics settings. This resource provides details about modifications to productivity insights configurations, privacy settings, and feature toggles within the MyAnalytics service. These audit records help administrators track when users or administrators made changes to MyAnalytics settings and what specific configurations were modified.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.myAnalyticsSettingsAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.myAnalyticsSettingsAuditRecord"
}
```

