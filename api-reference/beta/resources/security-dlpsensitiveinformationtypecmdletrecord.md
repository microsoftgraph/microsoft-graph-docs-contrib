---
title: "dlpSensitiveInformationTypeCmdletRecord resource type"
description: "Represents an audit record that captures administrative cmdlet operations related to DLP sensitive information types."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "DLP sensitive information type cmdlet record"
---
# dlpSensitiveInformationTypeCmdletRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures administrative cmdlet operations related to DLP sensitive information types. This record type documents actions taken by administrators when creating, modifying, or managing Data Loss Prevention (DLP) sensitive information type definitions through PowerShell cmdlets. These records help track changes to the organization's data classification patterns used for content scanning and policy enforcement.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.dlpSensitiveInformationTypeCmdletRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.dlpSensitiveInformationTypeCmdletRecord"
}
```

