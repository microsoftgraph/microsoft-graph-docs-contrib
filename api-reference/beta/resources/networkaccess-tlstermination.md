---
title: "tlsInspectionPolicy resource type"
description: "A container for tenant level tls inspection settings for Entra Global Secure Access."
author: "sisharm"
ms.date: 05/23/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# tlsTermination resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A container for tenant level tls inspection settings for Entra Global Secure Access like `externalCertificateAuthorityCertificates`.


Inherits from [microsoft.graph.entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List externalCertificateAuthorityCertificates](../api/networkaccess-tlstermination-list-externalcertificateauthoritycertificates.md)|[microsoft.graph.networkaccess.externalCertificateAuthorityCertificate](../resources/networkaccess-externalcertificateauthoritycertificate.md) collection|Get a list of the externalCertificateAuthorityCertificates.|
|[Create externalCertificateAuthorityCertificate](../api/networkaccess-tlstermination-post-externalcertificateauthoritycertificates.md)|[microsoft.graph.networkaccess.externalCertificateAuthorityCertificate](../resources/networkaccess-externalcertificateauthoritycertificate.md)|Create a new externalCertificateAuthorityCertificate object.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|externalCertificateAuthorityCertificates|[microsoft.graph.networkaccess.externalCertificateAuthorityCertificate](../resources/networkaccess-externalcertificateauthoritycertificate.md) collection|List of customer's Certificate Authority (CA) certificates used for TLS inspection in Entra Global Secure Access|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.tlsTermination",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.tlsTermination"
}
```

