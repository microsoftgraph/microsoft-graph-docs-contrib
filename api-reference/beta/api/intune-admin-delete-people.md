---
title: "Delete peopleAdminSettings"
description: "Delete a peopleAdminSettings object."
author: "fondieki"
ms.localizationpriority: medium
ms.subservice: "people"
doc_type: apiPageType
---

# Delete peopleAdminSettings

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [peopleAdminSettings](../resources/peopleadminsettings.md) object.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /admin/people/$ref
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

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "delete_peopleadminsettings"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/admin/people
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

