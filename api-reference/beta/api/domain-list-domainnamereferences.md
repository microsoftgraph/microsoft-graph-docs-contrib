---
title: "List domainNameReferences"
description: "Retrieve a list of directoryObject with a reference to the domain."
author: "tafra00"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: apiPageType
ms.date: 10/25/2024
---

# List domainNameReferences

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of [directoryObject](../resources/directoryobject.md) with a reference to the domain. The returned list will contain all directory objects that have a dependency on the domain.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- { "blockType": "permissions", "name": "domain_list_domainnamereferences" } -->
[!INCLUDE [permissions-table](../includes/permissions/domain-list-domainnamereferences-permissions.md)]

[!INCLUDE [limited-info](../../includes/limited-info.md)]

> [!IMPORTANT]
> In delegated scenarios with work or school accounts, the signed-in user must be assigned a supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) or a custom role with a supported role permission. The following least privileged roles are supported for this operation: *Domain Name Administrator* or *Global Reader*.

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /domains/{id}/domainNameReferences
```

## Optional query parameters

This method supports the `$select` and `$filter` [OData Query Parameters](/graph/query-parameters) to help customize the response. You can only filter by the OData type of the objects returned, for example, `/domains/{domainId}/domainNameReferences/microsoft.graph.group` and `/domains/{domainId}/domainNameReferences/microsoft.graph.user`.

## Request headers

| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and collection of [directoryObject](../resources/directoryobject.md) objects in the response body.

## Example
##### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_domainnamereferences",
  "sampleKeys": ["contoso.com"]
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/domains/contoso.com/domainNameReferences
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-domainnamereferences-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-domainnamereferences-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-domainnamereferences-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-domainnamereferences-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-domainnamereferences-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-domainnamereferences-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-domainnamereferences-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-domainnamereferences-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

##### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directoryObject",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#directoryObjects",
  "value": [
    {
      "@odata.type": "#microsoft.graph.user",
      "@odata.id": "https://graph.microsoft.com/v2/927c6607-8060-4f4a-a5f8-34964ac78d70/directoryObjects/fc9a2c2b-1ddc-486d-a211-5fe8ca77fa1f/Microsoft.DirectoryServices.User",
      "id": "fc9a2c2b-1ddc-486d-a211-5fe8ca77fa1f",
      "accountEnabled": true,
      "city": "Nairobi",
      "createdDateTime": "2021-04-14T05:26:16Z",
      "country": "Kenya",
      "displayName": "Adele Vance",
      "givenName": "Adele",
      "mail": "AdeleV@Contoso.com",
      "mailNickname": "AdeleV"
    },
    {
      "@odata.type": "#microsoft.graph.group",
      "@odata.id": "https://graph.microsoft.com/v2/927c6607-8060-4f4a-a5f8-34964ac78d70/directoryObjects/eac82bd3-931c-4d47-9e68-735595a8eb8a/Microsoft.DirectoryServices.Group",
      "id": "eac82bd3-931c-4d47-9e68-735595a8eb8a",
      "createdDateTime": "2021-04-14T06:59:47Z",
      "createdByAppId": "00000005-0000-0ff1-ce00-000000000000",
      "organizationId": "927c6607-8060-4f4a-a5f8-34964ac78d70",
      "description": "Contribute your ideas and ask your questions to our leadership team. And tune in for regular Employee Q & A live events. You can learn more about what",
      "displayName": "CEO Connection",
      "expirationDateTime": "2021-10-11T06:59:47Z",
      "groupTypes": [
        "Unified"
      ],
      "mail": "ceoconnection@Contoso.com",
      "mailEnabled": true,
      "mailNickname": "ceoconnection",
      "resourceBehaviorOptions": [
        "CalendarMemberReadOnly"
      ],
      "visibility": "Public",
      "writebackConfiguration": {
        "isEnabled": null,
        "onPremisesGroupType": null
      }
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "List domainNameReferences",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
