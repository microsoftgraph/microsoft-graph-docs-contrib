---
title: "List roles"
description: "List Viva Engage role objects and proprties."
author: "richafnu"
ms.date: 03/27/2025
ms.localizationpriority: medium
ms.subservice: "viva-engage"
doc_type: apiPageType
---

# List roles

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of engagementRole objects and properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "employeeexperience-list-roles-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/employeeexperience-list-roles-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /employeeExperience/roles
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [engagementRole](../resources/engagementrole.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_engagementrole"
}
-->
``` http
GET https://graph.microsoft.com/beta/employeeExperience/roles
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.engagementRole"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.engagementRole",
      "id": "fcf0d8d2-e7ef-5f58-2947-5caf4ba4080c",
      "displayName": "String"
    }
  ]
}
```

