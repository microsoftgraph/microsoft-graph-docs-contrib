---
title: "Add additional sources"
description: "Create a new additional source associated with an eDiscovery search."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: "apiPageType"
ms.topic: reference
---

# Add additional sources
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [additional source](../resources/security-datasource.md) associated with an [eDiscovery search](../resources/security-ediscoverysearch.md).

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_ediscoverysearch_post_additionalsources" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-ediscoverysearch-post-additionalsources-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/cases/ediscoveryCases/{ediscoveryCaseId}/searches/{ediscoverySearchId}/additionalSources
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [dataSource](../resources/security-datasource.md) object.

You can specify the following properties when you create a **dataSource**.

>**Note:** Either **email** or **site** is required, but not both.

|Property|Type|Description|
|:---|:---|:---|
|email|string|SMTP address of the mailbox. To get the email address of a group, use [List groups](../api/group-list.md) or [Get group](../api/group-get.md). You can query by the name of the group using `$filter`; for example, `https://graph.microsoft.com/v1.0/groups?$filter=displayName eq 'secret group'&$select=mail,id,displayName`.|
|site|string|URL of the site; for example, `https://contoso.sharepoint.com/sites/HumanResources`. |


## Response

If successful, this method returns a `201 Created` and a [microsoft.graph.security.dataSource](../resources/security-datasource.md) object in the response body.

## Examples

### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_additional_source_associated_ediscovery_search"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/cases/ediscoveryCases/{ediscoveryCaseId}/searches/{ediscoverySearchId}/additionalSources

{
    "@odata.type": "microsoft.graph.security.siteSource",
    "site": {
        "webUrl": "https://m365x809305.sharepoint.com/sites/Design-topsecret"
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-additional-source-associated-ediscovery-search-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-additional-source-associated-ediscovery-search-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-additional-source-associated-ediscovery-search-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-additional-source-associated-ediscovery-search-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-additional-source-associated-ediscovery-search-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-additional-source-associated-ediscovery-search-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-additional-source-associated-ediscovery-search-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-additional-source-associated-ediscovery-search-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.dataSource"
}
-->
``` http
HTTP/1.1 201 Created

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/cases/ediscoveryCases('b0073e4e-4184-41c6-9eb7-8c8cc3e2288b')/searches('c61a5860-d634-4d14-aea7-d82b6f4eb7af')/additionalSources/$entity",
    "@odata.type": "#microsoft.graph.security.siteSource",
    "@odata.id": "https://graph.microsoft.com/v1.0/sites/46303732-3434-4630-3832-363333363441",
    "displayName": "Design - top secret",
    "createdDateTime": "2022-07-15T22:45:36.1096267Z",
    "holdStatus": "0",
    "id": "46303732-3434-4630-3832-363333363441",
    "createdBy": {
        "application": null,
        "user": {
            "id": null,
            "displayName": null
        }
    }
}
```
