---
title: "validateOperation resource type"
description: "Represents an abstract type for the asynchronous operation results from any operation that validates data."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industrydata"
doc_type: resourcePageType
---

# validateOperation resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an abstract type for the asynchronous operation results from any operation that validates data.

Inherits from [longRunningOperation](../resources/longrunningoperation.md).

## Properties

| Property           | Type                                                                  | Description                                                                                                                                                                                          |
| :----------------- | :-------------------------------------------------------------------- | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| createdDateTime    | DateTimeOffset                                                        | **TODO: Add Description** Inherited from [longRunningOperation](../resources/longrunningoperation.md).                                                                                               |
| errors             | [microsoft.graph.publicError](../resources/publicerror.md) collection | Set of errors discovered through validation.                                                                                                                                                         |
| id                 | String                                                                | **TODO: Add Description** Inherited from [longRunningOperation](../resources/longrunningoperation.md).                                                                                               |
| lastActionDateTime | DateTimeOffset                                                        | **TODO: Add Description** Inherited from [longRunningOperation](../resources/longrunningoperation.md).                                                                                               |
| resourceLocation   | String                                                                | **TODO: Add Description** Inherited from [longRunningOperation](../resources/longrunningoperation.md).                                                                                               |
| status             | longRunningOperationStatus                                            | **TODO: Add Description** Inherited from [longRunningOperation](../resources/longrunningoperation.md).The possible values are: `notStarted`, `running`, `succeeded`, `failed`, `unknownFutureValue`. |
| statusDetail       | String                                                                | **TODO: Add Description** Inherited from [longRunningOperation](../resources/longrunningoperation.md).                                                                                               |
| warnings           | [microsoft.graph.publicError](../resources/publicerror.md) collection | Set of warnings discovered through validation.                                                                                                                                                       |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.industryData.validateOperation",
  "baseType": "microsoft.graph.longRunningOperation",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.industryData.validateOperation",
  "createdDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "lastActionDateTime": "String (timestamp)",
  "resourceLocation": "String",
  "status": "String",
  "statusDetail": "String",
  "errors": [
    {
      "@odata.type": "microsoft.graph.publicError"
    }
  ],
  "warnings": [
    {
      "@odata.type": "microsoft.graph.publicError"
    }
  ]
}
```
