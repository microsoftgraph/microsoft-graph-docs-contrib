---
title: "solutions root resource type"
description: "The entry point for various solutions."
author: "vikailas-microsoft"
ms.localizationpriority: medium
ms.prod: "bookings"
doc_type: resourcePageType
---

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The entry point for bookings business and booking currencies.

All calls to resources under solutions through the Microsoft Graph API use this service root URL:

```http
https://graph.microsoft.com/{version}/solutions/
```

**Booking Businesses** To access booking businesses, use the following URL

```http
https://graph.microsoft.com/{version}/solutions/bookingBusinesses 
```

**Booking Cusinesses** To access booking Currencies, use the following URL

```http
https://graph.microsoft.com/{version}/solutions/bookingCurrencies 
```


## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|bookingBusinesses|[bookingBusinesses](bookingbusiness.md) collection|The collection of booking businesses. Read-only. Nullable.|
|bookingcurrencies|[bookingcurrencies](bookingcurrency.md) collection |The collection of booking currencies. Read-only. Nullable.|
