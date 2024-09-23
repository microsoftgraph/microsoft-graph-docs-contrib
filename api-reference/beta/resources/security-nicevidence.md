---
title: "NicEvidence resource type"
description: "Represents a NIC (v2) entity that is reported as part of the security detection alert."
author: "hareldamti"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# IoTDeviceEvidence resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents Kubernetes service entity.

Inherits from [alertEvidence](./security-alertevidence.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
| macAddress | String| The MAC for the nic           |
| ipAddress  | [microsoft.graph.security.ipEvidence](./security-ipevidence.md) | The current IP for the nic    |
| vlans      | Collection(String)| The current VLANs for the nic |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
``` json
{
  "@odata.type": "#microsoft.graph.security.userSource",
  "id": "String (identifier)",
  "displayName": "String",
  "holdStatus": "String",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "email": "String",
  "includedSources": "String",
  "siteWebUrl": "String"
  ///////////////////////////////////////////// FIX EXAMPLE
}
```