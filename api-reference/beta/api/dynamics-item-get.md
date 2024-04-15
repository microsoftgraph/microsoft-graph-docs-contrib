---
title: "Get items" 
description: "Gets an item object in Dynamics 365 Business Central."
services: "project-madeira"
documentationcenter: ""
author: "SusanneWindfeldPedersen"
ms.localizationpriority: medium
ms.subservice: "d365-business-central"
doc_type: apiPageType
---

# Get items

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties and relationships of an item object for Dynamics 365 Business Central.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "dynamics_item_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/dynamics-item-get-permissions.md)]

## HTTP request

```http
GET /financials/companies/{id}/items/{id}
```

## Optional query parameters
This method supports the [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers
|Header       |Value                    |
|-------------|-------------------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [item](../resources/dynamics-item.md) objects in the response body.

## Example

### Request

The following example shows a request.
```http
GET https://graph.microsoft.com/beta/financials/companies/{id}/items/{id}
```

### Response

The following example shows the response.

> **Note**: The response object shown here might be shortened for readability.

```json
{
  "id": "id-value",
  "number": "1896-S",
  "displayName": "ATHENS Desk",
  "type": "Inventory",
  "blocked": false,
  "baseUnitOfMeasureId": "id-value",
  "gtin": "",
  "itemCategoryId": "id-value"
  "inventory": 0,
  "unitPrice": 1000.8,
  "priceIncludesTax": false,
  "unitCost": 780.7,
  "taxGroupId": "id-value",
  "taxGroupCode": "FURNITURE",
  "lastModifiedDateTime": "2017-03-07T00:35:30.073Z"
}
```
