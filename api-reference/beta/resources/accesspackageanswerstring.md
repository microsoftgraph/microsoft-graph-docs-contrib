---
title: "accessPackageAnswerString resource type"
description: "A string answer to an accessPackageTextInputQuestion"
author: "markwahl-msft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# accessPackageAnswerString resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Indicates the string input answer to an [accessPackageTextInputQuestion](../resources/accesspackagetextinputquestion.md). Stored on an [accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md).

Inherits from [accessPackageAnswer](../resources/accesspackageanswer.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|answeredQuestion|[accessPackageQuestion](../resources/accesspackagequestion.md)|The question the answer applies to. Inherited from [accessPackageAnswer](../resources/accesspackageanswer.md).|
|displayValue|String|The localized display values shown to the requestor and approvers. Inherited from [accessPackageAnswer](../resources/accesspackageanswer.md).|
|value|String|The value stored on the requestor's user profile, if this answer is configured to be stored as a specific attribute.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessPackageAnswerString"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessPackageAnswerString",
  "displayValue": "String",
  "answeredQuestion": {
    "@odata.type": "microsoft.graph.accessPackageQuestion"
  },
  "value": "String"
}
```

