---
title: "Create webApplicationSegment"
description: "Create a new webApplicationSegment object."
author: "dhruvinrshah"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
ms.date: 12/19/2024
---

# Create webApplicationSegment

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [webApplicationSegment](../resources/webapplicationsegment.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "websegmentconfiguration-post-applicationsegments-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/websegmentconfiguration-post-applicationsegments-permissions.md)]

[!INCLUDE [rbac-app-proxy-write](../includes/rbac-for-apis/rbac-app-proxy-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /applications/{applicationObjectId}/onPremisesPublishing/segmentsConfiguration/microsoft.graph.webSegmentConfiguration/applicationSegments
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [webApplicationSegment](../resources/webapplicationsegment.md) object.

You can specify the following properties when creating a **webApplicationSegment**.

|Property|Type|Description|
|:---|:---|:---|
|alternateUrl|String|Optional. If you're configuring a traffic manager in front of multiple app proxy application segments, this property contains the user-friendly URL that points to the traffic manager.|
|externalUrl|String |Required. The published external URL for the application segment; for example, `https://intranet.contoso.com/`.|
|internalUrl|String |Required. The internal URL of the application segment; for example, `https://intranet/`.|
|corsConfigurations|[corsConfiguration_v2](../resources/corsconfiguration_v2.md) collection|Optional. A collection of CORS Rule definitions for a particular application segment.|


## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_webapplicationsegment_from_"
}
-->
```http
POST https://graph.microsoft.com/beta/applications/2709c601-fcff-4010-94ea-5f862f755568/onPremisesPublishing/segmentsConfiguration/microsoft.graph.webSegmentConfiguration/applicationSegments/
Content-Type: application/json

{
    "externalUrl": "https://fe.contoso.com",
    "internalUrl": "https://be.contoso.com",
    "corsConfigurations": [
        {
            "resource": "/",
            "allowedOrigins": "*",
            "allowedHeaders": "*",
            "allowedMethods": "*",
            "maxAgeInSeconds": "3000"
        }
    ]
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-webapplicationsegment-from--javascript-snippets.md)]
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

