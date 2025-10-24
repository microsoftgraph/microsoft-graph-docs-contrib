---
title: "Create checkInClaim"
description: "Create a new checkInClaim object to record the check-in status for a specific place, such as a desk, room, or workspace, associated with a specific calendar reservation."
author: "shijieyao"
ms.date: 08/06/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: apiPageType
---

# Create checkInClaim

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [checkInClaim](../resources/checkinclaim.md) object to record the check-in status for a specific place, such as a [desk](../resources/desk.md), [room](../resources/room.md), or [workspace](../resources/workspace.md), associated with a specific calendar reservation. This check-in confirms that the reserved space is in use and prevents automatic release if auto-release policies are configured for that place.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "place_post_checkins" } -->
[!INCLUDE [permissions-table](../includes/permissions/place-post-checkins-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /places/{placesId}/checkIns
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [checkInClaim](../resources/checkinclaim.md) object.

You can specify the following properties when you create a **checkInClaim**.

|Property|Type|Description|
|:---|:---|:---|
|calendarEventId|String| The unique identifier for an Outlook calendar event associated with the **checkInClaim** object. For more information, see the **iCalUId** property in [event](../resources/event.md). Read-only. Required. |
|checkInMethod|[checkInMethod](../resources/checkinclaim.md#checkinmethod-values)| Indicates the method of check-in. The possible values are: `unspecified`, `manual`, `inferred`, `verified`, `unknownFutureValue`. The default value is `unspecified`. Required.|

## Response

If successful, this method returns a `201 Created` response code and a [checkInClaim](../resources/checkinclaim.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_checkinclaim_from_"
}
-->
```http
POST https://graph.microsoft.com/beta/places/c8aaf4d8-6c73-46c4-bf28-b2adadafb5be/checkIns
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.checkInClaim",
  "calendarEventId": "040000008200E00074C5B7101A82E00800000000D02AC02D26EFDB010000000000000000100000005A18ADA04F0A24489AE13ED3CC367978",
  "checkInMethod": "verified"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-checkinclaim-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-checkinclaim-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-checkinclaim-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-checkinclaim-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-checkinclaim-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-checkinclaim-from--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.checkInClaim"
}
-->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.checkInClaim",
  "calendarEventId": "040000008200E00074C5B7101A82E00800000000D02AC02D26EFDB010000000000000000100000005A18ADA04F0A24489AE13ED3CC367978",
  "checkInMethod": "verified",
  "createdDateTime": "2025-06-28T12:34:56.789Z"
}
```
