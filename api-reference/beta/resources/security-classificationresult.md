---
title: "classificationResult resource type"
description: "Represents the result of a classification request."
author: "tommoser"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# classificationResult resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the result of a classification operation from the Microsoft classification engine. Data classification results from Azure Information Protection, Office, and other Microsoft services might return a [well-defined set of classification types](/office365/securitycompliance/what-the-sensitive-information-types-look-for). These types can be provided to the [evaluateClassificationResults](../api/security-sensitivitylabel-evaluateclassificationresults.md) API to resolve a sensitive information to a Microsoft Purview Information Protection label. 

## Properties
| Property        | Type  | Description                                                            |
| :-------------- | :---- | :--------------------------------------------------------------------- |
| confidenceLevel | Int32 | The confidence level, 0 to 100, of the result.                         |
| count           | Int32 | The number of instances of the specific information type in the input. |
| sensitiveTypeId | GUID  | The GUID of the discovered sensitive information type.                 |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.classificationResult"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.classificationResult",
  "confidenceLevel": "Integer",
  "count": "Integer",
  "sensitiveTypeId": "GUID"
}
```

