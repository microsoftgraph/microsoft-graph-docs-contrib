---
title: "List licenseDetails"
description: "Retrieve a list of licenseDetails objects."
author: "frank-masuelli"
ms.localizationpriority: medium
ms.subservice: entra-users
doc_type: apiPageType
ms.date: 10/15/2024
---

# List licenseDetails

Namespace: microsoft.graph

Retrieve a list of [licenseDetails](../resources/licensedetails.md) objects for enterprise users. This API returns details for licenses that are directly assigned and those transitively assigned through memberships in licensed groups.


[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "user_list_licensedetails" } -->
[!INCLUDE [permissions-table](../includes/permissions/user-list-licensedetails-permissions.md)]

> [!IMPORTANT]
> 
> In delegated scenarios with work or school accounts, the signed-in user must be assigned a supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) or a custom role with the `microsoft.directory/users/licenseDetails/read` role permission. The following least privileged roles are supported for this operation:
> - Guest Inviter
> - Directory Readers
> - Directory Writers
> - License Administrator
> - User Administrator

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /me/licenseDetails
GET /users/{id}/licenseDetails
```

[!INCLUDE [me-apis-sign-in-note](../includes/me-apis-sign-in-note.md)]
## Optional query parameters
This method supports the `$select` query parameter. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [licenseDetails](../resources/licensedetails.md) objects in the response body.
## Example
### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_licensedetails"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/me/licenseDetails
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-licensedetails-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-licensedetails-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-licensedetails-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-licensedetails-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-licensedetails-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-licensedetails-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-licensedetails-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-licensedetails-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
Note: The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.licenseDetails",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('48d31887-5fad-4d73-a9f5-3c356e68a038')/licenseDetails",
    "value": [
        {
            "id": "3RnS3Gi8m0u_C0ozp5a-NWAn38eBLPdOtXhbU5K1cd8",
            "skuId": "c7df2760-2c81-4ef7-b578-5b5392b571df",
            "skuPartNumber": "ENTERPRISEPREMIUM",
            "servicePlans": [
                {
                    "servicePlanId": "cd31b152-6326-4d1b-ae1b-997b625182e6",
                    "servicePlanName": "MIP_S_Exchange",
                    "provisioningStatus": "PendingProvisioning",
                    "appliesTo": "User"
                },
                {
                    "servicePlanId": "8e0c0a52-6a6c-4d40-8370-dd62790dcd70",
                    "servicePlanName": "THREAT_INTELLIGENCE",
                    "provisioningStatus": "Success",
                    "appliesTo": "User"
                },
                {
                    "servicePlanId": "9c0dab89-a30c-4117-86e7-97bda240acd2",
                    "servicePlanName": "POWERAPPS_O365_P3",
                    "provisioningStatus": "Success",
                    "appliesTo": "User"
                },
                {
                    "servicePlanId": "8c098270-9dd4-4350-9b30-ba4703f3b36b",
                    "servicePlanName": "ADALLOM_S_O365",
                    "provisioningStatus": "Success",
                    "appliesTo": "User"
                },
                {
                    "servicePlanId": "5dbe027f-2339-4123-9542-606e4d348a72",
                    "servicePlanName": "SHAREPOINTENTERPRISE",
                    "provisioningStatus": "Success",
                    "appliesTo": "User"
                }
            ]
        },
        {
            "id": "3RnS3Gi8m0u_C0ozp5a-Ne0iVHIF4g5Aqwo4mdijmMo",
            "skuId": "725422ed-e205-400e-ab0a-3899d8a398ca",
            "skuPartNumber": "SCHOOL_DATA_SYNC_P2",
            "servicePlans": [
                {
                    "servicePlanId": "113feb6c-3fe4-4440-bddc-54d774bf0318",
                    "servicePlanName": "EXCHANGE_S_FOUNDATION",
                    "provisioningStatus": "Success",
                    "appliesTo": "Company"
                },
                {
                    "servicePlanId": "500b6a2a-7a50-4f40-b5f9-160e5b8c2f48",
                    "servicePlanName": "SCHOOL_DATA_SYNC_P2",
                    "provisioningStatus": "Success",
                    "appliesTo": "User"
                }
            ]
        }
    ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List licenseDetails",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->

