---
title: "healthcareSignalRecord resource type"
description: "Represents an audit record that captures healthcare-related security signals and alerts."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Healthcare signal record"
---
# healthcareSignalRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures healthcare-related security signals and alerts. This record type documents security events specific to healthcare environments, such as potential Protected Health Information (PHI) exposures, suspicious access to patient records, or unusual patterns of healthcare data access. These audit records help healthcare organizations detect and respond to security incidents while maintaining compliance with healthcare regulations like HIPAA and HITECH.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.healthcareSignalRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.healthcareSignalRecord"
}
```

