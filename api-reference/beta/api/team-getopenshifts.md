---
title: "team: getOpenShifts"
description: "Get a list of openShift objects from across all schedules the user has access to."
author: "raulfernandes"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# team: getOpenShifts
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [openShift](../resources/openshift.md) objects from across all schedules a user has access to.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "team-getopenshifts-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/team-getopenshifts-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/joinedTeams/getOpenShifts
GET /users/{id | user-principal-name}/joinedTeams/getOpenShifts
```

## Optional query parameters

This method supports the `$filter` [OData query parameter](/graph/query-parameters) to help customize the response.

> [!NOTE]
> The `$filter` parameter doesn't support the use of the same property more than once in a query. For example, the following query doesn't work: `sharedOpenShift/startDateTime ge 2024-05-09T00:00:00Z and sharedOpenShift/startDateTime le 2024-05-09T23:59:59Z`.
> However, the following query works: `sharedOpenShift/startDateTime ge 2024-05-09T00:00:00Z and sharedOpenShift/endDateTime le 2024-05-09T23:59:59Z`.


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
| MS-APP-ACTS-AS  | A user ID (GUID). Required only if the authorization token is an application token; otherwise, optional. |

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [openShift](../resources/openshift.md) objects in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "teamthis.getopenshifts"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/me/joinedTeams/getOpenShifts
```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.openShift)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.openShift",
      "id": "String (identifier)",
      "createdBy": {
        "@odata.type": "microsoft.graph.identitySet"
      },
      "createdDateTime": "String (timestamp)",
      "lastModifiedDateTime": "String (timestamp)",
      "lastModifiedBy": {
        "@odata.type": "microsoft.graph.identitySet"
      },
      "sharedOpenShift": {
        "@odata.type": "microsoft.graph.openShiftItem"
      },
      "draftOpenShift": {
        "@odata.type": "microsoft.graph.openShiftItem"
      },
      "schedulingGroupId": "String",
      "isStagedForDeletion": "Boolean",
      "schedulingGroupName": "String",
      "teamId": "String",
      "teamName": "String"
    }
  ]
}
```

