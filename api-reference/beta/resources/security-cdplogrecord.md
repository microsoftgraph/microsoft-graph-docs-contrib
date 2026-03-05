---
title: "cdpLogRecord resource type"
description: "Represents an audit record for Compliance Data Platform (CDP) log events."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "CDP log record"
---
# cdpLogRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for Compliance Data Platform (CDP) log events. This resource captures general logging information from the CDP, including processing activities and system events.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md). For more information about audit activities, see [Office 365 Management Activity API schema](https://learn.microsoft.com/en-us/office/office-365-management-api/office-365-management-activity-api-schema).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.cdpLogRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.cdpLogRecord"
}
```

