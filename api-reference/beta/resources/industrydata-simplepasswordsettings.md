---
title: "simplePasswordSettings resource type"
description: "The password settings for the users to be provisioned"
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: resourcePageType
---

# simplePasswordSettings resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The password settings for the users to be provisioned.

Inherits from [microsoft.graph.industryData.passwordSettings](../resources/industrydata-passwordsettings.md).

## Properties

| Property | Type   | Description               |
| :------- | :----- | :------------------------ |
| password | String | The password for the user |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.industryData.simplePasswordSettings"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.industryData.simplePasswordSettings",
  "password": "String"
}
```
