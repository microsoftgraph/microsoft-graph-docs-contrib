---
title: "Delete community"
description: "Delete a community object."
author: "aditijha4"
ms.localizationpriority: medium
ms.prod: "employee-engagement"
doc_type: apiPageType
---

# Delete community

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [community](../resources/community.md) in Viva Engage.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "employeeexperience-delete-communities-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/employeeexperience-delete-communities-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /employeeExperience/communities/{communityId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "delete_community"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/employeeExperience/communities/eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0
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

