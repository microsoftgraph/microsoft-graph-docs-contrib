---
title: "agedAccountsPayable resource type"
description: "Represents an agedAccountsPayable object in Dynamics 365 Business Central that shows the aging of a vendor account.".
services: "project-madeira"
documentationcenter: ""
author: "SusanneWindfeldPedersen"
ms.localizationpriority: medium
ms.prod: "dynamics-365-business-central"
doc_type: resourcePageType
---

# agedAccountsPayable resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an [agedAccountsPayable](dynamics-agedaccountspayable.md) object in Dynamics 365 Business Central that shows the aging of a vendor account.

## Methods

| Method         | Return Type  |Description|
|:---------------|:-------------|:----------|
|[Get agedAccountsPayable](../api/dynamics-agedaccountspayable-get.md)|agedAccountsPayable|Get an **agedAccountsPayable** object|

## Properties
| Property	    | Type	   |Description                                 |
|:--------------|:---------|:-------------------------------------------|
|agedAsOfDate   |date|The period start date used to calculate aging periods.|
|balanceDue     |numeric   |The total balance due to the vendor.|
|currencyCode   |string    |The currency code.                     |
|currentAmount  |numeric   |The balance before the first aging period.|
|name           |string    |The name of the vendor.                    |
|period1Amount  |numeric   |The balance in the first aging period.|
|period2Amount  |numeric   |The balance in the second aging period.|
|period3Amount  |numeric   |The balance in the third aging period.|
|periodLengthFilter|string |The length of the periods. Acceptable values for the time units are: `D`, `WD`, `W`, `M`, `Q`, or `Y`. `C` indicates current time unit based on date, can be specified as a prefix to the time unit.|
|vendorId       |GUID      |The unique ID of vendor.                    |
|vendorNumber   |string    |Specifies vendor's number.                  |

## Relationships
None.

## JSON representation

The following is a JSON representation of the resource.

```json
{
  "agedAsOfDate": "Date",
  "balanceDue": "Decimal",
  "currencyCode": "String",
  "currentAmount": "Decimal",
  "name": "String",
  "period1Amount": "Decimal",
  "period2Amount": "Decimal",
  "period3Amount": "Decimal",
  "periodLengthFilter": "String",
  "vendorId": "GUID",
  "vendorNumber": "String"
}
```
