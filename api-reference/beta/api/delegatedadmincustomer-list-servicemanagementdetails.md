---
title: "List serviceManagementDetails"
description: "Get a list of the delegatedAdminServiceManagementDetail objects and their properties."
author: "adtangir"
ms.localizationpriority: medium
ms.prod: "customer-relationship-management"
doc_type: apiPageType
---

# List serviceManagementDetails
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [delegatedAdminServiceManagementDetail](../resources/delegatedAdminServiceManagementDetail.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)| DelegatedAdminRelationship.Read.All, DelegatedAdminRelationship.ReadWrite.All |
|Delegated (personal Microsoft account)| Not supported. |
|Application| Not supported. |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /tenantRelationships/delegatedAdminCustomers/{delegatedAdminCustomerId}/serviceManagementDetails
```

## Optional query parameters
This method does not support OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters). 

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [delegatedAdminServiceManagementDetail](../resources/delegatedAdminServiceManagementDetail.md) objects in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_delegatedAdminServiceManagementDetails"
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationships/delegatedAdminCustomers/4fdbff88-9d6b-42e0-9713-45c922ba8001/serviceManagementDetails
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-delegatedadminservicemanagementdetails-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-delegatedadminservicemanagementdetails-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-delegatedadminservicemanagementdetails-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-delegatedadminservicemanagementdetails-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-delegatedadminservicemanagementdetails-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.delegatedAdminServiceManagementDetail)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/tenantRelationships/$metadata#delegatedAdminCustomers/4fdbff88-9d6b-42e0-9713-45c922ba8001/serviceManagementDetails",
  "value": [
    {
      "@odata.type": "#microsoft.graph.delegatedAdminServiceManagementDetail",
      "id": "fa5fa04e-13df-4b7c-9e99-92573ba1fa55",
      "serviceManagementUrl": "https://aad.portal.azure.com/contoso.onmicrosoft.com",
      "serviceName": "Azure Active Directory"
    },
    {
      "@odata.type": "#microsoft.graph.delegatedAdminServiceManagementDetail",
      "id": "5d0273c3-0f0e-4e00-90e8-e792c8860fb5",
      "serviceManagementUrl": "https://lighthouse.microsoft.com",
      "serviceName": "Microsoft 365 Lighthouse"
    },
    {
      "@odata.type": "#microsoft.graph.delegatedAdminServiceManagementDetail",
      "id": "2b565abc-b0de-4974-97c0-bed0abb14a0f",
      "serviceManagementUrl": "https://businesscentral.dynamics.com/55beae45-27a6-4e7a-8c7c-2eae70816cfa/admin",
      "serviceName": "Dynamics 365 Business Central"
    },
    {
      "@odata.type": "#microsoft.graph.delegatedAdminServiceManagementDetail",
      "id": "ce0b42f4-bfde-4abe-a5f7-add83f104b23",
      "serviceManagementUrl": "https://admin.teams.microsoft.com/?delegatedOrg=contoso.onmicrosoft.com",
      "serviceName": "Teams"
    }
  ]
}
```

