---
title: "Delete corsConfiguration_v2"
description: "Delete a corsConfiguration_v2 object."
author: "dhruvinrshah"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
ms.date: 12/19/2024
---

# Delete corsConfiguration_v2

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [corsConfiguration_v2](../resources/corsconfiguration_v2.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "webapplicationsegment-delete-corsconfigurations-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/webapplicationsegment-delete-corsconfigurations-permissions.md)]

[!INCLUDE [rbac-app-proxy-write](../includes/rbac-for-apis/rbac-app-proxy-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
DELETE /applications/{applicationObjectId}/onPremisesPublishing/segmentsConfiguration/microsoft.graph.webSegmentConfiguration/applicationSegments/{webApplicationSegment-id}/corsConfigurations/{corsConfiguration_v2-Id}
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
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_corsconfiguration_v2"
}
-->
```http
DELETE https://graph.microsoft.com/beta/applications/129d6e80-484f-4d1f-bfca-a6a859d138ac/onPremisesPublishing/segmentsConfiguration/microsoft.graph.webSegmentConfiguration/applicationSegments/209efffb-0777-42b0-a65c-4e3ddb1ab3c0/corsConfigurations/044b32a9-d3a2-4218-9db1-de651d009d2b
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-corsconfiguration-v2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```

<!--
{
  "type": "#page.annotation",
  "description": "Delete corsConfiguration_v2",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "
      Error: microsoft.graph.microsoft.graph/applications:
        /applications/{var}/onPremisesPublishing/segmentsConfiguration/microsoft.graph.webSegmentConfiguration/applicationSegments/{var}/corsConfigurations/{var}
        Uri path requires navigating into unknown object hierarchy: missing property 'microsoft.graph.webSegmentConfiguration' on 'segmentConfiguration'. Possible issues:
          1) Doc bug where 'microsoft.graph.webSegmentConfiguration' isn't defined on the resource.
          2) Doc bug where 'microsoft.graph.webSegmentConfiguration' is an example key and should instead be replaced with a placeholder like {item-id} or declared in the sampleKeys annotation.
          3) Doc bug where 'segmentConfiguration' is supposed to be an entity type, but is being treated as a complex because it (and its ancestors) are missing the keyProperty annotation.
    "
  ]
}
-->
