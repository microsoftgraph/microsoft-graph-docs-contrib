---
title: "Create ipApplicationSegment"
description: "Create a new ipApplicationSegment object."
author: "dhruvinrshah"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
ms.date: 12/19/2024
---

# Create ipApplicationSegment

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [ipApplicationSegment](../resources/ipapplicationsegment.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "onpremisespublishingprofile_post_applicationsegments" } -->
[!INCLUDE [permissions-table](../includes/permissions/onpremisespublishingprofile-post-applicationsegments-permissions.md)]

[!INCLUDE [rbac-app-proxy-write](../includes/rbac-for-apis/rbac-app-proxy-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /applications/{applicationObjectId}/onPremisesPublishing/segmentsConfiguration/microsoft.graph.ipSegmentConfiguration/applicationSegments
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [ipApplicationSegment](../resources/ipapplicationsegment.md) object.

You can specify the following properties when creating an **ipApplicationSegment**.

|Property|Type|Description|
|:---|:---|:---|
|destinationHost|String|Either the IP address, IP range, or FQDN of the **applicationSegment**, with or without wildcards.|
|destinationType|privateNetworkDestinationType|The possible values are: `ipAddress`, `ipRange`, `ipRangeCidr`, `fqdn`, `dnsSuffix`.|
|ports|String collection|List of ports supported for the application segment.|
|protocol|privateNetworkProtocol|Indicates the protocol of the network traffic acquired for the application segment. The possible values are: `tcp`, `udp`.|

## Response

If successful, this method returns a `201 Created` response code and an [ipApplicationSegment](../resources/ipapplicationsegment.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_ipapplicationsegment_from_"
}
-->
```http
POST https://graph.microsoft.com/beta/applications/dcc40202-6223-488b-8e64-28aa1a803d6c/onPremisesPublishing/segmentsConfiguration/microsoft.graph.IpSegmentConfiguration/ApplicationSegments
Content-Type: application/json

{
   "destinationHost": "test2.com",
   "destinationType": "fqdn",
   "port": 0,
   "ports": [
      "445-445",
      "3389-3389"
   ],
   "protocol": "tcp"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-ipapplicationsegment-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.ipApplicationSegment"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#applications('8706aca4-94e9-4783-a23d-7dae1599a6e0')/onPremisesPublishing/segmentsConfiguration/microsoft.graph.ipSegmentConfiguration/applicationSegments/$entity",
    "destinationHost": "test2.com",
    "destinationType": "fqdn",
    "port": 0,
    "ports": [
        "445-445",
        "3389-3389"
    ],
    "protocol": "tcp",
    "id": "2b52958c-9d0c-449d-a985-c29d488a6335"
}
```

