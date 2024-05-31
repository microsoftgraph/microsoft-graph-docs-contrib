---
title: "industryData credential resource type"
description: "Base abstract type for all kinds of credentials supported in the industryData API."
author: "dakelle"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: resourcePageType
---

# industryData credential resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Base type for all kinds of credentials supported in the industryData API. This is an abstract type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
| displayName       | String         | The name of the credential.                                                           |
| isValid           | Boolean        | Denotes if the credential provided is usable based on the last successful validation. |
| lastValidDateTime | DateTimeOffset | The most recent time that the credential was successfully validated.                                  |

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

