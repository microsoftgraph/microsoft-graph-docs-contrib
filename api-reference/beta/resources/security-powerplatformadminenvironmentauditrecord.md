---
title: "powerPlatformAdminEnvironmentAuditRecord resource type"
description: "Represents an audit record that captures information about administrative activities related to Power Platform environments."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Power Platform admin environment audit record"
---
# powerPlatformAdminEnvironmentAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information about administrative activities related to Power Platform environments. This resource provides details about environment creation, deletion, configuration changes, and management actions within the Power Platform administration center. These audit records help organizations track changes to their Power Platform environment structure, monitor administrative activities, and ensure compliance with governance policies for low-code development environments.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.powerPlatformAdminEnvironmentAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.powerPlatformAdminEnvironmentAuditRecord"
}
```

