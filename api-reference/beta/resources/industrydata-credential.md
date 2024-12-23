---
title: "credential resource type"
description: "Represents a base type for credentials supported in the Industry Data API."
author: "dakelle"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: resourcePageType
ms.date: 10/04/2024
---

# credential resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a base type for credentials supported in the Industry Data API. This type is abstract.

## Properties
|Property|Type|Description|
|:---|:---|:---|
| displayName       | String         | The name of the credential.                                                           |
| isValid           | Boolean        | Indicates whether the credential provided is valid based on the last data connector [validate](../api/industrydata-industrydataconnector-validate.md) operation. |
| lastValidDateTime | DateTimeOffset | The time that the credential was last successfully validated by the data connector [validate](../api/industrydata-industrydataconnector-validate.md) operation.                                  |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.industryData.credential"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.industryData.credential",
  "displayName": "String",
  "isValid": "Boolean",
  "lastValidDateTime": "String (timestamp)"
}
```

