---
title: "Get the list of schedulingGroup in this schedule"
description: "Get the list of schedulingGroup in this schedule."
author: "nkramer"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# Get a schedulingGroup by id

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
Get the list of [schedulingGroups](../resources/schedulinggroup.md) in this [schedule](../resources/schedule.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Group.Read.All, Group.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Not supported. |

> **Note**: This API supports admin permissions. Global admins can access groups that they are not a member of.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /teams/{teamId}/schedule/schedulingGroups
```

## Request headers

| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type  | application/json  |

## Response

If successful, this method return a `200 OK` response code and a collection of [schedulingGroup](../resources/schedulinggroup.md) objects in the response body.

## Example

#### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "schedule-list-schedulinggroups"
}-->
```http
GET https://graph.microsoft.com/beta/teams/{teamId}/schedule/schedulingGroups
```

#### Response

The following is an example of the response. 

>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.schedulingGroup"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 401

{
  "value": [
    {
      "id": "string",
      "displayName": "string",
      "isActive": true,
      "userIds": [
        "string"
      ],
      "createdDateTime": "2018-10-04T00:58:45.340Z",
      "lastModifiedDateTime": "2018-10-04T00:58:45.340Z",
      "lastModifiedBy": {
        "user": {
          "id": "string",
          "displayName": "string"
        },
        "application": {
          "id": "string",
          "displayName": "string"
        },
        "device": {
          "id": "string",
          "displayName": "string"
        }
      }
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Get the list of schedulingGroup in this schedule",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/api/schedule-list-schedulinggroups.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
