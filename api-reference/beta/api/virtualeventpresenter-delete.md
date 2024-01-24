---
title: "Remove presenters"
description: "Remove a virtualEventPresenter object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Remove presenters
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Remove a [virtualEventPresenter](../resources/virtualeventpresenter.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "virtualeventsession-delete-presenters-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventsession-delete-presenters-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /users/{usersId}/virtualEvents/webinars/{virtualEventWebinarId}/sessions/{virtualEventSessionId}/presenters/{id}/$ref
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "delete_presenters_from_virtualeventsession"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/users/{usersId}/virtualEvents/webinars/{virtualEventWebinarId}/sessions/{virtualEventSessionId}/presenters/{id}/$ref
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

