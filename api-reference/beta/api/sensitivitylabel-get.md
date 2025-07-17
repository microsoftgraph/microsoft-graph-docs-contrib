---
title: "Get sensitivityLabel"
description: "Get a sensitivity label available for the entire tenant."
author: "ArunGedela"
ms.date: 04/21/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Get sensitivityLabel

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a sensitivity label available for the entire tenant.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "sensitivitylabel_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/sensitivitylabel-get-permissions.md)]

When using application permissions (`SensitivityLabels.Read.All`), the API returns all labels for the tenant by default.

## HTTP request

Get labels for all tenant labels:

```http
GET /security/dataSecurityAndGovernance/sensitivityLabels/{labelId}
```

## Request headers

| Name                | Description                                                                                                                                 |
| :------------------ | :------------------------------------------------------------------------------------------------------------------------------------------ |
| Authorization       | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).                                |
| Client-Request-Id   | Optional. A client-generated GUID to trace the request. Recommended for troubleshooting.                                                  |

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [sensitivityLabel](../resources/security-sensitivitylabel.md) objects in the response body.

## Examples

The following example shows a request to get a label available in the tenant.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_sensitivitylabel_byid"
} -->
```msgraph-interactive
GET https://graph.microsoft.com/beta/security/dataSecurityAndGovernance/sensitivityLabels/4e4234dd-377b-42a3-935b-0e42f138fa23
Authorization: Bearer {token}
Client-Request-Id: a0b9c8d7-e6f5-a4b3-c2d1-e0f9a8b7c6d5
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-sensitivitylabel-byid-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-sensitivitylabel-byid-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-sensitivitylabel-byid-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-sensitivitylabel-byid-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-sensitivitylabel-byid-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-sensitivitylabel-byid-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-sensitivitylabel-byid-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response containing only the labels matching the filters.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.sensitivityLabel)"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/dataSecurityAndGovernance/sensitivityLabel",
  "value": [
    {
      "id": "4e4234dd-377b-42a3-935b-0e42f138fa23",
      "name": "General",
      "description": "General data, not for public use.",
      "color": "#000000",
      "priority": 10,
      "toolTip": "Apply this label to general non-public data.",
      "isEnabled": true,
      "isEndpointProtectionEnabled": true,
      "autoTooltip": "",
      "actionSource": "manual",
      "applicableTo": "email,teamwork,file",
      "sublabels": []
    }
  ]
}
```
