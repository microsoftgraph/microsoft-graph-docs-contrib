---
title: "accessPackageAnswer resource type"
description:  "Represents answers to an accessPackageQuestion that are stored on an accessPackageAssignmentRequest."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# accessPackageAnswer resource type

Namespace: microsoft.graph

Represents the answer a requestor provides to an [accessPackageQuestion](../resources/accesspackagequestion.md). The actual answer will be a subtype of this complex type, either [accessPackageAnswerString](../resources/accesspackageanswerstring.md) or [accessPackageAnswerChoice](../resources/accesspackageanswerchoice.md). These answers will be stored on an [accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md) object.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|answeredQuestion|[accessPackageQuestion](../resources/accesspackagequestion.md)|The question the answer is for.|
|displayValue|String|The localized display value shown to the requestor and approvers. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessPackageAnswer"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessPackageAnswer",
  "displayValue": "String",
  "answeredQuestion": {
    "@odata.type": "microsoft.graph.accessPackageQuestion"
  }
}
```

