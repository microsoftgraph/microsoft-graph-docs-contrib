---
title: "List custodianSources"
description: "Get the list of custodial data sources associated with an eDiscovery search."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: "apiPageType"
---

# List custodianSources
Namespace: microsoft.graph.security



Get the list of custodial data sources associated with an [eDiscovery search](../resources/security-ediscoverysearch.md).

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_ediscoverysearch_list_custodiansources" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-ediscoverysearch-list-custodiansources-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/cases/ediscoveryCases/{ediscoveryCaseId}/searches/{ediscoverySearchId}/custodianSources
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.security.dataSource](../resources/security-datasource.md) objects in the response body.

## Examples

### Request
The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_datasource"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/security/cases/ediscoveryCases/b0073e4e-4184-41c6-9eb7-8c8cc3e2288b/searches/c61a5860-d634-4d14-aea7-d82b6f4eb7af/custodianSources
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-datasource-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-datasource-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-datasource-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-datasource-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-datasource-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-datasource-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-datasource-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-datasource-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.dataSource)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.security.dataSource)",
    "value": [
        {
            "@odata.type": "#microsoft.graph.security.userSource",
            "@odata.id": "https://graph.microsoft.com/v1.0/security/cases/cases('b0073e4e-4184-41c6-9eb7-8c8cc3e2288b')/custodians('0053a61a3b6c42738f7606791716a22a')/userSources('c25c3914-f9f7-43ee-9cba-a25377e0cec6')",
            "displayName": "MOD Administrator",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "holdStatus": "0",
            "id": "c25c3914-f9f7-43ee-9cba-a25377e0cec6",
            "email": "admin@contoso.com",
            "includedSources": "mailbox,site",
            "siteWebUrl": null,
            "createdBy": {
                "application": null,
                "user": {
                    "id": "c25c3914-f9f7-43ee-9cba-a25377e0cec6",
                    "displayName": null
                }
            }
        },
        {
            "@odata.type": "#microsoft.graph.security.userSource",
            "@odata.id": "https://graph.microsoft.com/v1.0/security/cases/cases('b0073e4e-4184-41c6-9eb7-8c8cc3e2288b')/custodians('0053a61a3b6c42738f7606791716a22a')/userSources('43434642-3137-3138-3432-374142313639')",
            "displayName": "Alex Wilber",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "holdStatus": "0",
            "id": "43434642-3137-3138-3432-374142313639",
            "email": "AlexW@contoso.com",
            "includedSources": "mailbox,site",
            "siteWebUrl": null,
            "createdBy": {
                "application": null,
                "user": {
                    "id": "c25c3914-f9f7-43ee-9cba-a25377e0cec6",
                    "displayName": null
                }
            }
        },
        {
            "@odata.type": "#microsoft.graph.security.unifiedGroupSource",
            "@odata.id": "https://graph.microsoft.com/v1.0/security/cases/cases('b0073e4e-4184-41c6-9eb7-8c8cc3e2288b')/custodians('0053a61a3b6c42738f7606791716a22a')/unifiedGroupSources('32e14fa4-3106-4bd2-a245-34bf0c718a7e')",
            "displayName": "Design (Mailbox)",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "holdStatus": "0",
            "id": "32e14fa4-3106-4bd2-a245-34bf0c718a7e",
            "includedSources": "mailbox,site",
            "createdBy": {
                "application": null,
                "user": {
                    "id": "c25c3914-f9f7-43ee-9cba-a25377e0cec6",
                    "displayName": null
                }
            }
        },
        {
            "@odata.type": "#microsoft.graph.security.siteSource",
            "@odata.id": "https://graph.microsoft.com/v1.0/security/cases/cases('b0073e4e-4184-41c6-9eb7-8c8cc3e2288b')/custodians('0053a61a3b6c42738f7606791716a22a')/siteSources('169718e3-a8df-449d-bef4-ee09fe1ddc5d')",
            "displayName": "U.S. Sales",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "holdStatus": "0",
            "id": "169718e3-a8df-449d-bef4-ee09fe1ddc5d",
            "createdBy": {
                "application": null,
                "user": {
                    "id": "c25c3914-f9f7-43ee-9cba-a25377e0cec6",
                    "displayName": null
                }
            }
        },
        {
            "@odata.type": "#microsoft.graph.security.userSource",
            "@odata.id": "https://graph.microsoft.com/v1.0/security/cases/cases('b0073e4e-4184-41c6-9eb7-8c8cc3e2288b')/custodians('c25c3914f9f743ee9cbaa25377e0cec6')/userSources('45354430-3730-4232-4236-323230383438')",
            "displayName": "MOD Administrator",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "holdStatus": "0",
            "id": "45354430-3730-4232-4236-323230383438",
            "email": "admin@contoso.com",
            "includedSources": "mailbox,site",
            "siteWebUrl": null,
            "createdBy": {
                "application": null,
                "user": {
                    "id": "c25c3914-f9f7-43ee-9cba-a25377e0cec6",
                    "displayName": null
                }
            }
        }
    ]
}
```

