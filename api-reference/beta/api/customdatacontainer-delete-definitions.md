---
title: "Retire customObjectDefinition"
description: "Delete a customObjectDefinition object."
author: "biodero"
ms.date: 09-22-2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# Retire customObjectDefinition

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retire a customObjectDefinition object. Retiring a definition prevents future instances but retains existing instances and tombstones.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "customdatacontainer-delete-definitions-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/customdatacontainer-delete-definitions-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /identityGovernance/customData/definitions/{definitionId}
DELETE /identityGovernance/customData/definitions('{definitionId}')
DELETE /identityGovernance/customData/definitions(objectType='{objectType}')
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|If-Match|Current ETag. Required.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "delete_customobjectdefinition"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/identityGovernance/customData/definitions/1f9e2d04-bc62-49f8-ae15-4b5de0d1bca1
If-Match: W/"definition-etag-2"
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
