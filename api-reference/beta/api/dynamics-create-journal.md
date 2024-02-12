---
title: Create journals
description: Creates a journal object in Dynamics 365 Business Central.
services: project-madeira
documentationcenter: ''
author: SusanneWindfeldPedersen
ms.localizationpriority: medium
ms.prod: "dynamics-365-business-central"
doc_type: apiPageType
---

# Create journals

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Creates a journal in Dynamics 365 Business Central.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "dynamics_create_journal" } -->
[!INCLUDE [permissions-table](../includes/permissions/dynamics-create-journal-permissions.md)]

## HTTP request

```http
POST /financials/companies/{id}/journals
```

## Optional query parameters
This method supports the [OData Query Parameters](/graph/query-parameters) to help customize the response.

## Request headers
|Header        |Value                     |
|--------------|--------------------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type  |application/json          |

## Request body
In the request body, supply a JSON representation of a **journals** object.

## Response
If successful, this method returns ```201 Created``` response code and a **journals** object in the response body.

## Example

**Request**

Here is an example of a request.

```http
POST https://graph.microsoft.com/beta/financials/companies/{id}/journals
Content-type: application/json

{
  "code": "DEFAULT"
}
```

**Response**

```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "id": "id-value",
  "code": "DEFAULT",
  "displayName": "Default Journal Batch",
  "lastModifiedDateTime": "2017-05-17T11:30:01.313Z"
}
```



