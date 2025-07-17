---
title: vendor resource type
description: A vendor object in Dynamics 365 Business Central.
services: project-madeira
documentationcenter: ''
author: SusanneWindfeldPedersen
ms.localizationpriority: medium
ms.subservice: "d365-business-central"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# vendor resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a vendor in Dynamics 365 Business Central.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get vendor](../api/dynamics-vendor-get.md)|vendor|Gets a vendor object.|
|[Create vendor](../api/dynamics-create-vendor.md)|vendor|Creates a vendor object.|
|[Update vendor](../api/dynamics-vendor-update.md)|vendor|Updates a vendor object.|
|[Delete vendor](../api/dynamics-vendor-delete.md)|none|Deletes a vendor object.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|GUID|The unique ID of the vendor. Non-editable.|
|number|string|The vendor number.|
|displayName|string|The vendor's display name.|
|address|[NAV.PostalAddress](../resources/dynamics-complextypes.md)|The vendor's address.|
|phoneNumber|string|The vendor's telephone number.|
|email|string|The vendor's email address.|
|website|string|The vendor's website address.|
|taxRegistrationNumber|string|The vendor's tax registration number.|
|currencyId|GUID|The default currency code ID for the vendor.|
|currencyCode|string|The default currency code for the vendor.|
|irs1099Code|string|Specifies a 1099 code for the vendor. US only.|
|paymentTermsId|GUID|The default payment terms ID for the vendor.|
|paymentMethodId|GUID|The default payment method ID for the vendor.|
|taxLiable|Boolean|Specifies if the vendor is liable for tax.|
|blocked|string|Specifies which transactions with the vendor that can't be posted. Accepted values are blank, Payment or All|
|balance|decimal|The vendor's balance. Read-Only.|
|lastModifiedDateTime|datetime|The last datetime the vendor was modified. Read-Only.|


## Relationships
None

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.vendor"
}-->

Here's a JSON representation of the vendor.

```json
{
  "id": "GUID",
  "number": "string",
  "displayName": "string",
  "address": "NAV.PostalAddress",
  "phoneNumber": "string",
  "email": "string",
  "website": "string",
  "taxRegistrationNumber": "string",
  "currencyId": "GUID",
  "currencyCode": "string",
  "irs1099Code": "string",
  "paymentTermsId": "GUID",
  "paymentMethodId": "GUID",
  "taxLiable": "Boolean",
  "blocked": "string",
  "balance": "decimal",
  "lastModifiedDateTime": "datetime"
}
```



