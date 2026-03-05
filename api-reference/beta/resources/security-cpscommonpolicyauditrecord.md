---
title: "cpsCommonPolicyAuditRecord resource type"
description: "Represents an audit record for common policy settings in the Customer Protection Service (CPS)."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "CPS common policy audit record"
---
# cpsCommonPolicyAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for common policy settings in the Customer Protection Service (CPS). This resource captures audit information related to changes in common protection policies that apply across the organization's security and compliance infrastructure.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md). For more information about audit activities, see [Office 365 Management Activity API schema](https://learn.microsoft.com/en-us/office/office-365-management-api/office-365-management-activity-api-schema).

## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.cpsCommonPolicyAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.cpsCommonPolicyAuditRecord"
}
```

