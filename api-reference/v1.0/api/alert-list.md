---
title: "List alerts"
description: "Retrieve a list of alert objects."
author: "preetikr"
ms.localizationpriority: high
ms.subservice: "security"
doc_type: apiPageType
ms.date: 04/04/2024
---

# List alerts

Namespace: microsoft.graph

Retrieve a list of [alert](../resources/alert.md) objects.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "alert_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/alert-list-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /security/alerts
GET /security/alerts?$top=1
GET /security/alerts?$filter={property} eq '{property-value}'
GET /security/alerts?$filter={property} eq '{property-value}'&$top=5
GET /security/alerts?$filter={property} eq '{property-value}' and {property} eq '{property-value}'
```

## Optional query parameters

This method supports the following [OData query parameters](/graph/query-parameters) to help customize the response:

- `$count`
- `$orderby`
- `$select`
- `$skip`
- `$top` - Returns the aggregated top results from each security API provider.  
- `$filter`

The following table lists the `$filter` keywords by each vendor name. Even though some of these products have been rebranded, the API is yet to be updated. Filter keywords will continue to use the legacy names until further notice. See the [changelog](https://developer.microsoft.com/graph/changelog) for updates.

| Vendor name      |$filter keyword|
|:----------|:----------|
| Microsoft Defender for Identity | Azure Advanced Threat Protection | 
| Azure Security Center | ASC |
| Microsoft Defender for Cloud Apps | MCAS |
| Microsoft Entra ID Protection | IPC |
| Microsoft Sentinel | Azure Sentinel |
| Microsoft Defender for Endpoint | Microsoft Defender ATP |
| Office 365 | Not currently supported. |

> **Note:** Some providers might not support `$filter` keywords.

To return an alternative property set, use the OData `$select` query parameter to specify the set of **alert** properties that you want  For example, to return the **assignedTo**, **category**, and **severity** properties, add the following to your query: `$select=assignedTo,category,severity`.

> **Note:** The `$top` OData query parameter has a limit of 1000 alerts. We recommend that you include only `$top` and not `$skip` in your first GET query. You can use `@odata.nextLink` for pagination. If you need to use `$skip`, it has a limit of 500 alerts. For example, `/security/alerts?$top=10&$skip=500` will return a `200 OK` response code, but `/security/alerts?$top=10&$skip=501` will return a `400 Bad Request` response code. For more information, see [Microsoft Graph Security API error responses](../resources/security-error-codes.md).

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {code}. Required.|

## Request body

Don't supply a request body for this method. The request body will be ignored.

## Response

If successful, this method returns a `200 OK` response code and collection of **alert** objects in the response body. If a status code other than 2xx or 404 is returned from a provider or if a provider times out, the response will be a `206 Partial Content` status code with the provider's response in a warning header. For more information, see [Microsoft Graph Security API error responses](../resources/security-error-codes.md).

## Example

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_alerts"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/security/alerts
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-alerts-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-alerts-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-alerts-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-alerts-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-alerts-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-alerts-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-alerts-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-alerts-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.alert",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "activityGroupName": "activityGroupName-value",
      "assignedTo": "assignedTo-value",
      "azureSubscriptionId": "azureSubscriptionId-value",
      "azureTenantId": "azureTenantId-value",
      "category": "category-value",
      "closedDateTime": "datetime-value"
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List alerts",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->
