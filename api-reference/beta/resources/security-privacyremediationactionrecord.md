---
title: "privacyRemediationActionRecord resource type"
description: "Represents an audit record that captures information about specific actions taken to remediate privacy issues."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Privacy remediation action record"
---
# privacyRemediationActionRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information about specific actions taken to remediate privacy issues. This resource provides details about individual remediation actions performed to address privacy risks, such as removing excessive permissions, deleting sensitive content, or applying protection controls. These audit records help organizations track the specific steps taken to mitigate privacy risks and demonstrate remediation efforts for compliance purposes.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.privacyRemediationActionRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.privacyRemediationActionRecord"
}
```

