---
title: "relatedResource resource type"
description: "Abstract base type for related entities in Global Secure Access alerts."
author: "miritsadon"
ms.date: 04/07/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# relatedResource resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Abstract base type for related entities in Global Secure Access [alerts](../resources/networkaccess-alert.md). This type is not intended to be instantiated directly.

This is an abstract type from which the following resources inherit:

- [relatedRemoteNetwork](networkaccess-relatedremotenetwork.md) - Represents a remote network that was detected as unhealthy.
- [relatedThreatIntelligence](networkaccess-relatedthreatintelligence.md) - Represents a threat intelligence that was detected.
- [relatedDestination](networkaccess-relateddestination.md) - Represents a destination that was detected.
- [relatedTenant](networkaccess-relatedtenant.md) - Represents a tenant that was detected.
- [relatedDevice](networkaccess-relateddevice.md) - Represents a device that was detected.
- [relatedWebCategory](networkaccess-relatedwebcategory.md) - Represents a web category that was detected.
- [relatedMalware](networkaccess-relatedmalware.md) - Represents a detected malware.
- [relatedUser](networkaccess-relateduser.md) - Represents a user involved in the alert.
- [relatedToken](networkaccess-relatedtoken.md) - Represents a token involved in the alert.
- [relatedFile](networkaccess-relatedfile.md) - Represents a file involved in the alert.
- [relatedFileHash](networkaccess-relatedfilehash.md) - Represents a file hash involved in the alert.
- [relatedTransaction](networkaccess-relatedtransaction.md) - Represents a transaction involved in the alert.
- [relatedUrl](networkaccess-relatedurl.md) - Represents a destination URL involved in the alert.

## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.relatedResource"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.relatedResource"
}
```
