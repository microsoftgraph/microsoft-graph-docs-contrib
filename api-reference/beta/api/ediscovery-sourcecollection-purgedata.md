---
title: "sourceCollection: purgeData"
description: "Use the purge data method to delete sensitive misplaced Microsoft Teams messages in a sourceCollection."
author: "mahage-msft"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: apiPageType
---

# sourceCollection: purgeData

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Permanently delete Microsoft Teams messages contained in a [sourceCollection](../resources//ediscovery-sourcecollection.md).

>**Note:** This request purges Teams data only. It does not purge other types of data such as mailbox items.

You can collect and purge the following categories of Teams content:
- **Teams 1:1 chats** - Chat messages, posts, and attachments shared in a Teams conversation between two people. Teams 1:1 chats are also called *conversations*.
- **Teams group chats** - Chat messages, posts, and attachments shared in a Teams conversation between three or more people. Also called *1:N* chats or *group conversations*.
- **Teams channels** - Chat messages, posts, replies, and attachments shared in a standard Teams channel.
- **Private channels** - Message posts, replies, and attachments shared in a private Teams channel.
- **Shared channels** - Message posts, replies, and attachments shared in a shared Teams channel.

For more information about purging Teams messages, see:
- [eDiscovery solution series: Data spillage scenario - Search and purge](/microsoft-365/compliance/data-spillage-scenariosearch-and-purge)
- [Advanced eDiscovery workflow for content in Microsoft Teams](/microsoft-365/compliance/teams-workflow-in-advanced-ediscovery) 

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|eDiscovery.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /compliance/ediscovery/cases/{caseId}/sourceCollections/{sourceCollectionId}/purgeData
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this action returns a `202 Accepted` response code.

If the purge data operation is started successfully, this action returns a `202 Accepted` response code. The response will also contain a `Location` header, which contains the location of the [Purge data operation](../resources/ediscovery-purgedataoperation.md) that was created to commit the purge.
To check the status of the purge data operation, make a GET request to the location URL. When the request successfully completes, the [status](../resources/ediscovery-caseoperation.md#caseoperationstatus-values) will change to `succeeded`.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "sourcecollectionthis.purgedata"
}
-->
``` http
POST https://graph.microsoft.com/beta/compliance/ediscovery/cases/{caseId}/sourceCollections/{sourceCollectionId}/purgeData
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/sourcecollectionthispurgedata-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/sourcecollectionthispurgedata-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/sourcecollectionthispurgedata-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/sourcecollectionthispurgedata-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/sourcecollectionthispurgedata-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 202 Accepted
```
