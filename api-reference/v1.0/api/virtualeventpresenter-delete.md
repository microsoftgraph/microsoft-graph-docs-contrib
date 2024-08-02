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

Delete a [virtualEventPresenter](../resources/virtualeventpresenter.md) from a virtual event.

Currently the supported virtual event types are:
- [virtualEventTownhall](../resources/virtualeventtownhall.md)
- [virtualEventWebinar](../resources/virtualeventwebinar.md)

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

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
DELETE /solutions/virtualEvents/townhalls/{townhallId}/presenters/{presenterId}
DELETE /solutions/virtualEvents/webinars/{webinarId}/presenters/{presenterId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows how to delete a presenter from a **virtualEventTownhall**.

<!-- {
  "blockType": "request",
  "name": "delete_presenters_from_virtualeventtownhall",
  "sampleKeys": ["502dadea-b5d8-44aa-a851-a0ac496a36bf@09a21d49-f0f3-4b3f-96b6-f381e9430742", "7b7e1acd-a3e0-4533-8c1d-c1a4ca0b2e2b"]
}
-->
``` http
DELETE https://graph.microsoft.com/v1.0/solutions/virtualEvents/townhalls/502dadea-b5d8-44aa-a851-a0ac496a36bf@09a21d49-f0f3-4b3f-96b6-f381e9430742/presenters/7b7e1acd-a3e0-4533-8c1d-c1a4ca0b2e2b
```

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
