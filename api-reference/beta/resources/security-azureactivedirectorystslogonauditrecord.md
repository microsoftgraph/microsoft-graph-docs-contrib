---
title: "azureActiveDirectoryStsLogonAuditRecord resource type"
description: "Represents an audit record for Azure Active Directory Security Token Service (STS) logon events."
author: "diksha27"
ms.subservice: compliance
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Azure active directory STS logon audit record"
---
# azureActiveDirectorySTSLogonAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for Azure Active Directory Security Token Service (STS) logon events. This resource captures information about token issuance, authentication flows, and STS-related sign-in activities.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md). For more information about audit activities, see [Office 365 Management Activity API schema](https://learn.microsoft.com/en-us/office/office-365-management-api/office-365-management-activity-api-schema).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.azureActiveDirectoryStsLogonAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.azureActiveDirectoryStsLogonAuditRecord"
}
```

