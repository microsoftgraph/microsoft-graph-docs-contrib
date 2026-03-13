---
title: "projectForTheWebProjectSettingsAuditRecord resource type"
description: "Represents an audit record for changes to project configuration settings in Project for the Web."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Project for the web project settings audit record"
---
# projectForTheWebProjectSettingsAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures changes to project configuration settings in Project for the Web. This resource tracks modifications to project-level settings such as project templates, default views, permissions, and other configuration options. These audit records help organizations monitor how project settings are configured and modified for compliance, security, and operational management purposes.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.projectForTheWebProjectSettingsAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.projectForTheWebProjectSettingsAuditRecord"
}
```

