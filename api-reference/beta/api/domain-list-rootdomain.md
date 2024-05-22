---
title: "Get rootDomain"
description: "Get the root domain of a sub domain."
author: "shilpi-kansal"
ms.localizationpriority: medium
ms.subservice: "directory-management"
doc_type: apiPageType
---

# Get rootDomain

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the [root domain](../resources/domain.md) of a sub domain.
The API returns a single object which is the root domain of the specified sub domain.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "domain-list-rootdomain-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/domain-list-rootdomain-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /domains/{domainsId}/rootDomain
```

## Optional query parameters

This method supports $expand OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [domain](../resources/domain.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_rootDomain"
}
-->
``` http
GET https://graph.microsoft.com/beta/domains/{domainsId}/rootDomain
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.domain)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.domain",
      "id": "89bbbd74-10f7-9190-8646-5fc967d3c1e9",
      "authenticationType": "String",
      "availabilityStatus": "String",
      "isAdminManaged": "Boolean",
      "isDefault": "Boolean",
      "isInitial": "Boolean",
      "isRoot": "Boolean",
      "isVerified": "Boolean",
      "passwordNotificationWindowInDays": "Integer",
      "passwordValidityPeriodInDays": "Integer",
      "supportedServices": [
        "String"
      ],
      "state": {
        "@odata.type": "microsoft.graph.domainState"
      }
    }
  ]
}
```

