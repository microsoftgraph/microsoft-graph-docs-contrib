---
title: "Update corsConfiguration_v2"
description: "Update the properties of a corsConfiguration_v2 object."
author: "dhruvinrshah"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
ms.date: 11/28/2024
---

# Update corsConfiguration_v2

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [corsConfiguration_v2](../resources/corsconfiguration_v2.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "corsconfiguration_v2-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/corsconfiguration_v2-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /applications/{applicationObjectId}/onPremisesPublishing/segmentsConfiguration/microsoft.graph.webSegmentConfiguration/applicationSegments/{applicationSegment-id}/corsConfigurations/{corsConfiguration_v2-Id}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|allowedHeaders|String Collection|The request headers that the origin domain may specify on the CORS request. The wildcard character `*` indicates that any header beginning with the specified prefix is allowed.|
|allowedMethods|String Collection|The HTTP request methods that the origin domain may use for a CORS request.|
|allowedOrigins|String Collection|The origin domains that are permitted to make a request against the service via CORS. The origin domain is the domain from which the request originates. The origin must be an exact case-sensitive match with the origin that the user agent sends to the service. |
|maxAgeInSeconds|Integer|The maximum amount of time that a browser should cache the response to the preflight **OPTIONS** request.|
|resource|String|Resource within the application segment for which CORS permissions are granted. `/` grants permission for the whole app segment.|

## Response

If successful, this method returns a `200 OK` response code and an updated [corsConfiguration_v2](../resources/corsconfiguration_v2.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_corsconfiguration_v2"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/applications/{applicationObjectId}/onPremisesPublishing/segmentsConfiguration/microsoft.graph.webSegmentConfiguration/applicationSegments/{segmentid}/corsConfigurations/{id}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.corsConfiguration_v2",
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
}
```


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

<!--
{
  "type": "#page.annotation",
  "description": "Update corsConfiguration_v2",
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