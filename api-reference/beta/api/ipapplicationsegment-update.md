---
title: "Update ipApplicationSegment"
description: "Update the properties of an ipApplicationSegment object."
author: "dhruvinrshah"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
---

# Update ipApplicationSegment

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [ipApplicationSegment](../resources/ipapplicationsegment.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "ipapplicationsegment-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/ipapplicationsegment-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /ipSegmentConfiguration/applicationSegments/{ipApplicationSegmentId}
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
|destinationHost|String|**TODO: Add Description** Optional.|
|destinationType|privateNetworkDestinationType|**TODO: Add Description**. The possible values are: `ipAddress`, `ipRange`, `ipRangeCidr`, `fqdn`, `dnsSuffix`, `unknownFutureValue`. Optional.|
|port|Int32|**TODO: Add Description** Optional.|
|ports|String collection|**TODO: Add Description** Optional.|
|protocol|privateNetworkProtocol|**TODO: Add Description**. The possible values are: `tcp`, `udp`, `unknownFutureValue`. Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [ipApplicationSegment](../resources/ipapplicationsegment.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_ipapplicationsegment"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/ipSegmentConfiguration/applicationSegments/{ipApplicationSegmentId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.ipApplicationSegment",
  "destinationHost": "String",
  "destinationType": "String",
  "port": "Integer",
  "ports": [
    "String"
  ],
  "protocol": "String"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

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
```

