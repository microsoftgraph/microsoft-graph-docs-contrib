---
title: "fhirBaseUrlUpdateRecord resource type"
description: "Represents an audit record that captures FHIR base URL update operations in healthcare environments."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "FHIR base URL update record"
---
# fhirBaseUrlUpdateRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures FHIR base URL update operations in healthcare environments. This record type documents when an administrator or authorized user modifies the configuration of a Fast Healthcare Interoperability Resources (FHIR) base URL in the system. These audit records help healthcare organizations track changes to their FHIR endpoint settings, including modifications to connection parameters, authentication requirements, or other configuration properties, for security monitoring and compliance purposes.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.fhirBaseUrlUpdateRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.fhirBaseUrlUpdateRecord"
}
```

