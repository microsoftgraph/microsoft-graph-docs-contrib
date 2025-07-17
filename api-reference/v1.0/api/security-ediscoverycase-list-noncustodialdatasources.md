---
title: "List ediscoveryNoncustodialDataSources"
description: "Get a list of ediscoveryNoncustodialDataSource objects."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: "apiPageType"
ms.date: 06/11/2024
---

# List ediscoveryNoncustodialDataSources
Namespace: microsoft.graph.security



Get a list of the [non-custodial data sources](../resources/security-ediscoverynoncustodialdatasource.md) and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_ediscoverycase_list_noncustodialdatasources" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-ediscoverycase-list-noncustodialdatasources-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/cases/ediscoveryCases/{ediscoveryCaseId}/noncustodialDataSources
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.security.ediscoveryNoncustodialDataSource](../resources/security-ediscoverynoncustodialdatasource.md) objects in the response body.

## Examples

### Request
Here's an example  of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_ediscoverynoncustodialdatasource_expand_datasource"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/security/cases/ediscoveryCases/b0073e4e-4184-41c6-9eb7-8c8cc3e2288b/noncustodialdatasources?$expand=dataSource
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-ediscoverynoncustodialdatasource-expand-datasource-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-ediscoverynoncustodialdatasource-expand-datasource-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-ediscoverynoncustodialdatasource-expand-datasource-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-ediscoverynoncustodialdatasource-expand-datasource-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-ediscoverynoncustodialdatasource-expand-datasource-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-ediscoverynoncustodialdatasource-expand-datasource-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-ediscoverynoncustodialdatasource-expand-datasource-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-ediscoverynoncustodialdatasource-expand-datasource-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
Here's an example  of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.ediscoveryNoncustodialDataSource"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#security/cases/ediscoveryCases('b0073e4e-4184-41c6-9eb7-8c8cc3e2288b')/noncustodialDataSources(dataSource())",
    "@odata.count": 3,
    "value": [
        {
            "status": "active",
            "holdStatus": "applied",
            "createdDateTime": "2022-05-23T02:09:11.1395287Z",
            "lastModifiedDateTime": "2022-05-23T02:09:11.1395287Z",
            "releasedDateTime": "0001-01-01T00:00:00Z",
            "id": "35393639323133394345384344303043",
            "displayName": "U.S. Sales",
            "dataSource@odata.context": "https://graph.microsoft.com/v1.0/$metadata#security/cases/ediscoveryCases('b0073e4e-4184-41c6-9eb7-8c8cc3e2288b')/noncustodialDataSources('35393639323133394345384344303043')/dataSource/$entity",
            "dataSource": {
                "@odata.type": "#microsoft.graph.security.siteSource",
                "@odata.id": "https://graph.microsoft.com/v1.0/sites/169718e3-a8df-449d-bef4-ee09fe1ddc5d",
                "displayName": "U.S. Sales",
                "createdDateTime": "2022-05-23T02:09:11.1395535Z",
                "holdStatus": "0",
                "id": "169718e3-a8df-449d-bef4-ee09fe1ddc5d",
                "createdBy": {
                    "application": null,
                    "user": {
                        "id": "c25c3914-f9f7-43ee-9cba-a25377e0cec6",
                        "displayName": null
                    }
                },
                "site": {
                    "webUrl": "https://m365x809305.sharepoint.com/sites/USSales",
                    "id": "169718e3-a8df-449d-bef4-ee09fe1ddc5d",
                    "createdDateTime": "2022-05-23T02:09:11.1395535Z"
                }
            }
        },
        {
            "status": "active",
            "holdStatus": "applied",
            "createdDateTime": "2022-05-23T02:09:11.1395287Z",
            "lastModifiedDateTime": "2022-05-23T02:09:11.1395287Z",
            "releasedDateTime": "0001-01-01T00:00:00Z",
            "id": "31453237353743363432414242344641",
            "displayName": "Sales and Marketing",
            "dataSource@odata.context": "https://graph.microsoft.com/v1.0/$metadata#security/cases/ediscoveryCases('b0073e4e-4184-41c6-9eb7-8c8cc3e2288b')/noncustodialDataSources('31453237353743363432414242344641')/dataSource/$entity",
            "dataSource": {
                "@odata.type": "#microsoft.graph.security.siteSource",
                "@odata.id": "https://graph.microsoft.com/v1.0/sites/74f6c798-fc32-4dbe-9e5b-8e11459b9f44",
                "displayName": "Sales and Marketing",
                "createdDateTime": "2022-05-23T02:09:11.1397925Z",
                "holdStatus": "0",
                "id": "74f6c798-fc32-4dbe-9e5b-8e11459b9f44",
                "createdBy": {
                    "application": null,
                    "user": {
                        "id": "c25c3914-f9f7-43ee-9cba-a25377e0cec6",
                        "displayName": null
                    }
                },
                "site": {
                    "webUrl": "https://m365x809305.sharepoint.com/sites/SalesAndMarketing",
                    "id": "74f6c798-fc32-4dbe-9e5b-8e11459b9f44",
                    "createdDateTime": "2022-05-23T02:09:11.1397925Z"
                }
            }
        },
        {
            "status": "active",
            "holdStatus": "applied",
            "createdDateTime": "2022-05-23T02:09:11.1395287Z",
            "lastModifiedDateTime": "2022-05-23T02:09:11.1395287Z",
            "releasedDateTime": "0001-01-01T00:00:00Z",
            "id": "46333131344239353834433430454335",
            "displayName": "Retail",
            "dataSource@odata.context": "https://graph.microsoft.com/v1.0/$metadata#security/cases/ediscoveryCases('b0073e4e-4184-41c6-9eb7-8c8cc3e2288b')/noncustodialDataSources('46333131344239353834433430454335')/dataSource/$entity",
            "dataSource": {
                "@odata.type": "#microsoft.graph.security.siteSource",
                "@odata.id": "https://graph.microsoft.com/v1.0/sites/dbe4b18e-2765-4989-8647-48139180c45f",
                "displayName": "Retail",
                "createdDateTime": "2022-05-23T02:09:11.1399861Z",
                "holdStatus": "0",
                "id": "dbe4b18e-2765-4989-8647-48139180c45f",
                "createdBy": {
                    "application": null,
                    "user": {
                        "id": "c25c3914-f9f7-43ee-9cba-a25377e0cec6",
                        "displayName": null
                    }
                },
                "site": {
                    "webUrl": "https://m365x809305.sharepoint.com/sites/Retail",
                    "id": "dbe4b18e-2765-4989-8647-48139180c45f",
                    "createdDateTime": "2022-05-23T02:09:11.1399861Z"
                }
            }
        }
    ]
}
```

