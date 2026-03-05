---
title: "owaGetAccessTokenForResourceAuditRecord resource type"
description: "Represents an audit record that captures information about access token acquisition in Outlook Web Access."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "OWA get access token for resource audit record"
---
# owaGetAccessTokenForResourceAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information about access token acquisition events in Outlook Web Access (OWA). This resource provides details about authentication flows, token requests, and resource access attempts initiated from the Outlook web client. These audit records help security teams monitor authentication patterns, detect suspicious token requests, and investigate potential security incidents involving user accounts accessing resources through OWA.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.owaGetAccessTokenForResourceAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.owaGetAccessTokenForResourceAuditRecord"
}
```

