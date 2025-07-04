---
title: "nicEvidence resource type"
description: "Represents a NIC (v2) entity that is reported as part of the security detection alert."
author: "hareldamti"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 10/03/2024
---

# nicEvidence resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a NIC (v2) entity that is reported as part of the security detection alert.

Inherits from [alertEvidence](./security-alertevidence.md).

## Properties

|Property|Type|Description|
|:-------|:---|:----------|
|macAddress|String|The MAC address of the NIC.|
|ipAddress|[microsoft.graph.security.ipEvidence](./security-ipevidence.md)|The current IP address of the NIC.|
|vlans|Collection(String)|The current virtual local area networks of the NIC.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.nicEvidence"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.nicEvidence",
  "createdDateTime": "String (timestamp)",
  "verdict": "String",
  "remediationStatus": "String",
  "remediationStatusDetails": "String",
  "roles": [
    "String"
  ],
  "tags": [
    "String"
  ],
  "macAddress": "String",
  "ipAddress": {
    "@odata.type": "microsoft.graph.security.ipEvidence",
  },
  "vlans": [
    "String"
  ],
}
```
