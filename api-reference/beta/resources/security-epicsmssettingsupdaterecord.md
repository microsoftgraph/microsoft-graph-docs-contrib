---
title: "epicSMSSettingsUpdateRecord resource type"
description: "Represents an audit record that captures updates to Epic SMS configuration settings in healthcare environments."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Epic SMS settings update record"
---
# epicSMSSettingsUpdateRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures updates to Epic SMS configuration settings in healthcare environments. This record type documents when an administrator or authorized user modifies settings related to the SMS messaging service integrated with Epic healthcare systems. The audit information includes details about the specific settings changed, who made the changes, and when they occurred, helping healthcare organizations maintain compliance with security and privacy regulations.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.epicSMSSettingsUpdateRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.epicSMSSettingsUpdateRecord"
}
```

