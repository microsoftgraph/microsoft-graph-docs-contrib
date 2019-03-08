---
title: "Shares a time-range of the schedule with the schedule members"
description: "Shares a time-range of the schedule with the schedule members."
author: "zivk"
localization_priority: Priority
ms.prod: "microsoft-teams"
---

# Shares a time-range of the schedule with the schedule members

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Shares a time-range of the  [schedule](../resources/schedule.md) with the schedule members.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Group.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Not supported. |

> **Note**: This API supports admin permissions. Global admins can access groups that they are not a member of.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /teams/{teamId}/schedule/share
```

## Request headers

| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type  | application/json  |

## Request body
|Name                   |Type           |Req.|Description                                                                                                                                       |
|-----------------------|-------------------|:--:|----------------------------------------------------------------------------------------------------------------------------------------------|
| notifyTeam	        |`bool`             | ✓  | Should the entire team get a visible notification of this action or only employees that have a shift assigned to them that got shared?       |
| startDateTime         |`DateTimeOffset`   | ✓  | The start time to share shifts on the schedule from.                                                                                         |
| endDateTime           |`DateTimeOffset`   | ✓  | The end time to share shifts on the schedule until.                                                                                          |

## Response

If successful, this method returns `204 No Content` response code. It does not return anything in the response body.

## Example

#### Request

The following is an example of the request.
<!-- {
  "blockType": "ignored",
  "name": "schedule-post-share"
}-->
```http
POST https://graph.microsoft.com/beta/teams/{teamId}/schedule/share
Content-type: application/json

{
  "notifyTeam": true,
  "startDateTime": "2018-10-08T01:17:32.754Z",
  "endDateTime": "2018-10-08T01:17:32.754Z"
}
```

#### Response

The following is an example of the response. 

<!-- {
  "blockType": "ignored",
  "truncated": true,
  "@odata.type": "microsoft.graph.None"
} -->

```http
HTTP/1.1 204 No content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Shares a time-range of the schedule with the schedule members",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/api/schedule-post-share.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
