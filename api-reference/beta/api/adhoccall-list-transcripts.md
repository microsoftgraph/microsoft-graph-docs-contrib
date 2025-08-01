---
title: "List transcripts"
description: "Retrieve the list of transcripts associated with a Microsoft Teams ad hoc call."
author: "v-sukanyadas"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 08/01/2025
---

# List transcripts

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the list of [callTranscript](../resources/calltranscript.md) objects associated with an [adhocCall](adhoccall.md). This API supports the retrieval of call recordings from unscheduled PSTN, VoIP and group calls . However, private channel meetings are supported, but with limitations.

> [!NOTE]
> * This API works differently in one or more national clouds. For details, see [Microsoft Teams API implementation differences in national clouds](/graph/teamwork-national-cloud-differences).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "ignored", "name": "adhocCall_list_transcripts" } -->
|Permission type|Least privileged permissions|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|CallTranscripts.Read.All|Not available.|
|Delegated (personal Microsoft account)|Not supported.|Not supported.|
|Application|CallTranscripts.Read.All, CallTranscripts.Read.Chat|Not available.|

> **Note:** The application permissions `CallTranscripts.Read.Chat` will use [resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent). The `CallTranscripts.Read.Chat` permission applies only to unscheduled PSTN, VoIP and group calls

To use application permissions for this API, tenant administrators must create an application access policy and grant it to a user. It authorizes the app configured in the policy to fetch ad hoc calls or related artifacts on behalf of that user (with the user ID specified in the request path). For more information, see [Allow applications to access ad hoc calls on behalf of a user](/graph/cloud-communication-online-meeting-application-access-policy).

> [!NOTE]
>
> * This API is available for a meeting that hasn't expired. For more information, see [Limits and specifications for Microsoft Teams](/microsoftteams/limits-specifications-teams#meeting-expiration).
> * This API is also available to users who are part of the meeting calendar invite, which applies to both private chat meetings and channel meetings.

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /me/adhocCalls/{call-id}/transcripts
GET /users/{user-id}/adhocCalls/{call-id}/transcripts
```

## Optional query parameters

This method supports the `$select`, `$filter`, and `$top`  [OData query parameters](/graph/query-parameters) to customize the response.

## Request headers

| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [callTranscript](../resources/callTranscript.md) objects in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_callTranscripts",
  "sampleKeys": ["ba321e0d-79ee-478d-8e28-85a19507f456", "MSo1N2Y5ZGFjYy03MWJmLTQ3NDMtYjQxMy01M2EdFGkdRWHJlQ"]
}
-->
``` http
GET https://graph.microsoft.com/beta/users/ba321e0d-79ee-478d-8e28-85a19507f456/onlineMeetings/MSo1N2Y5ZGFjYy03MWJmLTQ3NDMtYjQxMy01M2EdFGkdRWHJlQ/transcripts
```

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "list_adhoccall_transcripts",
  "sampleKeys": ["af630fe0-04d3-4559-8cf9-91fe45e36296"]
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/me/adhocCalls/af630fe0-04d3-4559-8cf9-91fe45e36296/transcripts
```

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.callTranscript)"
} -->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#me/adhocCalls('af630fe0-04d3-4559-8cf9-91fe45e36296')/transcripts",
    "@odata.count": 1,
    "value": [
        {
            "id": "MSMjMCMjNzU3ODc2ZDYtOTcwMi00MDhkLWFkNDItOTE2ZDNmZjkwZGY4",
            "callId": "af630fe0-04d3-4559-8cf9-91fe45e36296",
            "createdDateTime": "2023-10-10T08:00:00.9038309Z",
            "endDateTime": "2023-10-10T08:15:25.2346000Z",
            "contentCorrelationId": "bc842d7a-2f6e-4b18-a1c7-73ef91d5c8e3",
            "transcriptContentUrl": "https://graph.microsoft.com/beta/$metadata#me/adhocCalls('af630fe0-04d3-4559-8cf9-91fe45e36296')/transcripts('MSMjMCMjNzU3ODc2ZDYtOTcwMi00MDhkLWFkNDItOTE2ZDNmZjkwZGY4')/content"
        }
    ]
}
```