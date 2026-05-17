---
title: "uploadCertificateRecord resource type"
description: "Represents an audit record for certificate upload operations in Microsoft security services."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Upload certificate record"
---
# uploadCertificateRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for certificate upload operations in Microsoft security services. This resource captures activities related to the uploading of security certificates into the system, including who uploaded certificates, when they were uploaded, certificate properties, and the success or failure status of the upload operation. The audit data helps security administrators track changes to certificate configurations, which are critical components of encryption, authentication, and secure communications infrastructure.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.uploadCertificateRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.uploadCertificateRecord"
}
```

