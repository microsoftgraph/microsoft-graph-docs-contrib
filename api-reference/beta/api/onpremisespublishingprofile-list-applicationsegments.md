---
title: "List ipApplicationSegment objects"
description: "Get a list of the ipApplicationSegment objects and their properties."
author: "dhruvinrshah"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
---

# List ipApplicationSegment objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [ipApplicationSegment](../resources/ipapplicationsegment.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "onpremisespublishingprofile-list-applicationsegments-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/onpremisespublishingprofile-list-applicationsegments-permissions.md)]

[!INCLUDE [rbac-app-proxy-read](../includes/rbac-for-apis/rbac-app-proxy-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /applications/{application-id}/onPremisesPublishing/segmentsConfiguration/microsoft.graph.ipSegmentConfiguration/applicationSegments
```

## Optional query parameters

This method supports the `$expand` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [ipApplicationSegment](../resources/ipapplicationsegment.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_ipapplicationsegment"
}
-->
``` http
GET https://graph.microsoft.com/beta//applications('dcc40202-6223-488b-8e64-28aa1a803d6c')/onPremisesPublishing/segmentsConfiguration/microsoft.graph.IpSegmentConfiguration/ApplicationSegments
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.ipApplicationSegment)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.ipApplicationSegment",
      "id": "9ceef8f4-7dff-803a-8046-a3fcb133dc1f",
      "destinationHost": "String",
      "destinationType": "String",
      "port": "Integer",
      "ports": [
        "String"
      ],
      "protocol": "String"
    }
  ]
}
```

