---
title: "microsoftStreamAuditRecord resource type"
description: "Represents an audit record that captures activities related to Microsoft Stream video service operations."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Microsoft Stream audit record"
---
# microsoftStreamAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures activities related to Microsoft Stream video service operations. This record type documents events such as video uploads, modifications, sharing, viewing, and permissions changes, providing visibility into video content management and usage within the organization, including details about content creators, viewers, and access settings.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md). For more information about audit activities, see [Office 365 Management Activity API schema](https://learn.microsoft.com/en-us/office/office-365-management-api/office-365-management-activity-api-schema).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.microsoftStreamAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.microsoftStreamAuditRecord"
}
```

