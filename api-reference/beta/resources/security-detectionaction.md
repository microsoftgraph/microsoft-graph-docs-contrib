---
title: "detectionAction resource type"
description: "Describes the actions that will be taken after a detection is made by the custom detection rule."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# detectionAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the actions that will be taken after a detection is made by a [custom detection rule](../resources/security-detectionrule.md).

## Properties
| Property            | Type                                                                                          | Description                                                           |
|:--------------------|:----------------------------------------------------------------------------------------------|:----------------------------------------------------------------------|
| alertTemplate       | [microsoft.graph.security.alertTemplate](../resources/security-alerttemplate.md)              | Template for the generated alert.                                     |
| organizationalScope | [microsoft.graph.security.organizationalScope](../resources/security-organizationalscope.md)  | Groups to which the custom detection rule applies.                    |
| responseActions     | [microsoft.graph.security.responseAction](../resources/security-responseaction.md) collection | Actions taken on impacted assets as set in the custom detection rule. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.detectionAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.detectionAction",
  "alertTemplate": {
    "@odata.type": "microsoft.graph.security.alertTemplate"
  },
  "organizationalScope": {
    "@odata.type": "microsoft.graph.security.organizationalScope"
  },
  "responseActions": [
    {
      "@odata.type": "microsoft.graph.security.stopAndQuarantineFileResponseAction"
    }
  ]
}
```

