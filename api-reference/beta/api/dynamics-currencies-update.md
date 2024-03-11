---
title: Update currencies 
description: Updates a currency object in Dynamics 365 Business Central.
services: project-madeira
documentationcenter: ''
author: SusanneWindfeldPedersen
ms.localizationpriority: medium
ms.prod: "dynamics-365-business-central"
doc_type: apiPageType
---

# Update currencies

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a currency object for Dynamics 365 Business Central.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "dynamics_currencies_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/dynamics-currencies-update-permissions.md)]

## HTTP request
```
PATCH /financials/companies/{id}/currencies/{id}
```

## Optional query parameters
This method supports the [OData Query Parameters](/graph/query-parameters) to help customize the response.

## Request headers
|Header       |Value                    |
|-------------|-------------------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type |application/json         |
|If-Match     |Required. When this request header is included and the eTag provided doesn't match the current tag on the **currencies**, the **currencies** won't be updated. |

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that aren't included in the request body maintains their previous values or be recalculated based on changes to other property values. For best performance, you shouldn't include existing values that haven't changed.

## Response
If successful, this method returns a `200 OK` response code and an updated **currencies** object in the response body.

## Example

**Request**

Here's an example of the request.
```http
PATCH https://graph.microsoft.com/beta/financials/companies/{id}/currencies/{id}
Content-type: application/json

{
	"displayName": "United States Dollar"
}
```

**Response**

Here's an example of the response. 

> **Note**: The response object shown here might be shortened for readability.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": "id-value",
  "code": "US",
  "displayName": "United States Dollar",
  "symbol": "$",
  "amountDecimalPlaces": "2:2",
  "amountRoundingPrecision": 0.01,
  "lastModifiedDateTime": "2017-03-22T21:12:18.793Z"
}
```


