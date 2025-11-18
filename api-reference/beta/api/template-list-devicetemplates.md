---
title: "List deviceTemplates"
description: "Get a list of deviceTemplate objects registered in the directory."
author: "sofia-geislinger"
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: apiPageType
ms.date: 12/31/2024
---

# List deviceTemplates

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [deviceTemplate](../resources/devicetemplate.md) objects registered in the directory.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "template_list_devicetemplates" } -->
[!INCLUDE [permissions-table](../includes/permissions/template-list-devicetemplates-permissions.md)]

[!INCLUDE [rbac-devicestemplate-apis](../includes/rbac-for-apis/rbac-devicetemplate-apis.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /directory/templates/deviceTemplates
```

## Optional query parameters

This method supports the `$filter`, `$select`, and `$top` OData query parameters to help customize the response. The page size for `$top` results is between 1 and 999, inclusive. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [deviceTemplate](../resources/devicetemplate.md) objects in the response body.

For more information, see [Microsoft Graph error responses and resource types](/graph/errors).

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_devicetemplate"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/directory/templates/deviceTemplates
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-devicetemplate-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-devicetemplate-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-devicetemplate-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-devicetemplate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-devicetemplate-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-devicetemplate-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-devicetemplate-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.deviceTemplate)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/templates/deviceTemplates",
  "value": [
    {
      "id": "16f1d02a-af59-4ca7-b2ea-494a262353b9",
      "mutualTlsOauthConfigurationId": "00001111-aaaa-2222-bbbb-3333cccc4444",
      "mutualTlsOauthConfigurationTenantId": "00001111-aaaa-2222-bbbb-3333cccc4445",
      "deviceAuthority": "Lakeshore Retail",
      "manufacturer": "Tailwind Traders",
      "model": "IoT Device K1",
      "operatingSystem": "WindowsIoT"
    },
    {
      "id": "3a0698d9-fd85-4b9e-9655-e26d19013459",
      "mutualTlsOauthConfigurationId": "00001111-aaaa-2222-bbbb-3333cccc4433",
      "mutualTlsOauthConfigurationTenantId": "00001111-aaaa-2222-bbbb-3333cccc4435",
      "deviceAuthority": "Lakeshore Retail",
      "manufacturer": "Tailwind Traders",
      "model": "IoT Devices",
      "operatingSystem": null
    }
  ]
}
```

