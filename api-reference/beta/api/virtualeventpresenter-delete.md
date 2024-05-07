---
title: "Delete virtualEventPresenter"
description: "Delete a virtualEventPresenter object."
author: "frankpeng7"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
---

# Delete virtualEventPresenter

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [virtualEventPresenter](../resources/virtualeventpresenter.md) from a virtual event.

Currently the supported virtual event types are: [virtualEventWebinar](../resources/virtualeventwebinar.md), [virtualEventTownhall](../resources/virtualeventtownhall.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "virtualeventpresenter-delete-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventpresenter-delete-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /solutions/virtualEvents/webinars/{webinarId}/presenters/{presenterId}
DELETE /solutions/virtualEvents/townhalls/{townhallId}/presenters/{presenterId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_presenters_from_virtualeventtownhall",
  "sampleKeys": ["502dadea-b5d8-44aa-a851-a0ac496a36bf@09a21d49-f0f3-4b3f-96b6-f381e9430742", "7b7e1acd-a3e0-4533-8c1d-c1a4ca0b2e2b"]
}
-->
``` http
DELETE https://graph.microsoft.com/beta/solutions/virtualEvents/townhalls/502dadea-b5d8-44aa-a851-a0ac496a36bf@09a21d49-f0f3-4b3f-96b6-f381e9430742/presenters/7b7e1acd-a3e0-4533-8c1d-c1a4ca0b2e2b
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-presenters-from-virtualeventtownhall-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/delete-presenters-from-virtualeventtownhall-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delete-presenters-from-virtualeventtownhall-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-presenters-from-virtualeventtownhall-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-presenters-from-virtualeventtownhall-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delete-presenters-from-virtualeventtownhall-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/delete-presenters-from-virtualeventtownhall-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/delete-presenters-from-virtualeventtownhall-python-snippets.md)]
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
HTTP/1.1 204 No Content
```
