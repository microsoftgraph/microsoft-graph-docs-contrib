---
title: "List webApplicationSegment objects"
description: "Get a list of the webApplicationSegment objects and their properties."
author: "dhruvinrshah"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
---

# List webApplicationSegment objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [webApplicationSegment](../resources/webapplicationsegment.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "websegmentconfiguration-list-applicationsegments-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/websegmentconfiguration-list-applicationsegments-permissions.md)]

[!INCLUDE [rbac-app-proxy-read](../includes/rbac-for-apis/rbac-app-proxy-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /applications/{application-id}/onPremisesPublishing/segmentsConfiguration/microsoft.graph.webSegmentConfiguration/applicationSegments
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

If successful, this method returns a `200 OK` response code and a collection of [webApplicationSegment](../resources/webapplicationsegment.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_webapplicationsegment"
}
-->
``` http
GET https://graph.microsoft.com/beta/webSegmentConfiguration/applicationSegments
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.webApplicationSegment)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.webApplicationSegment",
      "id": "15cdc651-b0fc-e299-9820-5eba4187bba4",
      "internalUrl": "String",
      "externalUrl": "String",
      "alternateUrl": "String"
    }
  ]
}
```

