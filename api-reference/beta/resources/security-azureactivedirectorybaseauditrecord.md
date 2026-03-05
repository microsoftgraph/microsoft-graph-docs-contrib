---
title: "azureActiveDirectoryBaseAuditRecord resource type"
description: "Represents a base audit record for Azure Active Directory events."
author: "diksha27"
ms.subservice: compliance
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Azure active directory base audit record"
---
# azureActiveDirectoryBaseAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a base audit record for Azure Active Directory events. This resource serves as the foundation for all Azure AD audit record types, providing common properties shared across directory-related audit activities.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md). For more information about audit activities, see [Office 365 Management Activity API schema](https://learn.microsoft.com/en-us/office/office-365-management-api/office-365-management-activity-api-schema).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.azureActiveDirectoryBaseAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.azureActiveDirectoryBaseAuditRecord"
}
```

