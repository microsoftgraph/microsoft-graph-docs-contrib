---
title: "List corsConfiguration_v2 objects"
description: "Get a list of the corsConfiguration_v2 objects and their properties."
author: "dhruvinrshah"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
ms.date: 12/19/2024
---

# List corsConfiguration_v2 objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [corsConfiguration_v2](../resources/corsconfiguration_v2.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "webapplicationsegment-list-corsconfigurations-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/webapplicationsegment-list-corsconfigurations-permissions.md)]

[!INCLUDE [rbac-app-proxy-read](../includes/rbac-for-apis/rbac-app-proxy-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /applications/{applicationObjectId}/onPremisesPublishing/segmentsConfiguration/microsoft.graph.webSegmentConfiguration/applicationSegments/{webApplicationSegment-id}/corsConfigurations
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

If successful, this method returns a `200 OK` response code and a collection of [corsConfiguration_v2](../resources/corsconfiguration_v2.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_corsconfiguration_v2"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/applications/{applicationObjectId}/onPremisesPublishing/segmentsConfiguration/microsoft.graph.webSegmentConfiguration/applicationSegments/{segmentId}/corsConfigurations
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-corsconfiguration-v2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.corsConfiguration_v2)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#applications('129d6e80-484f-4d1f-bfca-a6a859d138ac')/onPremisesPublishing/segmentsConfiguration/microsoft.graph.webSegmentConfiguration/applicationSegments('209efffb-0777-42b0-a65c-4e3ddb1ab3c0')/corsConfigurations",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET applications('')/onPremisesPublishing/segmentsConfiguration/microsoft.graph.webSegmentConfiguration/applicationSegments('')/corsConfigurations?$select=allowedHeaders,allowedMethods",
    "value": [
        {
            "id": "779bdc5f-f621-4fcc-9177-81f45914b005",
            "resource": "/",
            "allowedOrigins": [
                ""
            ],
            "allowedHeaders": [
                ""
            ],
            "allowedMethods": [
                ""
            ],
            "maxAgeInSeconds": 3000
        },
        {
            "id": "5d06ebc0-4113-44c3-9089-05b0082e77f6",
            "resource": "/here",
            "allowedOrigins": [
                ""
            ],
            "allowedHeaders": [
                ""
            ],
            "allowedMethods": [
                ""
            ],
            "maxAgeInSeconds": 4000
        }
    ]
}
```

<!--
{
  "type": "#page.annotation",
  "description": "List corsConfiguration_v2 objects",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "
      Error: microsoft.graph.microsoft.graph/applications:
        /applications/{var}/onPremisesPublishing/segmentsConfiguration/microsoft.graph.webSegmentConfiguration/applicationSegments/{var}/corsConfigurations
        Uri path requires navigating into unknown object hierarchy: missing property 'microsoft.graph.webSegmentConfiguration' on 'segmentConfiguration'. Possible issues:
        1) Doc bug where 'microsoft.graph.webSegmentConfiguration' isn't defined on the resource.
        2) Doc bug where 'microsoft.graph.webSegmentConfiguration' is an example key and should instead be replaced with a placeholder like {item-id} or declared in the sampleKeys annotation.
        3) Doc bug where 'segmentConfiguration' is supposed to be an entity type, but is being treated as a complex because it (and its ancestors) are missing the keyProperty annotation.
    "
  ]
}
-->

