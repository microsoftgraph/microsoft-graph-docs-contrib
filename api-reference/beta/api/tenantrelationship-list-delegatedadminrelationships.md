---
title: "List delegatedAdminRelationships"
description: "Get a list of the delegatedAdminRelationship objects and their properties."
author: "adtangir"
ms.localizationpriority: medium
ms.prod: partner-customer-administration
doc_type: apiPageType
---

# List delegatedAdminRelationships
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [delegatedAdminRelationship](../resources/delegatedadminrelationship.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "tenantrelationship_list_delegatedadminrelationships" } -->
[!INCLUDE [permissions-table](../includes/permissions/tenantrelationship-list-delegatedadminrelationships-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /tenantRelationships/delegatedAdminRelationships
```

## Optional query parameters
This method supports the `$select`, `$filter`, `$top`, `$orderby`, `$count`, and `$skipToken`  [OData query parameters](/graph/query-parameters) to help customize the response.

`$top` supports up to 300 objects.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [delegatedAdminRelationship](../resources/delegatedadminrelationship.md) objects in the response body. The response collection can also include one or more [resellerDelegatedAdminRelationship](../resources/resellerdelegatedadminrelationship.md) objects.

Each **delegatedAdminRelationship** object contains an **@odata.etag** property as per RFC2616.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_delegatedadminrelationship"
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationships/delegatedAdminRelationships
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-delegatedadminrelationship-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-delegatedadminrelationship-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-delegatedadminrelationship-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-delegatedadminrelationship-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-delegatedadminrelationship-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-delegatedadminrelationship-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-delegatedadminrelationship-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-delegatedadminrelationship-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.delegatedAdminRelationship)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/tenantRelationships/$metadata#delegatedAdminRelationships",
  "value": [
    {
      "@odata.type": "#microsoft.graph.delegatedAdminRelationship",
      "@odata.etag": "W/\"JyIwMzAwZTM0ZS0wMDAwLTAyMDAtMDAwMC02MTRjZjI1YzAwMDAiJw==\"",
      "id": "5d027261-d21f-4aa9-b7db-7fa1f56fb163-8777b240-c6f0-4469-9e98-a3205431b836",
      "displayName": "Contoso admin relationship",
      "duration": "P730D",
      "customer": {
        "tenantId": "52eaad04-13a2-4a2f-9ce8-93a294fadf36",
        "displayName": "Contoso Inc"
      },
      "accessDetails": {
        "unifiedRoles": [
          {
            "roleDefinitionId": "dd4db9a0-cc4a-4213-9f9f-70242232d97e"
          }
        ]
      },
      "status": "active",
      "autoExtendDuration": "P180D",
      "createdDateTime": "2022-02-10T11:24:42.3148266Z",
      "lastModifiedDateTime": "2022-02-10T11:26:44.9941884Z",
      "activatedDateTime": "2022-02-10T11:26:44.9941884Z",
      "endDateTime": "2024-02-10T11:24:42.3148266Z"
    },
    {
      "@odata.type": "#microsoft.graph.delegatedAdminRelationship",
      "@odata.etag": "W/\"JyIwMzAwZTM0ZS0wKklILTAyMDAtMDAwMC02MTRjZjI1YzAwMDAiJw==\"",
      "id": "1041ef52-a99b-4245-a3be-cbd3fa7c5ed1-8777b240-c6f0-4469-9e98-a3205431b836",
      "displayName": "Contoso subsidiary relationship",
      "duration": "P30D",
      "customer": {
        "tenantId": "4b827261-d21f-4aa9-b7db-7fa1f56fb163",
        "displayName": "Contoso subsidiary Inc"
      },
      "accessDetails": {
        "unifiedRoles": [
          {
            "roleDefinitionId": "29232cdf-9323-42fd-ade2-1d097af3e4de"
          },
          {
            "roleDefinitionId": "3a2c62db-5318-420d-8d74-23affee5d9d5"
          }
        ]
      },
      "status": "terminated",
      "autoExtendDuration": "PT0S",
      "createdDateTime": "2021-09-29T16:52:39.6133896Z",
      "lastModifiedDateTime": "2021-10-29T16:57:20.2101088Z",
      "activatedDateTime": "2021-09-29T16:55:20.2101088Z",
      "endDateTime": "2021-10-29T16:57:20.2101088Z"
    },
    {
      "@odata.type": "#microsoft.graph.resellerDelegatedAdminRelationship",
      "@odata.etag": "W/\"JyIwMzAwZTM0ZS0wMDAwLTAyMDAtMDAwMC02MTRjZjI1YzAwMDAiJw==\"",
      "id": "4b227261-d21f-4aa9-b7db-7fa1f56fb163-8777b240-c6f0-4469-9e98-a3205431b836",
      "displayName": "Fabrikam admin relationship",
      "duration": "P180D",
      "customer": {
        "tenantId": "52eaad04-13a2-4a2f-9ce8-93a294fadf36",
        "displayName": "Fabrikam Inc."
      },
      "accessDetails": {
        "unifiedRoles": [
          {
            "roleDefinitionId": "7be44c8a-adaf-4e2a-84d6-ab2649e08a13"
          },
          {
            "roleDefinitionId": "e8611ab8-c189-46e8-94e1-60213ab1f814"
          },
          {
            "roleDefinitionId": "fe930be7-5e62-47db-91af-98c3a49a38b1"
          },
          {
            "roleDefinitionId": "729827e3-9c14-49f7-bb1b-9608f156bbb8"
          },
          {
            "roleDefinitionId": "4d6ac14f-3453-41d0-bef9-a3e0c569773a"
          },
          {
            "roleDefinitionId": "f023fd81-a637-4b56-95fd-791ac0226033"
          },
          {
            "roleDefinitionId": "9360feb5-f418-4baa-8175-e2a00bac4301"
          },
          {
            "roleDefinitionId": "88d8e3e3-8f55-4a1e-953a-9b9898b8876b"
          },
          {
            "roleDefinitionId": "f2ef992c-3afb-46b9-b7cf-a126ee74c451"
          }
        ]
      },
      "status": "approvalPending",
      "autoExtendDuration": "PT0S",
      "createdDateTime": "2022-02-10T11:24:42.3148266Z",
      "lastModifiedDateTime": "2022-02-10T11:26:44.9941884Z",
      "activatedDateTime": null,
      "endDateTime": null,
      "isPartnerConsentPending": true,
      "indirectProviderTenantId": "60ea59db-a506-485e-94c5-d115f369e239"
    }
  ]
}
```

