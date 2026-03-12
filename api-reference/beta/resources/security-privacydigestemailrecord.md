---
title: "privacyDigestEmailRecord resource type"
description: "Represents an audit record that captures information about privacy digest email notifications."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Privacy digest email record"
---
# privacyDigestEmailRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information about privacy digest email notifications. This resource provides details about automated email summaries sent to administrators and data privacy officers containing insights about privacy-related events, data subject requests, potential privacy risks, and compliance status. These audit records help organizations track what privacy information was communicated, to whom, and when, supporting governance and oversight of privacy management activities.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.privacyDigestEmailRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.privacyDigestEmailRecord"
}
```

