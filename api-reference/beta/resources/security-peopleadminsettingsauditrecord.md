---
title: "peopleAdminSettingsAuditRecord resource type"
description: "Represents an audit record that captures information about changes to people and social settings in Microsoft 365."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "People admin settings audit record"
---
# peopleAdminSettingsAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information about changes to people and social settings in Microsoft 365. This resource provides details about modifications to organizational settings related to people experiences, such as the People Card, social features, insights, and colleague recommendations. These audit records help administrators track changes to user experience configurations that affect how people information is displayed and shared across Microsoft 365 services.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md). For more information about audit activities, see [Office 365 Management Activity API schema](https://learn.microsoft.com/en-us/office/office-365-management-api/office-365-management-activity-api-schema).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.peopleAdminSettingsAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.peopleAdminSettingsAuditRecord"
}
```

