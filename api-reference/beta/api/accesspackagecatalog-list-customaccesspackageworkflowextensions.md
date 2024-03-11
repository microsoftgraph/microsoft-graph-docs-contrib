---
title: "List customAccessPackageWorkflowExtensions"
description: "Get a list of the customAccessPackageWorkflowExtension objects and their properties."
author: "vikama-microsoft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# List customAccessPackageWorkflowExtensions
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [customAccessPackageWorkflowExtension](../resources/customaccesspackageworkflowextension.md) objects and their properties. The resulting list includes all the **customAccessPackageWorkflowExtension** objects for the catalog that the caller has access to read.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "accesspackagecatalog_list_customaccesspackageworkflowextensions" } -->
[!INCLUDE [permissions-table](../includes/permissions/accesspackagecatalog-list-customaccesspackageworkflowextensions-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/entitlementManagement/accessPackageCatalogs/{catalogId}/customAccessPackageWorkflowExtensions
```

## Optional query parameters
This method supports the `$select` and `$filter` OData query parameters to help customize the response. For example, to search for access packages with a particular name, include a filter such as `$filter=contains(tolower(displayName),'team')` in the query. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [customAccessPackageWorkflowExtension](../resources/customaccesspackageworkflowextension.md) objects in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_customaccesspackageworkflowextension"
}
-->
``` http
GET /identityGovernance/entitlementManagement/accessPackageCatalogs/32efb28c-9a7a-446c-986b-ca6528c6669d/customAccessPackageWorkflowExtensions
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-customaccesspackageworkflowextension-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-customaccesspackageworkflowextension-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-customaccesspackageworkflowextension-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-customaccesspackageworkflowextension-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-customaccesspackageworkflowextension-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-customaccesspackageworkflowextension-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-customaccesspackageworkflowextension-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-customaccesspackageworkflowextension-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.customAccessPackageWorkflowExtension)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageCatalogs/32efb28c-9a7a-446c-986b-ca6528c6669d/customAccessPackageWorkflowExtensions",
    "value": [
        {
            "id": "98ffaec5-ae8e-4902-a434-5ffc5d3d3cd0",
            "displayName": "test_action_0124",
            "description": "this is for graph testing only",
            "createdDateTime": "2022-01-24T21:48:57.15Z",
            "lastModifiedDateTime": "2022-01-24T21:55:44.953Z",
            "clientConfiguration": null,
            "endpointConfiguration": {
                "@odata.type": "#microsoft.graph.logicAppTriggerEndpointConfiguration",
                "subscriptionId": "38ab2ccc-3747-4567-b36b-9478f5602f0d",
                "resourceGroupName": "test",
                "logicAppWorkflowName": "elm-extension-email"
            },
            "authenticationConfiguration": {
                "@odata.type": "#microsoft.graph.azureAdTokenAuthentication",
                "resourceId": "eed6dee9-7ff7-44a5-8980-c11e8886cea2"
            }
        }
    ]
}
```
