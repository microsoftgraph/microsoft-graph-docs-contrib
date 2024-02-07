---
title: Get journalLines 
description: Gets a journal line object in Dynamics 365 Business Central.
services: project-madeira
documentationcenter: ''
author: SusanneWindfeldPedersen
ms.localizationpriority: medium
ms.prod: "dynamics-365-business-central"
doc_type: apiPageType
---

# Get journalLines

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties and relationships of a journal line object for Dynamics 365 Business Central.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "dynamics_journalline_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/dynamics-journalline-get-permissions.md)]

## HTTP request

```
GET /financials/companies/{id}/journals/{id}/journalLines/{id}
```

## Optional query parameters
This method supports the [OData Query Parameters](/graph/query-parameters) to help customize the response.

## Request headers
|Header       |Value                     |
|-------------|--------------------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a **journalLines** object in the response body.

## Example

**Request**

Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/financials/companies/{id}/journals/{id}/journalLines/{id}
```

**Response**

Here is an example of the response. 

> **Note**: The response object shown here might be shortened for readability.

```json
{
  "id": "id-value",
  "journalDisplayName": "DEFAULT",
  "lineNumber": 10000,
  "accountId": "id-value",
  "accountNumber": "10400",
  "postingDate": "2015-12-31",
  "documentNumber": "1234",
  "externalDocumentNumber": "",
  "amount": 1500,
  "description": "Accounts Receivable",
  "comment": "",
  "lastModifiedDateTime": "2017-03-17T19:02:22.043Z"
}
```



