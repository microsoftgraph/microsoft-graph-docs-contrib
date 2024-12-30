---
title: "List changeItemBase objects"
description: "Get a list of the changeItemBase objects and their properties."
author: "garretraziel"
ms.date: 11/20/2024
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# List changeItemBase objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [changeItemBase](../resources/changeitembase.md) objects and their properties. The API returns both Microsoft Entra change announcements and releases.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "identitycontainer_list_productchanges" } -->
[!INCLUDE [permissions-table](../includes/permissions/identitycontainer-list-productchanges-permissions.md)]

Any user can call these APIs, there are no admin role requirements.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identity/productChanges
```

## Optional query parameters

This method supports the `$count`, `$filter` (`eq`, `ne`, `in`, `startswith`), `$orderby`, `$search`, `$top` (default page size is 10 items, maximum is 250 items), `$select` and `$skip` [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [changeItemBase](../resources/changeitembase.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_changeitembase"
}
-->
``` http
GET https://graph.microsoft.com/beta/identity/productChanges
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-changeitembase-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-changeitembase-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-changeitembase-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-changeitembase-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-changeitembase-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-changeitembase-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-changeitembase-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.changeItemBase"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/productChanges",
    "@odata.nextLink": "https://graph.microsoft.com/beta/identity/productChanges?$skip=10",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET identity/productChanges?$select=changeItemService,description",
    "value": [
        {
            "@odata.type": "#microsoft.graph.announcement",
            "id": "01ec4ab4-e288-4e1c-8f8c-d5b0bc68b866",
            "changeItemService": "msGraph",
            "tags": [
                "Identity Security"
            ],
            "systemTags": [],
            "documentationUrls": [
                "https://techcommunity.microsoft.com/t5/microsoft-entra-blog/important-update-azure-ad-graph-api-retirement/ba-p/4090534"
            ],
            "shortDescription": "Latest update on migrating your applications from Azure AD Graph to Microsoft Graph",
            "title": "Migrate your apps to Microsoft Graph API",
            "description": "In June of 2023, we shared an update on completion of a three-year notice period for the deprecation of the Azure AD Graph API service. The service is now in the retirement cycle and retirement (shut down) will be done with incremental stages. In the first stage of this retirement cycle, applications that are created after June 30, 2024, will receive an error (HTTP 403) for any requests to Azure AD Graph APIs ( https://graph.windows.net ). \n \n We understand that some apps may not have fully completed migration to Microsoft Graph. We are providing an optional configuration that will allow an application created after June 30, 2024, to resume use of Azure AD Graph APIs through June 2025. If you develop or distribute software that requires applications to be created as part of the installation or setup, and these applications will need to access Azure AD Graph APIs, you must prepare now to avoid interruption. \n \n We have recently begun rollout of Microsoft Entra recommendations to help monitor the status of your tenant, plus provide information about applications and service principals that are using Azure AD Graph APIs in your tenant. These new recommendations provide information to support your efforts to migrate the impacted applications and service principals to Microsoft Graph. \n \n For more information on Azure AD Graph retirement, the new recommendations for Azure AD Graph, and configuring applications created after June 30, 2024, for an extension of Azure AD Graph APIs, please click 'Learn more' below.",
            "announcementDateTime": "2020-06-23T00:00:00Z",
            "targetDateTime": "2024-06-30T00:00:00Z",
            "impactLink": null,
            "changeType": "retirement",
            "isCustomerActionRequired": true
        },
        {
            "@odata.type": "#microsoft.graph.roadmap",
            "id": "0d17a065-f34c-4954-9a0a-2f9b45c5c166",
            "changeItemService": "entitlementManagement",
            "tags": [
                ""
            ],
            "systemTags": [],
            "documentationUrls": [
                "https://learn.microsoft.com/en-us/entra/identity/role-based-access-control/permissions-reference#organizational-branding-administrator"
            ],
            "shortDescription": "",
            "title": "Organizational Branding role for Entra ID Company Branding",
            "description": "The new Organizational Branding Administrator privileges are limited to branding, allowing you to adhere to the principle of least privilege by eliminating the need for the Global Administrator role to configure branding.",
            "changeItemState": "available",
            "deliveryStage": "ga",
            "category": "accessControl",
            "publishedDateTime": "2024-05-06T07:00:00Z",
            "gotoLink": null
        }
    ]
}
```
