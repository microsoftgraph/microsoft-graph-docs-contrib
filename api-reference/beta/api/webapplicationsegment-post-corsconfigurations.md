---
title: "Create corsConfiguration_v2"
description: "Create a new corsConfiguration_v2 object."
author: "dhruvinrshah"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
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
``` http
POST /applications/{application-id}/onPremisesPublishing/segmentsConfiguration/microsoft.graph.webSegmentConfiguration/applicationSegments/{webApplicationSegment-id}/corsConfigurations
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
|resource|String|**TODO: Add Description** Required.|
|allowedOrigins|String collection|**TODO: Add Description** Optional.|
|allowedHeaders|String collection|**TODO: Add Description** Optional.|
|allowedMethods|String collection|**TODO: Add Description** Optional.|
|maxAgeInSeconds|Int32|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [corsConfiguration_v2](../resources/corsconfiguration_v2.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_corsconfiguration_v2_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/applications/{application-id}/onPremisesPublishing/segmentsConfiguration/microsoft.graph.webSegmentConfiguration/applicationSegments/{webApplicationSegment-id}/corsConfigurations
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
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.corsConfiguration_v2"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.corsConfiguration_v2",
  "id": "395c08a3-58b7-0b7a-f7b9-64af88bea09d",
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

