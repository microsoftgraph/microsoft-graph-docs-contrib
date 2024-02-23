---
title: "List subscriptions"
description: "Get the list of commercial subscriptions that an organization has acquired."
ms.localizationpriority: medium
author: "arp19690"
ms.prod: "directory-management"
doc_type: apiPageType
---

# List subscriptions

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the list of commercial subscriptions that an organization has acquired.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "directory_list_subscriptions" } -->
[!INCLUDE [permissions-table](../includes/permissions/directory-list-subscriptions-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /directory/subscriptions
```

## Optional query parameters

This method supports the [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [companySubscription](../resources/companysubscription.md) objects in the response body.

## Example

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_companySubscriptions"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/directory/subscriptions
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-companysubscriptions-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-companysubscriptions-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-companysubscriptions-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-companysubscriptions-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-companysubscriptions-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-companysubscriptions-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-companysubscriptions-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-companysubscriptions-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.companySubscription)"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "createdDateTime": "2023-01-01T00:00:00Z",
      "commerceSubscriptionId": "f9c1ea2d-2c6e-4717-8c3b-7130812d70ba",
      "id": "860697e3-b0aa-4196-a6c6-7ec361ed58f7",
      "isTrial": false,
      "nextLifecycleDateTime": "2023-02-01T00:00:00Z",
      "serviceStatus": [
        {
          "appliesTo": "User",
          "provisioningStatus": "Success",
          "servicePlanId": "8b8269e5-f841-416c-ab3a-f5dfb9737986",
          "servicePlanName": "MyPlanName"
        }
      ],
      "skuId": "0816ccb9-3785-4d19-bf78-6c53e2106509",
      "skuPartNumber": "MyPartNumber",
      "status": "Enabled",
      "totalLicenses": 25,
      "ownerId": "fe04f19f-d924-42b7-9dee-edf4e3fab7f6",
      "ownerTenantId": "331af819-4e0b-49f7-a6bf-14e1165ad3a0",
      "ownerType": "User"
    }
  ]
}
```
