---
title: "List service principal last used activity date"
doc_type: apiPageType
description: "Get a list servicePrincipalSignInActivity object that contains sign-in activity information for service principals in Azure Active Directory tenant."
localization_priority: Normal
author: "madansr7"
ms.prod: "microsoft-identity-platform"
---


# List servicePrincipalSignInActivities

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a [servicePrincipalSignInActivity](../resources/servicePrincipalSignInActivity.md) object the last signed in date for service principals based on various usage scenarios. A service principal could be used as a client or resource and it could be using delegated or app only auth context.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
| Delegated (work or school account) | AuditLog.Read.All, Directory.Read.All |
| Delegated (personal Microsoft account) | Not supported |
| Application | AuditLog.Read.All, Directory.Read.All | 


## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /reports/servicePrincipalSignInActivities
```

## Optional query parameters

This method supports the following OData Query Parameters to help customize the response. For details about how to use these parameters, see [OData query parameters](/graph/query_parameters).

| Name | Description | Example |
|:---- |:----------- |:------- |
| [$filter](/graph/query-parameters#filter-parameter)| Filters results (rows). | `/reports/servicePrincipalSignInActivities?$filter=appId eq 'f4d9654f-0305-4072-878c-8bf266dfe146'` |
| [$skiptoken](/graph/query-parameters#skiptoken-parameter) | Retrieves the next page of results from result sets that span multiple pages. |`/reports/servicePrincipalSignInActivities?$skiptoken=01fa0e77c60c2d3d63226c8e3294c860__1` |


## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {token} |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [servicePrincipalSignInActivity](../resources/servicePrincipalSignInActivity.md) object in the response body.

## Examples

### Example: List servicePrincipalSignInActivities 

#### Request

```http
GET https://graph.microsoft.com/beta/reports/servicePrincipalSignInActivities
```

#### Response


```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#reports/servicePrincipalSignInActivities",
  "value": [
    {
      "id": "ODNmNDUyOTYtZmI4Zi00YWFhLWEzOTktYWM1MTA4NGUwMmI3",
      "appId": "83f45296-fb8f-4aaa-a399-ac51084e02b7",
      "delegatedClientSignInActivity": {
        "lastSignInDateTime": "2021-01-01T00:00:00-8:00",
        "lastSignInRequestId": "e58c9022-c965-4ec0-960b-9c197e549f27"
      },
      "delegatedResourceSignInActivity": {
        "lastSignInDateTime": "2021-02-01T00:00:00-8:00",
        "lastSignInRequestId": "25570a7f-a031-4f20-959e-02fb7cd46a1c"
      },
      "applicationAuthenticationClientSignInActivity": {
        "lastSignInDateTime": "2021-03-01T00:00:00-8:00",
        "lastSignInRequestId": "4ea8ac36-d43d-431c-bb05-739348e18c66"
      },
      "applicationAuthenticationResourceSignInActivity": {
        "lastSignInDateTime": "2021-04-01T00:00:00-8:00",
        "lastSignInRequestId": "0f251de7-e611-41fb-bed0-6eb650757e72"
      },
      "lastSignInActivity": {
        "lastSignInDateTime": "2021-04-01T00:00:00Z",
        "lastSignInRequestId": "0f251de7-e611-41fb-bed0-6eb650757e72"
      }
    },
    {
      "id": "ZjRkOTY1NGYtMDMwNS00MDcyLTg3OGMtOGJmMjY2ZGZlMTQ2",
      "appId": "f4d9654f-0305-4072-878c-8bf266dfe146",
      "delegatedClientSignInActivity": {
        "lastSignInDateTime": "2021-01-01T00:00:00-8:00",
        "lastSignInRequestId": "7e24e4a9-ee1e-45d9-97ff-b4fb0c854b16"
      },
      "delegatedResourceSignInActivity": {
        "lastSignInDateTime": "2021-02-01T00:00:00-8:00",
        "lastSignInRequestId": "3e767241-2173-41f5-a42d-1302549950b2"
      },
      "applicationAuthenticationClientSignInActivity": {
        "lastSignInDateTime": "2021-03-01T00:00:00-8:00",
        "lastSignInRequestId": "0e0cb2c3-85b9-4bdc-8a89-3bd08a5d8548"
      },
      "applicationAuthenticationResourceSignInActivity": {
        "lastSignInDateTime": "2021-04-01T00:00:00-8:00",
        "lastSignInRequestId": "b26f6bf8-af96-4f2a-bef7-07913f634d6d"
      },
      "lastSignInActivity": {
        "lastSignInDateTime": "2021-04-01T00:00:00Z",
        "lastSignInRequestId": "b26f6bf8-af96-4f2a-bef7-07913f634d6d"
      }
    }
  ]
}
```

