---
title: "List cloudPcPools"
description: "List the properties and relationships of the cloudPcPool objects."
author: "yityu"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 03/23/2026
---

# List cloudPcPools

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List the properties and relationships of the [cloudPcPool](../resources/cloudpcpool.md) objects.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcpool_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualendpoint-list-cloudpcpools-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /deviceManagement/virtualEndpoint/cloudPcPools
```

## Optional query parameters

This method doesn't support the [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [cloudPcPool](../resources/cloudpcpool.md) objects in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_cloudpcpools"
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/cloudPcPools
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-cloudpcpools-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-cloudpcpools-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-cloudpcpools-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-cloudpcpools-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-cloudpcpools-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-cloudpcpools-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.cloudPcPool)"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.cloudPcAgentPool",
      "id": "a1b2c3d4-e5f6-7890-abcd-ef1234567890",
      "displayName": "Contoso Development Pool",
      "description": "A Cloud PC Pool for development agents",
      "cloudPcConfiguration": {
        "imageId": "microsoftwindowsdesktop_windows-ent-cpc_win11-23h2-ent-cpc-m365",
        "imageType": "gallery",
        "osLocale": "en-US",
        "imageDisplayName": "Windows 11 Enterprise + Microsoft 365 Apps 23H2"
      },
      "networkConfiguration": {
        "@odata.type": "#microsoft.graph.cloudPcMicrosoftHostedNetworkConfiguration",
        "geographicLocationType": "usWest",
        "regionGroups": [
          {
            "regionGroup": "usWest",
            "regions": ["westus2", "westus3"]
          }
        ]
      },
      "billingConfiguration": {
        "billingType": "payAsYouGo",
        "billingPlanId": "00000000-0000-0000-0000-000000000001"
      },
      "scalingPolicy": {
        "minimumCount": 2,
        "maximumCount": 10
      },
      "capabilities": {
        "enableSingleSignOn": true
      },
      "sessionUsage": {
        "activeSessionsCount": 3,
        "availableSessionsCount": 5
      },
      "poolUrl": "https://westus2.sessionmanagement.regional.cloudinferenceplatform.azure.com/sessions",
      "createdDateTime": "2026-01-15T10:00:00Z",
      "lastModifiedDateTime": "2026-01-20T14:30:00Z"
    }
  ]
}
```
