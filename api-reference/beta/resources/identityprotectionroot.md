---
title: "identityProtectionRoot resource type"
description: "Container for navigation properties for Azure AD identity protection resources."
author: "cloudhandler"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# identityProtectionRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Container for the navigation properties for Azure AD identity protection resources.

## Methods

None.

## Properties

None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|riskDetections|[riskDetection](../resources/riskdetection.md) collection| Risk detection in Azure AD Identity Protection and the associated information about the detection.|
|riskyUsers|[riskyUser](../resources/riskyuser.md) collection|Users that are flagged as at-risk by Azure AD Identity Protection. |

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityProtectionRoot",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityProtectionRoot"
}
```

