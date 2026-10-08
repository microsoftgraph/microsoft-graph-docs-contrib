---
title: "Get webApplicationSegment"
description: "Read the properties and relationships of a webApplicationSegment object."
author: "dhruvinrshah"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
ms.date: 12/19/2024
---

# Get webApplicationSegment

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [webApplicationSegment](../resources/webapplicationsegment.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "webapplicationsegment-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/webapplicationsegment-get-permissions.md)]

[!INCLUDE [rbac-app-proxy-read](../includes/rbac-for-apis/rbac-app-proxy-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /applications/{applicationObjectId}/onPremisesPublishing/segmentsConfiguration/microsoft.graph.webSegmentConfiguration/applicationSegments/{applicationSegment-id}
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

If successful, this method returns a `200 OK` response code and a [webApplicationSegment](../resources/webapplicationsegment.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_webapplicationsegment"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/applications/129d6e80-484f-4d1f-bfca-a6a859d138ac/onPremisesPublishing/segmentsConfiguration/microsoft.graph.webSegmentConfiguration/ApplicationSegments/209efffb-0777-42b0-a65c-4e3ddb1ab3c0
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-webapplicationsegment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.webApplicationSegment"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#applications('129d6e80-484f-4d1f-bfca-a6a859d138ac')/onPremisesPublishing/segmentsConfiguration/microsoft.graph.webSegmentConfiguration/applicationSegments/$entity",
  "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET applications('')/onPremisesPublishing/segmentsConfiguration/microsoft.graph.webSegmentConfiguration/applicationSegments('')?$select=alternateUrl,externalUrl",
  "externalUrl": "https://channel1.contoso-appproxy.contoso.com/",
  "internalUrl": "https://contoso.com/",
  "alternateUrl": "",
  "id": "209efffb-0777-42b0-a65c-4e3ddb1ab3c0"
}
```

