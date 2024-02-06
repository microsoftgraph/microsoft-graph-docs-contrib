---
title: "solutionsRoot resource type"
description: "The entry point for Microsoft Bookings, virtual event webinar, and business scenario APIs."
author: "vikailas-microsoft"
ms.localizationpriority: medium
ms.prod: "non-product-specific"
doc_type: resourcePageType
---

# solutionsRoot resource type
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The entry point for [Microsoft Bookings](booking-api-overview.md), [virtual event webinar](virtualeventwebinar.md), and [business scenario](businessscenario-overview.md) APIs.

All Microsoft Graph calls to resources under `/solutions` use the following service root URL:

<!-- { "blockType": "ignored" } -->
```http
https://graph.microsoft.com/{version}/solutions/
```

<!-- { "blockType": "ignored" } -->
To access Bookings businesses, use the following URL:

```http
https://graph.microsoft.com/{version}/solutions/bookingBusinesses 
```

To access Bookings currencies, use the following URL:

<!-- { "blockType": "ignored" } -->
```http
https://graph.microsoft.com/{version}/solutions/bookingCurrencies 
```
## Methods
None.

## Properties
None.

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|bookingBusinesses|[bookingBusinesses](bookingbusiness.md) collection | A collection of businesses in Microsoft Bookings. Read-only. Nullable.|
|bookingCurrencies|[bookingcurrencies](bookingcurrency.md) collection | A collection of monetary currencies supported by a [bookingBusiness](bookingbusiness.md). Read-only. Nullable.|
|businessScenarios|[businessScenario](businessscenario.md) collection | A collection of scenarios that contain relevant data and configuration information for a specific problem domain.|
|virtualEvents|virtualEventsRoot collection | A collection of virtual events.|

## JSON representation
The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.solutionsRoot"
}
-->
``` json
{
  "bookingBusiness": [{ "@odata.type": "microsoft.graph.bookingBusiness" }],
  "bookingCurrencies": [{ "@odata.type": "microsoft.graph.bookingCurrency" }],
  "businessScenarios": [{ "@odata.type": "microsoft.graph.businessScenario" }],
  "virtualEvents": [ { "@odata.type": "microsoft.graph.virtualEventsRoot" } ]
}
