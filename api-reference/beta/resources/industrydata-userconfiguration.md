---
title: "userConfiguration resource type"
description: "The different configurations choices for the users to be provisioned with."
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: resourcePageType
---

# userConfiguration resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The different configurations choices for the users to be provisioned with.

## Properties

| Property                | Type                                                                                           | Description                                                |
| :---------------------- | :--------------------------------------------------------------------------------------------- | :--------------------------------------------------------- |
| defaultPasswordSettings | [microsoft.graph.industryData.passwordSettings](../resources/industrydata-passwordsettings.md) | The password settings for the users to be provisioned with |
| licenseSkus             | String collection                                                                              | The license skus for the users to be provisioned with      |

## Relationships

| Relationship | Type                                                | Description                                   |
| :----------- | :-------------------------------------------------- | :-------------------------------------------- |
| roleGroup    | [roleGroup](../resources/industrydata-rolegroup.md) | The role for the users to be provisioned with |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.industryData.userConfiguration"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.industryData.userConfiguration",
  "defaultPasswordSettings": {
    "@odata.type": "microsoft.graph.industryData.passwordSettings"
  },
  "licenseSkus": ["String"]
}
```
