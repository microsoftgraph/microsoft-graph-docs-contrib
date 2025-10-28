---
title: "adhocCall: getAllTranscripts"
description: "Get transcripts from all ad hoc calls initiated by a user"
author: "sukanya"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# adhocCall: getAllTranscripts

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get all transcripts from [adhoc call](adhoccall.md) instances initiated by a specific user.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "adhoccall-getalltranscripts-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/adhoccall-getalltranscripts-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /communications/adhocCalls/getAllTranscripts
GET /users/{usersId}/adhocCalls/getAllTranscripts
```

## Function parameters

In the request URL, provide the following query parameters with values.

|Parameter|Type|Description|
|:---|:---|:---|
|userId|String|The user identifier of the meeting organizer to filter for artifacts for meetings organized by the given user identifier.|
|startDateTime|DateTimeOffset|Optional parameter to filter for artifacts created after the given start date. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2025 is `2025-01-01T00:00:00Z`.|
|endDateTime|DateTimeOffset|Optional parameter to filter for artifacts created before the given end date. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2025 is `2025-01-01T00:00:00Z`.|

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [callTranscript](../resources/calltranscript.md) collection in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "adhoccallthis.getalltranscripts"
}
-->
``` http
GET https://graph.microsoft.com/beta/communications/adhocCalls/getAllTranscripts(userId='parameterValue',startDateTime=String (timestamp),endDateTime=String (timestamp))
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(Microsoft.Teams.GraphSvc.callTranscript)"
}
-->
{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('d4220f1b-4c12-436c-8a03-dc3e362f9d54')/adhocCalls",
  "@odata.count": 2,
  value: [
    {
      id: "ktVizJ7GAAAAoPCPlATZWzE5OmNkYWQ5MTQ4LWQ5MjYtNDczMS04NjE4LTM3MWU1ODdkZGVkMF9kNDIyMGYxYi00YzEyLTQzNmMtOGEwMy1kYzNlMzYyZjlkNTRAdW5xLmdibC5zcGFjZXOg2TxmYjdlNWMxZS04YWI4LTQ2NDctOTdhMS03Mzk5MDhkNDE3YjMtMTc1OTgyMTkyMS1UcmFuc2NyaXB0VjI=",
      meetingId: null,
      callId: "fb7e5c1e-8ab8-4647-97a1-739908d417b3",
      contentCorrelationId: "7cc3ae2a-0aa9-4e47-9d85-e98e607d1af2-20251007_072521",
      transcriptContentUrl: "https://graph.microsoft.com/beta/users/d4220f1b-4c12-436c-8a03-dc3e362f9d54/adhocCalls/fb7e5c1e-8ab8-4647-97a1-739908d417b3/transcripts/ktVizJ7GAAAAoPCPlATZWzE5OmNkYWQ5MTQ4LWQ5MjYtNDczMS04NjE4LTM3MWU1ODdkZGVkMF9kNDIyMGYxYi00YzEyLTQzNmMtOGEwMy1kYzNlMzYyZjlkNTRAdW5xLmdibC5zcGFjZXOg2TxmYjdlNWMxZS04YWI4LTQ2NDctOTdhMS03Mzk5MDhkNDE3YjMtMTc1OTgyMTkyMS1UcmFuc2NyaXB0VjI=/content",
      createdDateTime: "2025-10-07T07:25:21.9730833Z",
      endDateTime: "2025-10-07T07:25:52.4130833Z",
      meetingOrganizer: {
        application: null,
        device: null,
        user: {
          "@odata.type": "#microsoft.graph.teamworkUserIdentity",
          id: "d4220f1b-4c12-436c-8a03-dc3e362f9d54",
          displayName: null,
          userIdentityType: "aadUser",
          tenantId: "2432b57b-0abd-43db-aa7b-16eadd115d34",
        },
      },
    },
    {
      id: "ktVizJ7GAAAAoPCPlATZWzE5OmNkYWQ5MTQ4LWQ5MjYtNDczMS04NjE4LTM3MWU1ODdkZGVkMF9kNDIyMGYxYi00YzEyLTQzNmMtOGEwMy1kYzNlMzYyZjlkNTRAdW5xLmdibC5zcGFjZXOg2TwwNTQ3ZDUzOS0wNTExLTRiZDEtODRjZi01YTA3M2ZhYjcxMmQtMTc1OTgxODY3My1UcmFuc2NyaXB0VjI=",
      meetingId: null,
      callId: "0547d539-0511-4bd1-84cf-5a073fab712d",
      contentCorrelationId: "94c3eb48-4271-4b60-b7b7-121b9d798eb3-20251007_063113",
      transcriptContentUrl: "https://graph.microsoft.com/beta/users/d4220f1b-4c12-436c-8a03-dc3e362f9d54/adhocCalls/0547d539-0511-4bd1-84cf-5a073fab712d/transcripts/ktVizJ7GAAAAoPCPlATZWzE5OmNkYWQ5MTQ4LWQ5MjYtNDczMS04NjE4LTM3MWU1ODdkZGVkMF9kNDIyMGYxYi00YzEyLTQzNmMtOGEwMy1kYzNlMzYyZjlkNTRAdW5xLmdibC5zcGFjZXOg2TwwNTQ3ZDUzOS0wNTExLTRiZDEtODRjZi01YTA3M2ZhYjcxMmQtMTc1OTgxODY3My1UcmFuc2NyaXB0VjI=/content",
      createdDateTime: "2025-10-07T06:31:13.1759028Z",
      endDateTime: "2025-10-07T06:31:26.5759028Z",
      meetingOrganizer: {
        application: null,
        device: null,
        user: {
          "@odata.type": "#microsoft.graph.teamworkUserIdentity",
          id: "d4220f1b-4c12-436c-8a03-dc3e362f9d54",
          displayName: null,
          userIdentityType: "aadUser",
          tenantId: "2432b57b-0abd-43db-aa7b-16eadd115d34",
        },
      },
    },
  ],
}
{
  date: "Tue, 07 Oct 2025 12:21:07 GMT",
  "content-type": "application/json;odata.metadata=minimal;odata.streaming=true;IEEE754Compatible=false;charset=utf-8",
  "transfer-encoding": "chunked",
  connection: "keep-alive",
  vary: "Accept-Encoding",
  "strict-transport-security": "max-age=31536000",
  "request-id": "655af018-0db2-4b10-b33f-35e2fad0f6d7",
  "client-request-id": "655af018-0db2-4b10-b33f-35e2fad0f6d7",
  "x-ms-ags-diagnostic": "{\"ServerInfo\":{\"DataCenter\":\"Central India\",\"Slice\":\"E\",\"Ring\":\"3\",\"ScaleUnit\":\"001\",\"RoleInstance\":\"PN3PEPF00000712\"}}",
  "odata-version": "4.0",
  "x-cache": "CONFIG_NOCACHE",
}