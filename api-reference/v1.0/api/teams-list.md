---
title: "List teams"
description: "List all teams in an organization."
author: "pruthvi0105"
ms.localizationpriority: high
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# List teams

Namespace: microsoft.graph


List all [teams](../resources/team.md) in an organization.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Team.ReadBasic.All, TeamSettings.Read.All, TeamSettings.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Team.ReadBasic.All, TeamSettings.Read.All, TeamSettings.ReadWrite.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /teams
```

## Optional query parameters

This method supports the `$filter`, `$select`, `$top`, `$skiptoken`, and `$count` [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required. |
| Accept  | application/json|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and collection of [team](../resources/team.md) objects in the response body.

> [!Note]
> Currently, this API call returns only the **id**, **displayName**, and **description** properties of a [team](../resources/team.md). To get all properties, use the [Get team](../api/team-get.md) operation. 

## Examples

### Example 1: Get a list of teams

#### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "get_teams_in_org"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/teams
```

---

#### Response
The following is an example of a response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.team",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "id": "172b0cce-e65d-44ce-9a49-91d9f2e8493a",
      "displayName": "Contoso Team",
      "description": "This is a Contoso team, used to showcase the range of properties supported by this API"
    },
    {
      "id": "890972b0cce-e65d-44ce-9a49-568hhsd7n",
      "displayName": "Contoso General Team",
      "description": "This is a general Contoso team"
    },
    {
      "id": "98678abcce0-e65d-44ce-9a49-9980bj8kl0e",
      "displayName": "Contoso API Team",
      "description": "This is Contoso API team"
    }
  ]
}
```

### Example 2: Use $filter and $top to get two teams with a display name that starts with 'A'

#### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "get_teams_filter_top"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/teams?$filter=startswith(displayName, 'A')&$top=2
```

---

#### Response

The following is an example of a response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.team",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "id": "172b0cce-e65d-44ce-9a49-91d9f2e8493a",
      "displayName": "A Contoso Team",
      "description": "This is a Contoso team, used to showcase the range of properties supported by this API"
    },
    {
      "id": "890972b0cce-e65d-44ce-9a49-568hhsd7n",
      "displayName": "A Contoso Notification Team",
      "description": "This is a notification Contoso team"
    }
  ]
}
```

### Example 3: Use $filter and $select to get id and description for team with displayName equals "A Contoso Team"

#### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "get_teams_filter_select"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/teams?$filter=displayName eq 'A Contoso Team'&$select=id,description
```

---

#### Response
The following is an example of a response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.team",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "id": "172b0cce-e65d-44ce-9a49-91d9f2e8493a",
      "description": "This is a Contoso team, used to showcase the range of properties supported by this API"
    }
  ]
}
```


## See also
- [Get team](../api/team-get.md)
