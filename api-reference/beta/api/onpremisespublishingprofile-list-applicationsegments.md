---
title: "List ipApplicationSegment objects"
description: "Get a list of the ipApplicationSegment objects and their properties."
author: "dhruvinrshah"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
ms.date: 12/19/2024
---

# List ipApplicationSegment objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [ipApplicationSegment](../resources/ipapplicationsegment.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "onpremisespublishingprofile_list_applicationsegments" } -->
[!INCLUDE [permissions-table](../includes/permissions/onpremisespublishingprofile-list-applicationsegments-permissions.md)]

[!INCLUDE [rbac-app-proxy-read](../includes/rbac-for-apis/rbac-app-proxy-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /applications/{applicationObjectId}/onPremisesPublishing/segmentsConfiguration/microsoft.graph.ipSegmentConfiguration/applicationSegments
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
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_ipapplicationsegment"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/applications/dcc40202-6223-488b-8e64-28aa1a803d6c/onPremisesPublishing/segmentsConfiguration/microsoft.graph.IpSegmentConfiguration/ApplicationSegments
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-ipapplicationsegment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.ipApplicationSegment)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
"value": [
        {
            "destinationHost": "test-check-ch.contoso.com",
            "destinationType": "fqdn",
            "port": 0,
            "ports": [
                "20-20"
            ],
            "protocol": "tcp",
            "id": "df8cb1a6-4bbf-4da3-8f85-fe2fc439ab80"
        },
        {
            "destinationHost": "5.6.7.8/28",
            "destinationType": "ipRangeCidr",
            "port": 0,
            "ports": [
                "25-25"
            ],
            "protocol": "tcp,udp",
            "id": "aab5b1be-40fd-43ef-92ae-1e86a696e686"
        },
        {
            "destinationHost": "test.contoso",
            "destinationType": "fqdn",
            "port": 0,
            "ports": [
                "20-20"
            ],
            "protocol": "tcp",
            "id": "55815c73-4c25-4b41-83c9-018dacf1edca"
        },
        {
            "destinationHost": "2.2.2.2/20",
            "destinationType": "ipRangeCidr",
            "port": 0,
            "ports": [
                "443-443"
            ],
            "protocol": "tcp",
            "id": "4f9ebb7f-545b-4b26-9c10-e47827e2421b"
        },
        {
            "destinationHost": "10.10.10.10",
            "destinationType": "ip",
            "port": 0,
            "ports": [
                "9-9"
            ],
            "protocol": "tcp,udp",
            "id": "95c92024-04e1-4569-bf9f-c2007afb04ba"
        },
        {
            "destinationHost": "check.contoso.com",
            "destinationType": "fqdn",
            "port": 0,
            "ports": [
                "443-443"
            ],
            "protocol": "tcp",
            "id": "f2b146fc-0a49-405b-9154-ad02b6b569fd"
        },
        {
            "destinationHost": "test",
            "destinationType": "fqdn",
            "port": 0,
            "ports": [
                "20-20"
            ],
            "protocol": "tcp",
            "id": "ce5ea5b9-c4f1-4734-9dae-8ee48c5b3de7"
        }
    ]
}
```

