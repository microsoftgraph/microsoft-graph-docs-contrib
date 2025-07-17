---
title: "Get corsConfiguration_v2"
description: "Read the properties and relationships of a corsConfiguration_v2 object."
author: "dhruvinrshah"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
ms.date: 12/19/2024
---

# Get corsConfiguration_v2

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [corsConfiguration_v2](../resources/corsconfiguration_v2.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "corsconfiguration_v2-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/corsconfiguration_v2-get-permissions.md)]

[!INCLUDE [rbac-app-proxy-read](../includes/rbac-for-apis/rbac-app-proxy-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /applications/{application-id}/onPremisesPublishing/segmentsConfiguration/microsoft.graph.webSegmentConfiguration/applicationSegments/{applicationSegment-id}/corsConfigurations/{corsConfiguration_v2-Id}
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [corsConfiguration_v2](../resources/corsconfiguration_v2.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_corsconfiguration_v2"
}
-->
``` http
GET https://graph.microsoft.com/beta/applications/{applicationObjectId}/onPremisesPublishing/segmentsConfiguration/microsoft.graph.webSegmentConfiguration/applicationSegments/{segmentid}/corsConfigurations/{id}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-corsconfiguration-v2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.corsConfiguration_v2"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "id": "<id>",
    "resource": "/",
    "allowedOrigins": ["*"],
    "allowedHeaders": ["*"],
    "allowedMethods": ["*"],
    "maxAgeInSeconds": 3000
}
```

<!--
{
  "type": "#page.annotation",
  "description": "Get corsConfiguration_v2",
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

