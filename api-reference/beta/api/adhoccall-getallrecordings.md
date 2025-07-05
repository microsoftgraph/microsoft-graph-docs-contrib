---
title: "adhocCall: getAllRecordings"
description: "Get recordings for all ad hoc calls that a user participated in."
author: "kanchm"
ms.date: 07/04/2025
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# adhocCall: getAllRecordings

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get all recordings from [ad hoc calls](../resources/adhoccall.md) instances for which the specified user is a participant. This API currently supports one-to-one, group and PSTN calls.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "adhoccall-getallrecordings-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/adhoccall-getallrecordings-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /users/{usersId}/adhocCalls/(userId='{userId}',startDateTime={startDateTime},endDateTime={endDateTime})
```
>**Note:** The request fails if you don't pass the function parameter **userId**.

## Function parameters
In the request URL, provide the following query parameters with values.

|Parameter|Type|Description|
|:---|:---|:---|
|endDateTime|DateTimeOffset|Optional parameter to filter for artifacts created before the given end date. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|startDateTime|DateTimeOffset|Optional parameter to filter for artifacts created after the given start date. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|userId|String|The user identifier of the participant to filter for artifacts for calls for the given user identifier.|

## Optional query parameters

This method supports the following OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

| Name           | Description                                                                       |
| :------------- | :-------------------------------------------------------------------------------- |
|  `$top`        | Allows the caller to specify the max number of objects per page as the page size. |

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Response

If successful, this function returns a `200 OK` response code and a [callRecording](../resources/callrecording.md) collection in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "adhoccallthis.getallrecordings"
}
-->
``` http
GET https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5/adhocCalls/getAllRecordings(userId='parameterValue',startDateTime=String (timestamp),endDateTime=String (timestamp))
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(Microsoft.Teams.GraphSvc.callRecording)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(callRecording)",
    "@odata.nextLink": "https://graph.microsoft.com/beta/users({userId})/adhocCalls/getAllRecordings(userId='8b081ef6-4792-4def-b2c9-c363a1bf41d5', startDateTime=2024-01-15T00:00:00Z, endDateTime=2024-01-31T00:00:00Z)?skipToken={skipToken}",
    "@odata.count": 1,
    "value": [
        {
            "@odata.type": "#microsoft.graph.callRecording",
            "id": "TBD",
            "callId": "af630fe0-04d3-4559-8cf9-91fe45e36296",
            "createdDateTime": "2023-12-02T06:59:34.7411768Z",
            "recordingContentUrl": "https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5/adhocCalls/af630fe0-04d3-4559-8cf9-91fe45e36296/recordings/{recordingId}/content",
            "meetingOrganizer": {
                "application": null,
                "device": null,
                "user": {
                    "@odata.type": "#microsoft.graph.teamworkUserIdentity",
                    "id": "8b081ef6-4792-4def-b2c9-c363a1bf41d5",
                    "displayName": null,
                    "userIdentityType": "aadUser",
                    "tenantId": "a1d286db-6149-4b3d-95ad-23c9e1bf6853"
                }
            }
        }
    ]
}
```

## Related content

- [Microsoft Graph service-specific throttling limits](/graph/throttling-limits#microsoft-teams-service-limits)
- [Delta query overview](/graph/delta-query-overview)
- [Export content with the Microsoft Teams export APIs](/microsoftteams/export-teams-content)
