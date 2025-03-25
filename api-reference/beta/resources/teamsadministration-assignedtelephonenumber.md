---
title: "assignedTelephoneNumber resource type"
description: "Provides details about the telephone number and its corresponding assignment category. The assignment category can include values such as 'Primary,' 'Private,' and 'Alternate.'"
author: "praspatil05"
ms.date: 03/19/2025
ms.localizationpriority: medium
ms.subservice: "Teams"
doc_type: resourcePageType
---

# assignedTelephoneNumber resource type

Namespace: microsoft.graph.teamsAdministration

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides details about the telephone number and its corresponding assignment category. The assignment category can include values such as 'Primary,' 'Private,' and 'Alternate.'


## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignmentCategory|microsoft.graph.teamsAdministration.assignmentCategory|Represents the category of the assigned phone number.The possible values are: `primary`, `private`, `alternate`, `unknownFutureValue`.|
|telephoneNumber|String|Represents the assigned telephone number|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamsAdministration.assignedTelephoneNumber"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsAdministration.assignedTelephoneNumber",
  "telephoneNumber": "String",
  "assignmentCategory": "String"
}
```

