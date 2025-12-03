---
title: "Get checkInClaim"
description: "Read the properties and relationships of a checkInClaim object."
author: "shijieyao"
ms.date: 08/06/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: apiPageType
---

# Get checkInClaim

Namespace: microsoft.graph

Read the properties and relationships of a [checkInClaim](../resources/checkinclaim.md) object. This API provides the check-in status for a specific place, such as a [desk](../resources/desk.md), [room](../resources/room.md), or [workspace](../resources/workspace.md), associated with a particular reservation.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "checkinclaim_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/checkinclaim-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /places/{placesId}/checkIns/{calendarEventId}
```

## Optional query parameters

This method doesn't support OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [checkInClaim](../resources/checkinclaim.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_checkinclaim",
  "sampleKeys": ["c8aaf4d8-6c73-46c4-bf28-b2adadafb5be", "040000008200E00074C5B7101A82E00800000000D02AC02D26EFDB010000000000000000100000005A18ADA04F0A24489AE13ED3CC367978"]
}
-->
``` http
GET https://graph.microsoft.com/v1.0/places/c8aaf4d8-6c73-46c4-bf28-b2adadafb5be/checkIns/040000008200E00074C5B7101A82E00800000000D02AC02D26EFDB010000000000000000100000005A18ADA04F0A24489AE13ED3CC367978
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.checkInClaim"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.checkInClaim",
    "calendarEventId": "040000008200E00074C5B7101A82E00800000000D02AC02D26EFDB010000000000000000100000005A18ADA04F0A24489AE13ED3CC367978",
    "checkInMethod": "verified",
    "createdDateTime": "2025-06-28T12:34:56.789Z"
  }
}
```