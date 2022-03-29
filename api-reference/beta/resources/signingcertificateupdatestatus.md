---
title: "signingCertificateUpdateStatus resource type"
description: "Provides status of the last update of the signing certificate."
author: "akgoel23"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# signingCertificateUpdateStatus resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides status and timestamp of the last update of the signing certificate. 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|certificateUpdateResult|String|Status of the last certificate update|
|lastRunDateTime|DateTimeOffset|Date and time of the last certificate update|

### certificateUpdateResult status
| Value | Description |
| :--- | :--- |
|  |  |


## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.signingCertificateUpdateStatus"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.signingCertificateUpdateStatus",
  "certificateUpdateResult": "String",
  "lastRunDateTime": "String (timestamp)"
}
```

