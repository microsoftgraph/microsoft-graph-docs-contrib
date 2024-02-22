---
title: "Get callRecording"
description: "Get a callRecording object associated with a scheduled onlineMeeting."
author: "v-sdhakshina"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Get callRecording

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a [callRecording](../resources/callrecording.md) object associated with a scheduled [onlineMeeting](../resources/onlinemeeting.md). This API doesn't support getting call recordings from channel meetings. 

For a recording, this API returns the metadata of the single recording associated with the online meeting. For the content of a recording, this API returns the stream of bytes associated with the recording.

> [!NOTE]
>
> * This is a metered API. For more information, see [payment models for meeting APIs](/graph/teams-licenses#payment-models-for-meeting-apis).
> * This API works differently in one or more national clouds. For details, see [Microsoft Teams API implementation differences in national clouds](/graph/teamwork-national-cloud-differences).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "callrecording_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/callrecording-get-permissions.md)]

> **Notes:**
>
> * In delegated permission scenarios, [getting callRecording content](#example-2-get-callrecording-content)  is supported only for the meeting organizer. Meeting participants don't have permission to download meeting recordings. For more information, see [permissions or role-based access](/microsoftteams/tmr-meeting-recording-change). Tenant admins can unblock meeting participants to download meeting recording. For more information, see [block the download of Teams meeting recording files](/MicrosoftTeams/block-download-meeting-recording).
> * The application permission `OnlineMeetingRecording.Read.Chat` uses [resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent).

To use application permissions for this API, tenant administrators must create an application access policy and grant it to a user. This authorizes the app configured in the policy to fetch online meetings or online meeting artifacts on behalf of that user (with the user ID specified in the request path). For more information, see [Allow applications to access online meetings on behalf of a user](/graph/cloud-communication-online-meeting-application-access-policy).

> [!NOTE]
> This API works only for a meeting that hasn't expired. For more information, see [Limits and specifications for Microsoft Teams](/microsoftteams/limits-specifications-teams#meeting-expiration).

## HTTP request

Get a single recording of an online meeting.

```http
GET /me/onlineMeetings/{meetingId}/recordings/{recordingId}
GET /users/{userId}/onlineMeetings/{meetingId}/recordings/{recordingId}
```

Get the content of a single recording of an online meeting.

```http
GET /me/onlineMeetings/{meetingId}/recordings/{recordingId}/content
GET /users/{userId}/onlineMeetings/{meetingId}/recordings/{recordingId}/content
```

## Optional query parameters

This method doesn't support the [OData query parameters](/graph/query-parameters) to customize the response.

## Request headers

| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [callRecording](../resources/callrecording.md) object in the response body.

## Examples

### Example 1: Get a callRecording

The following example shows how to get a single recording of an online meeting.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_callRecording",
  "sampleKeys": ["b935e675-5e67-48b9-8d45-249d5f88e964", "MSpiOTM1ZTY3NS01ZTY3LTQ4YjktOGQ0NS0yNDlkNWY4OGU5NjQqMCoqMTk6bWVldGluZ19ZbU0zTnpJNU9USXRZakU0WlMwME1tUTNMVGt6TVRRdFkyWm1PRGRtWmpsaVptRTNAdGhyZWFkLnYy", "7e31db25-bc6e-4fd8-96c7-e01264e9b6fc"]
}
-->
``` http
GET https://graph.microsoft.com/beta/users/b935e675-5e67-48b9-8d45-249d5f88e964/onlineMeetings/MSpiOTM1ZTY3NS01ZTY3LTQ4YjktOGQ0NS0yNDlkNWY4OGU5NjQqMCoqMTk6bWVldGluZ19ZbU0zTnpJNU9USXRZakU0WlMwME1tUTNMVGt6TVRRdFkyWm1PRGRtWmpsaVptRTNAdGhyZWFkLnYy/recordings/7e31db25-bc6e-4fd8-96c7-e01264e9b6fc
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-callrecording-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-callrecording-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-callrecording-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-callrecording-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-callrecording-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-callrecording-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-callrecording-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('b935e675-5e67-48b9-8d45-249d5f88e964')/onlineMeetings('MSpiOTM1ZTY3NS01ZTY3LTQ4YjktOGQ0NS0yNDlkNWY4OGU5NjQqMCoqMTk6bWVldGluZ19ZbU0zTnpJNU9USXRZakU0WlMwME1tUTNMVGt6TVRRdFkyWm1PRGRtWmpsaVptRTNAdGhyZWFkLnYy')/recordings/$entity",
  "id": "7e31db25-bc6e-4fd8-96c7-e01264e9b6fc",
  "meetingId": "MSpiOTM1ZTY3NS01ZTY3LTQ4YjktOGQ0NS0yNDlkNWY4OGU5NjQqMCoqMTk6bWVldGluZ19ZbU0zTnpJNU9USXRZakU0WlMwME1tUTNMVGt6TVRRdFkyWm1PRGRtWmpsaVptRTNAdGhyZWFkLnYy",
  "meetingOrganizerId": "b935e675-5e67-48b9-8d45-249d5f88e964",
  "createdDateTime": "2023-04-10T08:13:17.5990966Z",
  "recordingContentUrl": "https://graph.microsoft.com/beta/$metadata#users('b935e675-5e67-48b9-8d45-249d5f88e964')/onlineMeetings('MSpiOTM1ZTY3NS01ZTY3LTQ4YjktOGQ0NS0yNDlkNWY4OGU5NjQqMCoqMTk6bWVldGluZ19ZbU0zTnpJNU9USXRZakU0WlMwME1tUTNMVGt6TVRRdFkyWm1PRGRtWmpsaVptRTNAdGhyZWFkLnYy')/recordings/('7e31db25-bc6e-4fd8-96c7-e01264e9b6fc')/content",
  "meetingOrganizer": {
    "application": null,
    "device": null,
    "user": {
      "@odata.type": "#Microsoft.Teams.GraphSvc.teamworkUserIdentity",
      "id": "b935e675-5e67-48b9-8d45-249d5f88e964",
      "displayName": null,
      "userIdentityType": "aadUser",
      "tenantId": "d6c9ce1e-4f71-8dc3-5b55-6a411ea46324"
    }
  }
}
```

### Example 2: Get callRecording content

The following example shows how to get the content of a single recording of an online meeting.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_callRecording_content",
  "sampleKeys": ["b935e675-5e67-48b9-8d45-249d5f88e964", "MSpiOTM1ZTY3NS01ZTY3LTQ4YjktOGQ0NS0yNDlkNWY4OGU5NjQqMCoqMTk6bWVldGluZ19ZbU0zTnpJNU9USXRZakU0WlMwME1tUTNMVGt6TVRRdFkyWm1PRGRtWmpsaVptRTNAdGhyZWFkLnYy", "7e31db25-bc6e-4fd8-96c7-e01264e9b6fc"]
}
-->
``` http
GET https://graph.microsoft.com/beta/users/b935e675-5e67-48b9-8d45-249d5f88e964/onlineMeetings/MSpiOTM1ZTY3NS01ZTY3LTQ4YjktOGQ0NS0yNDlkNWY4OGU5NjQqMCoqMTk6bWVldGluZ19ZbU0zTnpJNU9USXRZakU0WlMwME1tUTNMVGt6TVRRdFkyWm1PRGRtWmpsaVptRTNAdGhyZWFkLnYy/recordings/7e31db25-bc6e-4fd8-96c7-e01264e9b6fc/content
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-callrecording-content-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-callrecording-content-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-callrecording-content-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-callrecording-content-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-callrecording-content-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-callrecording-content-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-callrecording-content-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-callrecording-content-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example contains bytes for the recording in the response body. The `content-type` header specifies the type of the recording content. The negative offsets indicate that the recording began while the conversation was ongoing.

> **Note:** The response object shown here might be shortened for readability.
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
