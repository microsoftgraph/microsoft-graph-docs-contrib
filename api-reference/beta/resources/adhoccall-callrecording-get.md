---
title: "Get callRecording"
description: "Retrieve a single callRecording associated with a Microsoft Teams ad hoc call."
author: "sukanya"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 10/14/2025
---

# Get callRecording

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a callRecording object for an [ad hoc call](../resources/adhoccall.md). This API supports the retrieval of call recordings from private chat meetings, channel meetings, ad hoc calls, including PSTN, 1:1, and group calls. Private channel meetings are not supported.

For a recording, this API returns the metadata of the single recording associated with an ad hoc call. For the content of a recording, this API returns the stream of bytes associated with the recording.

> [!NOTE]
> For ad hoc calls:
>
> - New permissions (parallel to `OnlineMeetings`) are required.
> - Subscribe to two separate, appropriately scoped resources (one for `onlineMeetings` and other for `adhocCalls`). These resources supply the URLs to use for fetching the data.
> - Subscribe to [notifications](/graph/teams-changenotifications-callrecording-and-calltranscript) to get access to the call ID.
> - To obtain the call ID while the call is still ongoing, have the app get called through [App-hosted/service-hosted Calls](/graph/api/resources/call?view=graph-rest-1.0&preserve-view=true) and use the `callChainId`.
> - `getAll` variant is available to get all ad hoc calls for a user.
> - Enumeration of artifacts for a particular call is not available.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "ignored", "name": "callrecording_get" } -->
|Permission type|Least privileged permissions|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)| CallRecording.Read.All | Not available.|
|Delegated (personal Microsoft account)| Not supported.| Not supported.|
|Application| CallRecordings.Read.All | Not available.|

## HTTP request

Get a single recording for an ad hoc call

<!-- { "blockType": "ignored" } -->
```http
GET /me/adhocCalls/{callId}/recordings/{recordingId}
GET /users/{userId}/adhocCalls/{callId}/recordings/{recordingId}
```

Get the content of a single ad hoc call recording

<!-- { "blockType": "ignored" } -->
```http
GET /me/adhocCalls/{callId}/recordings/{recordingId}/content
GET /users/{userId}/adhocCalls/{callId}/recordings/{recordingId}/content
```

## Optional query parameters

This method supports the `$select` [OData query parameter](/graph/query-parameters) to customize the response.

## Request headers

| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [callRecording](../resources/callrecording.md) object in the response body.

## Examples

### Example 1: Get a callRecording for an ad hoc call

The following example shows how to get a single recording of an ad hoc call.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_callRecording_adhoc",
  "sampleKeys": ["f2e8e111-3887-4936-87f8-639292c70d34", "1c9ddbc9-82be-46b6-8edd-bf833fe33a03",  "VjMjIzE5OjVhYjlkNjhlMTQ4ZTQ4MjU4ZmJjMzlmMDhlMzk5MjdjQHRocmVhZC52MiMjMWM5ZGRiYzktODJiZS00NmI2LThlZGQtYmY4MzNmZTMzYTAzLTE3NTQ4OTU0MzctUmVjb3JkaW5nIyMw"]
}
-->
``` http
GET https://graph.microsoft.com/beta/users/f2e8e111-3887-4936-87f8-639292c70d34/adhocCalls/1c9ddbc9-82be-46b6-8edd-bf833fe33a03/recordings/VjMjIzE5OjVhYjlkNjhlMTQ4ZTQ4MjU4ZmJjMzlmMDhlMzk5MjdjQHRocmVhZC52MiMjMWM5ZGRiYzktODJiZS00NmI2LThlZGQtYmY4MzNmZTMzYTAzLTE3NTQ4OTU0MzctUmVjb3JkaW5nIyMw

```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-callrecording-adhoc-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-callrecording-adhoc-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-callrecording-adhoc-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-callrecording-adhoc-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-callrecording-adhoc-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-callrecording-adhoc-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.callRecording"
}
-->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('f2e8e111-3887-4936-87f8-639292c70d34')/adhocCalls('1c9ddbc9-82be-46b6-8edd-bf833fe33a03')/recordings/$entity",
    "id": "VjMjIzE5OjVhYjlkNjhlMTQ4ZTQ4MjU4ZmJjMzlmMDhlMzk5MjdjQHRocmVhZC52MiMjMWM5ZGRiYzktODJiZS00NmI2LThlZGQtYmY4MzNmZTMzYTAzLTE3NTQ4OTU0MzctUmVjb3JkaW5nIyMw",
    "callId": "1c9ddbc9-82be-46b6-8edd-bf833fe33a03",	 
    "createdDateTime": "2025-08-11T06:57:17.4065904Z",
    "endDateTime": "2025-08-11T06:57:28.2265904Z",
    "contentCorrelationId": "58cfc66a-710f-4be7-adc0-1ca5a28f2c0c-0",
    "recordingContentUrl": "https://graph.microsoft.com/beta/users/f2e8e111-3887-4936-87f8-639292c70d34/adhocCalls/1c9ddbc9-82be-46b6-8edd-bf833fe33a03/recordings/VjMjIzE5OjVhYjlkNjhlMTQ4ZTQ4MjU4ZmJjMzlmMDhlMzk5MjdjQHRocmVhZC52MiMjMWM5ZGRiYzktODJiZS00NmI2LThlZGQtYmY4MzNmZTMzYTAzLTE3NTQ4OTU0MzctUmVjb3JkaW5nIyMw/content",
    "meetingOrganizer": {
        "application": null,
        "device": null,
        "user": {
            "@odata.type":"#microsoft.graph.teamworkUserIdentity",
            "id":"f2e8e111-3887-4936-87f8-639292c70d34",
            "displayName":null,
            "userIdentityType":"aadUser",
            "tenantId": "8393309d-9fb7-4cce-aafb-eedc8c5781e2"
        }
    }   
}
```

### Example 2: Get a callRecording content for an ad hoc call

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_callRecording_content_adhoc",
  "sampleKeys": ["f2e8e111-3887-4936-87f8-639292c70d34", "1c9ddbc9-82be-46b6-8edd-bf833fe33a03", "VjMjIzE5OjVhYjlkNjhlMTQ4ZTQ4MjU4ZmJjMzlmMDhlMzk5MjdjQHRocmVhZC52MiMjMWM5ZGRiYzktODJiZS00NmI2LThlZGQtYmY4MzNmZTMzYTAzLTE3NTQ4OTU0MzctUmVjb3JkaW5nIyMw"]
}
-->
``` http
GET https://graph.microsoft.com/beta/users/f2e8e111-3887-4936-87f8-639292c70d34/adhocCalls/1c9ddbc9-82be-46b6-8edd-bf833fe33a03/recordings/VjMjIzE5OjVhYjlkNjhlMTQ4ZTQ4MjU4ZmJjMzlmMDhlMzk5MjdjQHRocmVhZC52MiMjMWM5ZGRiYzktODJiZS00NmI2LThlZGQtYmY4MzNmZTMzYTAzLTE3NTQ4OTU0MzctUmVjb3JkaW5nIyMw/content
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-callrecording-content-adhoc-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-callrecording-content-adhoc-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-callrecording-content-adhoc-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-callrecording-content-adhoc-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-callrecording-content-adhoc-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-callrecording-content-adhoc-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The response contains bytes for the recording in the body. The `content-type` header specifies the type of the recording content. Negative offsets indicate that the recording began while the conversation was ongoing.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "stream"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: video/mp4

<bytes of a recording>
```