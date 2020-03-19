---
title: "Update timeoffrequest"
description: "Update the properties of timeoffrequest object."
localization_priority: Normal
author: "akumar39"
ms.prod: "microsoft-teams"
doc_type: "apiPageType"
---

# Update timeoffrequest

Namespace: microsoft.graph

Update the properties of a [timeoffrequest](../resources/timeoffrequest.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
|Delegated (work or school account) | Schedule.ReadWrite.All, Group.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |s
|Application | Schedule.ReadWrite.All |

> **Note**: This API supports admin permissions. Global admins can access groups that they are not a member of.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PATCH /teams/{id}/schedule/timeOffRequests
```

## Request headers

| Name       | Description|
|:-----------|:-----------|
| Authorization | Bearer {token}. Required. |
| Content-type | application/json. Required. |

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|endDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'|
|startDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'|
|timeOffReasonId|String|Reason for the requested time off.|

## Response

If successful, this method returns a `200 OK` response code and an updated [timeOffRequest](../resources/timeoffrequest.md) object in the response body.

## Examples

### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "update_timeoffrequest"
}-->

```http
PATCH https://graph.microsoft.com/v1.0/teams/{id}/schedule/timeOffRequests
Content-type: application/json

{
  "startDateTime": "datetime-value",
  "endDateTime": "datetime-value",
  "timeOffReasonId": "timeOffReasonId-value"
}
```
---


### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.timeOffRequest"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "startDateTime": "datetime-value",
  "endDateTime": "datetime-value",
  "timeOffReasonId": "timeOffReasonId-value"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update timeoffrequest",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
