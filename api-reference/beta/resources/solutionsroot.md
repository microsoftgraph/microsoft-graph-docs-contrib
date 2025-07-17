---
title: "solutionsRoot resource type"
description: "The entry point for Microsoft Bookings, virtual event webinar, and business scenario APIs."
author: "vikailas"
ms.localizationpriority: medium
ms.subservice: "non-product-specific"
doc_type: resourcePageType
ms.date: 07/26/2024
---

# solutionsRoot resource type
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The entry point for [Microsoft Bookings](booking-api-overview.md), [virtual event](virtualevent.md), and [business scenario](businessscenario-overview.md) APIs.

All Microsoft Graph calls to resources under `/solutions` use the following service root URL:

<!-- { "blockType": "ignored" } -->
```http
https://graph.microsoft.com/{version}/solutions/
```

To access Bookings businesses, use the following syntax:

<!-- { "blockType": "ignored" } -->
```http
https://graph.microsoft.com/{version}/solutions/bookingBusinesses 
```

To access Bookings currencies, use the following syntax:

<!-- { "blockType": "ignored" } -->
```http
https://graph.microsoft.com/{version}/solutions/bookingCurrencies 
```

To access business scenarios, use the following syntax:

<!-- { "blockType": "ignored" } -->
```http
https://graph.microsoft.com/{version}/solutions/businessScenarios 
```

To access virtual event webinars, use the following syntax:

<!-- { "blockType": "ignored" } -->
```http
https://graph.microsoft.com/{version}/solutions/virtualEvents/webinars
```

To access virtual event town halls, use the following syntax:

<!-- { "blockType": "ignored" } -->
```http
https://graph.microsoft.com/{version}/solutions/virtualEvents/townhalls
```

To access approval items, use the following syntax:

<!-- { "blockType": "ignored" } -->
```http
https://graph.microsoft.com/{version}/solutions/approval/approvalItems
```


## Methods
None.

## Properties
None. 

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|bookingBusinesses|[bookingBusiness](bookingbusiness.md) collection | A collection of businesses in Microsoft Bookings. Read-only. Nullable.|
|bookingCurrencies|[bookingCurrency](bookingcurrency.md) collection | A collection of monetary currencies supported by a [bookingBusiness](bookingbusiness.md). Read-only. Nullable.|
|businessScenarios|[businessScenario](businessscenario.md) collection | A collection of scenarios that contain relevant data and configuration information for a specific problem domain.|
|virtualEvents|[virtualEventsRoot](virtualeventsroot.md) collection | A collection of virtual events.|
|approvalItems|[approvalItem](approvalitem.md) collection | A collection of approval items.|

## JSON representation
The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.solutionsRoot"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.solutionsRoot"
}
```
