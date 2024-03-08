---
title: "Delete synchronizationSchema"
description: "Delete the customized schema and resets the schema to the default configuration. If the schema is deleted in the context of the template, it resets the schema to the default one associated with the template's `factoryTag`."
ms.localizationpriority: medium
doc_type: apiPageType
author: "ArvindHarinder1"
ms.subservice: "entra-applications"
---

# Delete synchronizationSchema

Namespace: microsoft.graph

Delete the customized schema and resets the schema to the default configuration. If the schema is deleted in the context of the template, it resets the schema to the default one associated with the template's `factoryTag`.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "synchronization_synchronizationschema_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/synchronization-synchronizationschema-delete-permissions.md)]

[!INCLUDE [rbac-synchronization-apis](../includes/rbac-for-apis/rbac-synchronization-apis.md)]

## HTTP Request
<!-- { "blockType": "ignored" } -->
```http
DELETE /servicePrincipals/{id}/synchronization/jobs/{jobId}/schema
DELETE /applications/{id}/synchronization/templates/{templateId}/schema
```

## Request headers

| Name           | Type    | Description|
|:---------------|:--------|:-----------|
| Authorization  | string  | Bearer {token}. Required. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `201 No Content` response code. It does not return anything in response body.

## Example

##### Request
The following is an example of a request.

```http
DELETE https://graph.microsoft.com/v1.0/servicePrincipals/{id}/synchronization/jobs/{jobId}/schema
```

##### Response
The following is an example of a response.
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Delete synchronizationSchema",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


