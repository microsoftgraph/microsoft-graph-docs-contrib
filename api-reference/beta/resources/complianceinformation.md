---
title: "complianceInformation resource type"
description: "Contains compliance data associated with secure score control."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.prod: "security"
author: "preetikr"
---

# complianceInformation resource type

Namespace: microsoft.graph

Contains compliance data associated with secure score control.

## Properties

|Property |Type |Description |
|:--|:--|:--|
|certificationControls | [certificationControl](certificationcontrol.md) collection | Collection of the certification controls associated with the certification. |
|certificationName | String | The name of the compliance certification, for example, `ISO 27018:2014`, `GDPR`, `FedRAMP`, and `NIST 800-171`. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.complianceInformation"
}-->

```json
{
  "certificationControls": [{"@odata.type": "microsoft.graph.complianceInformation"}],
  "certificationName": "String"
}
```

<!-- {
  "type": "#page.annotation",
  "description": "complianceInformation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
