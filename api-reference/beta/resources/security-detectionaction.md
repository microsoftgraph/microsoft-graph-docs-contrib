---
title: "detectionAction resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# detectionAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|alertTemplate|[microsoft.graph.security.alertTemplate](../resources/security-alerttemplate.md)|**TODO: Add Description**|
|organizationalScope|[microsoft.graph.security.organizationalScope](../resources/security-organizationalscope.md)|**TODO: Add Description**|
|responseActions|[microsoft.graph.security.responseAction](../resources/security-responseaction.md) collection|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

