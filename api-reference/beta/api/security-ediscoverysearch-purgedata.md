---
title: "ediscoverySearch: purgeData"
description: "Use the purge data method to delete Teams messages in a eDiscovery search."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: "apiPageType"
ms.topic: reference
---


# ediscoverySearch: purgeData
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete Microsoft Teams messages contained in a [eDiscovery search](../resources/security-ediscoverysearch.md). 

>**Note:** This request purges Teams data only. It does not purge other types of data such as mailbox items.

You can collect and purge the following categories of Teams content:
- **Teams 1:1 chats** - Chat messages, posts, and attachments shared in a Teams conversation between two people. Teams 1:1 chats are also called *conversations*.
- **Teams group chats** - Chat messages, posts, and attachments shared in a Teams conversation between three or more people. Also called *1:N* chats or *group conversations*.
- **Teams channels** - Chat messages, posts, replies, and attachments shared in a standard Teams channel.
- **Private channels** - Message posts, replies, and attachments shared in a private Teams channel.
- **Shared channels** - Message posts, replies, and attachments shared in a shared Teams channel.

For more information about purging Teams messages, see:
- [eDiscovery solution series: Data spillage scenario - Search and purge](/microsoft-365/compliance/data-spillage-scenariosearch-and-purge)
- [eDiscovery (Premium) workflow for content in Microsoft Teams](/microsoft-365/compliance/teams-workflow-in-advanced-ediscovery) 


[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_ediscoverysearch_purgedata" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-ediscoverysearch-purgedata-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/cases/ediscoveryCases/{ediscoveryCaseId}/searches/{ediscoverySearchId}/purgeData
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|purgeType|microsoft.graph.security.purgeType| Options that control whether the action is soft delete or hard delete. Possible values are `recoverable`, `permanentlydeleted`, `unknownFutureValue`. |
|purgeAreas|microsoft.graph.security.purgeAreas| Options to define the locations to be in scope of the purge action. Possible values are: `mailboxes`, `teamsMessages`, `unknownFutureValue`. |


## Response

If successful, this action returns a `202 Accepted` response code.

If the purge data operation is started successfully, this action returns a `202 Accepted` response code. The response will also contain a `Location` header, which contains the location of the [Purge data operation](../resources/security-ediscoverypurgedataoperation.md) that was created to commit the purge.
To check the status of the purge data operation, make a GET request to the location URL.


## Examples

### Request
The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "ediscoverysearchthis.purgedata"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/cases/ediscoveryCases/b0073e4e-4184-41c6-9eb7-8c8cc3e2288b/searches/c61a5860-d634-4d14-aea7-d82b6f4eb7af/purgeData

{

}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/ediscoverysearchthispurgedata-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/ediscoverysearchthispurgedata-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/ediscoverysearchthispurgedata-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/ediscoverysearchthispurgedata-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/ediscoverysearchthispurgedata-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/ediscoverysearchthispurgedata-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/ediscoverysearchthispurgedata-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/ediscoverysearchthispurgedata-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 202 Accepted
```
