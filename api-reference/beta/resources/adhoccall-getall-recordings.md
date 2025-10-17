---
title: "adhocCall: getAllRecordings"
description: "Get recordings from all ad hoc calls initiated by a user"
author: "sukanya"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 10/16/2015
---

# adhocCall: getAllRecordings

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get all recordings from [adhoc call](adhoccall.md) instances initiated by a specific user.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

|Permission type|Least privileged permissions|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|Not Applicable.|Not Applicable.|
|Delegated (personal Microsoft account)|Not supported.|Not supported.|
|Application|CallRecordings.Read.All|CallRecordings.Read.All|

## HTTP request

<!-- { "blockType": "ignored" } -->
``` http
GET users/{userId}/adhocCalls/getAllRecordings,
startDateTime={startDateTime},endDateTime={endDateTime}
```

## Function parameters
In the request URL, provide the following query parameters with values.

|Parameter|Type|Description|
|:---|:---|:---|
|endDateTime|DateTimeOffset|Optional parameter to filter for artifacts created before the given end date. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2025 is `2025-01-01T00:00:00Z`.|
|UserId|String|The user identifier of the meeting organizer to filter for artifacts for meetings organized by the given user identifier.|
|startDateTime|DateTimeOffset|Optional parameter to filter for artifacts created after the given start date. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2025 is `2025-01-01T00:00:00Z`.|

## Optional query parameters

This method supports the following OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

| Name           | Description                                                                       |
| :------------- | :-------------------------------------------------------------------------------- |
|  `$top`        | Allows the caller to specify the max number of objects per page as the page size. |

## Request headers

| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Response

If successful, this method returns a `200 OK` response code and a collection of [callRecording](../resources/callrecording.md) objects in the response body.

## Examples

### Example 1: Get all recordings

The following example shows a request to get all the recordings of an ad hoc call initiator.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["d4220f1b-4c12-436c-8a03-dc3e362f9d54"],
  "name": "get_allrecordings"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users/d4220f1b-4c12-436c-8a03-dc3e362f9d54/adhocCalls/getAllRecordings
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-allrecordings-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]
---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "name": "get_allrecordings",
  "@odata.type": "Collection(microsoft.graph.callRecording)"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
```

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('d4220f1b-4c12-436c-8a03-dc3e362f9d54')/adhocCalls",
  "@odata.count": 2,
  value: [
    {
      id:"ktVizJvGAAAAnfCMlATZWzE5OmNkYWQ5MTQ4LWQ5MjYtNDczMS04NjE4LTM3MWU1ODdkZGVkMF9kNDIyMGYxYi00YzEyLTQzNmMtOGEwMy1kYzNlMzYyZjlkNTRAdW5xLmdibC5zcGFjZXOg2TlmYjdlNWMxZS04YWI4LTQ2NDctOTdhMS03Mzk5MDhkNDE3YjMtMTc1OTgyMTkyMS1SZWNvcmRpbmc=",
      callId: "fb7e5c1e-8ab8-4647-97a1-739908d417b3",
      contentCorrelationId: "7cc3ae2a-0aa9-4e47-9d85-e98e607d1af2-20251007_072521",
      createdDateTime: "2025-10-07T07:25:21.9730833Z",
      endDateTime: "2025-10-07T07:25:52.4130833Z",
      recordingContentUrl: "https://graph.microsoft.com/beta/users/d4220f1b-4c12-436c-8a03-dc3e362f9d54/adhocCalls/fb7e5c1e-8ab8-4647-97a1-739908d417b3/recordings/ktVizJvGAAAAnfCMlATZWzE5OmNkYWQ5MTQ4LWQ5MjYtNDczMS04NjE4LTM3MWU1ODdkZGVkMF9kNDIyMGYxYi00YzEyLTQzNmMtOGEwMy1kYzNlMzYyZjlkNTRAdW5xLmdibC5zcGFjZXOg2TlmYjdlNWMxZS04YWI4LTQ2NDctOTdhMS03Mzk5MDhkNDE3YjMtMTc1OTgyMTkyMS1SZWNvcmRpbmc=/content",
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
      id: "ktVizJvGAAAAnfCMlATZWzE5OmNkYWQ5MTQ4LWQ5MjYtNDczMS04NjE4LTM3MWU1ODdkZGVkMF9kNDIyMGYxYi00YzEyLTQzNmMtOGEwMy1kYzNlMzYyZjlkNTRAdW5xLmdibC5zcGFjZXOg2TkwNTQ3ZDUzOS0wNTExLTRiZDEtODRjZi01YTA3M2ZhYjcxMmQtMTc1OTgxODY3My1SZWNvcmRpbmc=",
      callId: "0547d539-0511-4bd1-84cf-5a073fab712d",
      contentCorrelationId: "94c3eb48-4271-4b60-b7b7-121b9d798eb3-20251007_063113",
      createdDateTime: "2025-10-07T06:31:13.1759028Z",
      endDateTime: "2025-10-07T06:31:26.5759028Z",
      recordingContentUrl: "https://graph.microsoft.com/beta/users/d4220f1b-4c12-436c-8a03-dc3e362f9d54/adhocCalls/0547d539-0511-4bd1-84cf-5a073fab712d/recordings/ktVizJvGAAAAnfCMlATZWzE5OmNkYWQ5MTQ4LWQ5MjYtNDczMS04NjE4LTM3MWU1ODdkZGVkMF9kNDIyMGYxYi00YzEyLTQzNmMtOGEwMy1kYzNlMzYyZjlkNTRAdW5xLmdibC5zcGFjZXOg2TkwNTQ3ZDUzOS0wNTExLTRiZDEtODRjZi01YTA3M2ZhYjcxMmQtMTc1OTgxODY3My1SZWNvcmRpbmc=/content",
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
  date: "Tue, 07 Oct 2025 12:24:14 GMT",
  "content-type": "application/json;odata.metadata=minimal;odata.streaming=true;IEEE754Compatible=false;charset=utf-8",
  "transfer-encoding": "chunked",
  connection: "keep-alive",
  vary: "Accept-Encoding",
  "strict-transport-security": "max-age=31536000",
  "request-id": "808c8c75-ad4c-416c-9359-8d8427b86ce8",
  "client-request-id": "808c8c75-ad4c-416c-9359-8d8427b86ce8",
  "x-ms-ags-diagnostic": "{\"ServerInfo\":{\"DataCenter\":\"Central India\",\"Slice\":\"E\",\"Ring\":\"3\",\"ScaleUnit\":\"001\",\"RoleInstance\":\"PN3PEPF000002AA\"}}",
  "odata-version": "4.0",
  "x-cache": "CONFIG_NOCACHE",
}