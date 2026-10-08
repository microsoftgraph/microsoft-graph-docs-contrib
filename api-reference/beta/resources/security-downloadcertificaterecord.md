---
title: "downloadCertificateRecord resource type"
description: "Represents an audit record that captures certificate download operations."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Download certificate record"
---
# downloadCertificateRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures certificate download operations. This record type documents when a security certificate is downloaded from a system, including information about who downloaded the certificate, when it was downloaded, and details about the certificate itself. This helps organizations track certificate usage and distribution for security monitoring and compliance purposes.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.downloadCertificateRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.downloadCertificateRecord"
}
```

