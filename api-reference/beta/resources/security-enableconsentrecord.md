---
title: "enableConsentRecord resource type"
description: "Represents an audit record for operations that enable user consent for applications."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Enable consent record"
---
# enableConsentRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for operations that enable user consent for applications. This record type documents when administrators enable the ability for users to grant consent to applications to access organizational data. The record includes details about who made the change, when it occurred, and the scope of the consent permissions allowed. Tracking these events is important for security monitoring and compliance reporting.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.enableConsentRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.enableConsentRecord"
}
```

