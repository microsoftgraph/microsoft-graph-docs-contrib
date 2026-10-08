---
title: "fhirBaseUrlApproveRecord resource type"
description: "Represents an audit record that captures FHIR base URL approval operations in healthcare environments."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "FHIR base URL approve record"
---
# fhirBaseUrlApproveRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures FHIR base URL approval operations in healthcare environments. This record type documents when an administrator or authorized user approves a Fast Healthcare Interoperability Resources (FHIR) base URL for use in the system. The approval process is an important security control for healthcare organizations, and these audit records help track the verification and authorization of FHIR endpoints for compliance with healthcare regulations.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.fhirBaseUrlApproveRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.fhirBaseUrlApproveRecord"
}
```

