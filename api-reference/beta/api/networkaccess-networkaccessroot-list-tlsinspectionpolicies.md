---
title: "List tlsInspectionPolicy objects"
description: "Get a list of the tlsInspectionPolicy objects and their properties."
author: "sisharm"
ms.date: 05/23/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# List tlsInspectionPolicy objects

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [tlsInspectionPolicy](../resources/networkaccess-tlsinspectionpolicy.md) objects and their properties.

## Permissions

One of these permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-overview).

<!-- {
  "blockType": "permissions",
  "name": "networkaccess-networkaccessroot-list-tlsinspectionpolicies-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-networkaccessroot-list-tlsinspectionpolicies-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /networkAccess/tlsInspectionPolicies
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [tlsInspectionPolicy](../resources/networkaccess-tlsinspectionpolicy.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_tlsinspectionpolicy"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkAccess/tlsInspectionPolicies
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.tlsInspectionPolicy"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "b712c469-e7cd-e7cb-738f-94b199570b0d",
      "name": "Default TLS Inspection Policy",
      "description": "Policy for inspecting TLS traffic",
      "version": "1.0",
      "lastModifiedDateTime": "2025-02-10T00:00:00Z",
      "settings": {
          "defaultAction": "bypass"
      }
    }
  ]
}
```