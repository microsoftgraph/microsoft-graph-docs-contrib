---
title: "projectForTheWebAssignedToMeSettingsAuditRecord resource type"
description: "Represents an audit record for changes to task assignment settings in Project for the Web."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Project for the web assigned to me settings audit record"
---
# projectForTheWebAssignedToMeSettingsAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures changes to task assignment settings in Project for the Web. This resource tracks configuration changes that affect how tasks are assigned to users and how these assignments are displayed in the "Assigned to Me" view. These audit records help organizations monitor and troubleshoot task assignment configurations for compliance and operational management purposes.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.projectForTheWebAssignedToMeSettingsAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.projectForTheWebAssignedToMeSettingsAuditRecord"
}
```

