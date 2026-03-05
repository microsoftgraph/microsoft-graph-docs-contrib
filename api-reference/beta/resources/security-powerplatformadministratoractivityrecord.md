---
title: "powerPlatformAdministratorActivityRecord resource type"
description: "Represents an audit record that captures information about general administrative activities in the Power Platform."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Power Platform administrator activity record"
---
# powerPlatformAdministratorActivityRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information about general administrative activities in the Power Platform. This resource provides details about a wide range of administrator actions taken within the Power Platform admin center and related administrative interfaces. These audit records help organizations track administrator activities, policy changes, and configuration modifications across the Power Platform ecosystem to support governance, compliance, and security monitoring requirements.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.powerPlatformAdministratorActivityRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.powerPlatformAdministratorActivityRecord"
}
```

