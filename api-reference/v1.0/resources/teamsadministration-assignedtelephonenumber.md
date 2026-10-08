---
title: "assignedTelephoneNumber resource type"
description: "Represents details about the phone number and its corresponding assignment category."
author: "praspatil05"
ms.date: 12/03/2025
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# assignedTelephoneNumber resource type

Namespace: microsoft.graph.teamsAdministration

Represents details about the phone number and its corresponding assignment category. The assignment category can include values such as `primary`, `private`, and `alternate`.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignmentCategory|microsoft.graph.teamsAdministration.assignmentCategory|The category of the assigned phone number. The possible values are: `primary`, `private`, `alternate`, `unknownFutureValue`.|
|telephoneNumber|String|The assigned phone number.|

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
  "assignmentCategory": "String",
  "telephoneNumber": "String"
}
```

