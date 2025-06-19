---
title: "List threatIntelligencePolicyLink objects"
description: "Get a list of the threatIntelligencePolicyLink objects and their properties."
author: "fgomulka"
ms.date: 06/05/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# List threatIntelligencePolicyLink objects

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [threatIntelligencePolicyLink](../resources/networkaccess-threatintelligencepolicylink.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "networkaccess-threatintelligencepolicylink-list-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-threatintelligencepolicylink-list-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET ** Collection URI for microsoft.graph.networkaccess.threatIntelligencePolicyLink not found
```

## Optional query parameters

This method supports the `$select`, `$top`, `expand`, and `$filter` OData query parameters to help customize the response.  For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [threatIntelligencePolicyLink](../resources/networkaccess-threatintelligencepolicylink.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_threatintelligencepolicylink"
}
-->
``` http
GET https://graph.microsoft.com/beta** Collection URI for microsoft.graph.networkaccess.threatIntelligencePolicyLink not found
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.threatIntelligencePolicyLink"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.networkaccess.threatIntelligencePolicyLink",
      "id": "ce676072-3617-c4ec-0a56-f5549ef31403",
      "state": "String",
      "version": "String"
    }
  ]
}
```

