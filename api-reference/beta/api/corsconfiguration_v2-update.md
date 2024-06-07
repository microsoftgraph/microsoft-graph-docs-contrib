---
title: "Update corsConfiguration_v2"
description: "Update the properties of a corsConfiguration_v2 object."
author: "dhruvinrshah"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
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
PATCH /applications/{application-id}/onPremisesPublishing/segmentsConfiguration/microsoft.graph.webSegmentConfiguration/applicationSegments/{applicationSegment-id}/corsConfigurations/{corsConfiguration_v2-Id}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|resource|String|**TODO: Add Description** Required.|
|allowedOrigins|String collection|**TODO: Add Description** Optional.|
|allowedHeaders|String collection|**TODO: Add Description** Optional.|
|allowedMethods|String collection|**TODO: Add Description** Optional.|
|maxAgeInSeconds|Int32|**TODO: Add Description** Optional.|



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
PATCH https://graph.microsoft.com/beta/applications/<ObjectId>/onPremisesPublishing/segmentsConfiguration/microsoft.graph.webSegmentConfiguration/applicationSegments/<segmentid>/corsConfigurations/<id>
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.corsConfiguration_v2",
  "resource": "String",
  "allowedOrigins": [
    "String"
  ],
  "allowedHeaders": [
    "String"
  ],
  "allowedMethods": [
    "String"
  ],
  "maxAgeInSeconds": "Integer"
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

