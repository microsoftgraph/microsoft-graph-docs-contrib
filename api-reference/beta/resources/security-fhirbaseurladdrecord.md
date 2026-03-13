---
title: "fhirBaseUrlAddRecord resource type"
description: "Represents an audit record that captures FHIR base URL addition operations in healthcare environments."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "FHIR base URL add record"
---
# fhirBaseUrlAddRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures FHIR base URL addition operations in healthcare environments. This record type documents when an administrator or authorized user adds a new Fast Healthcare Interoperability Resources (FHIR) base URL to the system. FHIR is a standard for healthcare data exchange, and these audit records help healthcare organizations track the configuration of FHIR endpoints for compliance with healthcare regulations and security monitoring.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.fhirBaseUrlAddRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.fhirBaseUrlAddRecord"
}
```

