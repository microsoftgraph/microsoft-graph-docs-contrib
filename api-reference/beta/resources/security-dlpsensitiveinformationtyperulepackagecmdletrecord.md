---
title: "dlpSensitiveInformationTypeRulePackageCmdletRecord resource type"
description: "Represents an audit record that captures administrative cmdlet operations related to DLP sensitive information type rule packages."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "DLP sensitive information type rule package cmdlet record"
---
# dlpSensitiveInformationTypeRulePackageCmdletRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures administrative cmdlet operations related to DLP sensitive information type rule packages. This record type documents actions taken by administrators when creating, importing, exporting, or managing Data Loss Prevention (DLP) rule packages through PowerShell cmdlets. Rule packages contain collections of sensitive information type definitions and are used to enforce consistent data protection policies across the organization.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.dlpSensitiveInformationTypeRulePackageCmdletRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.dlpSensitiveInformationTypeRulePackageCmdletRecord"
}
```

