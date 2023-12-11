---
title: "solutionsRoot resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# solutionsRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get solutionsRoot](../api/solutionsroot-get.md)|[solutionsRoot](../resources/solutionsroot.md)|Read the properties and relationships of a [solutionsRoot](../resources/solutionsroot.md) object.|
|[Update solutionsRoot](../api/solutionsroot-update.md)|[solutionsRoot](../resources/solutionsroot.md)|Update the properties of a [solutionsRoot](../resources/solutionsroot.md) object.|
|[List bookingBusinesses](../api/solutionsroot-list-bookingbusinesses.md)|[bookingBusiness](../resources/bookingbusiness.md) collection|Get the bookingBusiness resources from the bookingBusinesses navigation property.|
|[Create bookingBusiness](../api/solutionsroot-post-bookingbusinesses.md)|[bookingBusiness](../resources/bookingbusiness.md)|Create a new bookingBusiness object.|
|[List bookingCurrencies](../api/solutionsroot-list-bookingcurrencies.md)|[bookingCurrency](../resources/bookingcurrency.md) collection|Get the bookingCurrency resources from the bookingCurrencies navigation property.|
|[Create bookingCurrency](../api/solutionsroot-post-bookingcurrencies.md)|[bookingCurrency](../resources/bookingcurrency.md)|Create a new bookingCurrency object.|
|[List businessScenarios](../api/solutionsroot-list-businessscenarios.md)|[businessScenario](../resources/businessscenario.md) collection|Get the businessScenario resources from the businessScenarios navigation property.|
|[Create businessScenario](../api/solutionsroot-post-businessscenarios.md)|[businessScenario](../resources/businessscenario.md)|Create a new businessScenario object.|
|[List virtualEventsRoot](../api/solutionsroot-list-virtualevents.md)|[virtualEventsRoot](../resources/virtualeventsroot.md) collection|Get the virtualEventsRoot resources from the virtualEvents navigation property.|
|[Create virtualEventsRoot](../api/solutionsroot-post-virtualevents.md)|[virtualEventsRoot](../resources/virtualeventsroot.md)|Create a new virtualEventsRoot object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|bookingBusinesses|[bookingBusiness](../resources/bookingbusiness.md) collection|**TODO: Add Description**|
|bookingCurrencies|[bookingCurrency](../resources/bookingcurrency.md) collection|**TODO: Add Description**|
|businessScenarios|[businessScenario](../resources/businessscenario.md) collection|**TODO: Add Description**|
|virtualEvents|[virtualEventsRoot](../resources/virtualeventsroot.md)|**TODO: Add Description**|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.solutionsRoot",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.solutionsRoot"
}
```

