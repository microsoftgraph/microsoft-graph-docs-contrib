---
title: "Create corsConfiguration_v2"
description: "Create a new corsConfiguration_v2 object."
author: "dhruvinrshah"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
ms.date: 12/19/2024
---

# Create corsConfiguration_v2

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [corsConfiguration_v2](../resources/corsconfiguration_v2.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "webapplicationsegment-post-corsconfigurations-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/webapplicationsegment-post-corsconfigurations-permissions.md)]

[!INCLUDE [rbac-app-proxy-write](../includes/rbac-for-apis/rbac-app-proxy-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /applications/{applicationObjectId}/onPremisesPublishing/segmentsConfiguration/microsoft.graph.webSegmentConfiguration/applicationSegments/{webApplicationSegment-id}/corsConfigurations
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [corsConfiguration_v2](../resources/corsconfiguration_v2.md) object.

You can specify the following properties when creating a **corsConfiguration_v2**.

|Property|Type|Description|
|:---|:---|:---|
|resource|String|Resource within the application segment for which CORS permissions are granted. `/` grants permission for the whole app segment. Required.|
|allowedOrigins|String collection|The origin domains that are permitted to make a request against the service via CORS. The origin domain is the domain from which the request originates. The origin must be an exact case-sensitive match with the origin that the user agent sends to the service. Optional.|
|allowedHeaders|String collection|The request headers that the origin domain may specify on the CORS request. The wildcard character `*` indicates that any header beginning with the specified prefix is allowed. Optional.|
|allowedMethods|String collection|The HTTP request methods that the origin domain may use for a CORS request. Optional.|
|maxAgeInSeconds|Int32|The maximum amount of time that a browser should cache the response to the preflight **OPTIONS** request. Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [corsConfiguration_v2](../resources/corsconfiguration_v2.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_corsconfiguration_v2_from_"
}
-->
```http
POST https://graph.microsoft.com/beta/applications/129d6e80-484f-4d1f-bfca-a6a859d138ac/onPremisesPublishing/segmentsConfiguration/microsoft.graph.webSegmentConfiguration/ApplicationSegments/209efffb-0777-42b0-a65c-4e3ddb1ab3c0/corsConfigurations
Content-Type: application/json

{
  "allowedOrigins":[""],
  "allowedHeaders":[""],
  "allowedMethods":["*"],
  "maxAgeInSeconds":3000,
  "resource":"/"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-corsconfiguration-v2-from--javascript-snippets.md)]
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
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "allowedOrigins":[""],
  "allowedHeaders":[""],
  "allowedMethods":["*"],
  "maxAgeInSeconds":3000,
  "resource":"/"
}
```

<!--
{
  "type": "#page.annotation",
  "description": "Create corsConfiguration_v2",
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

