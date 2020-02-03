---
title: "List appRoleAssignments"
description: "Retrieve a list of app role assignments objects."
localization_priority: Priority
doc_type: apiPageType
ms.prod: "microsoft-identity-platform"
author: "davidmu1"
---

# List appRoleAssignments

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of [appRoleAssignment](../resources/approleassignment.md) which a user, group or service principal has been granted.

Query the `appRoleAssignments` relationship of a user, group or service principal to retrieve the app roles where the assigned principal is the user, group or service principal in question. Query the `appRoleAssignedTo` relationship of a service principal to retrieve the app roles of the service principal in question which have been granted to other users, groups or service principals have been assigned.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Directory.Read.All, AppRoleAssignment.ReadWrite.All, Directory.ReadWrite.All, Directory.AccessAsUser.All  |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Directory.Read.All, AppRoleAssignment.ReadWrite.All, Directory.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /users/{id | userPrincipalName}/appRoleAssignments
GET /groups/{id}/appRoleAssignments
GET /servicePrincipals/{id}/appRoleAssignments
GET /servicePrincipals/{id}/appRoleAssignedTo
```

## Optional query parameters

This method supports the [OData Query Parameters](https://developer.microsoft.com/graph/docs/concepts/query_parameters) to help customize the response.

### Supported filter patterns

Below are some common query patterns for app role assignments.

#### List the app role assignments a user, group or service principal has been granted for an app

To find the app role assignments granted to a user, group or service principal (`{principal-id}`), for a given resource app (`{resource-id}`), query the `appRoleAssignments` navigation of the assigned principal and filter by `resourceId`.

```http
GET https://graph.microsoft.com/beta/users/{principal-id}/appRoleAssignments
        ?$filter=resourceId eq {resource-id}
```

```http
GET https://graph.microsoft.com/beta/groups/{principal-id}/appRoleAssignments
        ?$filter=resourceId eq {resource-id}
```

```http
GET https://graph.microsoft.com/beta/servicePrincipals/{principal-id}/appRoleAssignments
        ?$filter=resourceId eq {resource-id}
```

#### Search for assigned principal by display name

To find the app role assignments granted for an app (`{resource-id}`) and filter by the assigned users, groups and service principals' display name, query the `appRoleAssignedTo` navigation of the resource app's service principal and filter by `principalDisplayName`.

```http
GET https://graph.microsoft.com/beta/servicePrincipals/{resource-id}/appRoleAssignedTo
        ?$filter=principalDisplayName eq 'Alice'
```

```http
GET https://graph.microsoft.com/beta/servicePrincipals/{resource-id}/appRoleAssignedTo
        ?$filter=startswith(principalDisplayName, 'ali')
```

### Unsupported filter patterns

The following are some examples scenarios where service-side filtering is not currently supported, and client-side filtering may be required:

* Filtering by `resourceDisplayName` for a given user, group or service principal is not supported. Instead, retrieve all app role assignments granted to assigned principal (with the `appRoleAssignments` navigation) and filter the results on the client side. Alternatively, filter all [**servicePrincipals**](../resources/serviceprincipal.md) to find the resource app's service principal `id`, and then filter the assigned principal's `appRoleAssignments` by `resourceId`. 
* Filtering by `appRoleId` is not supported. Instead, retrieve all app role assignments for the assigned principal and resource app (`appRoleAssignments` filtered by `resourceId`), or all app role assignments for the resource app (`appRoleAssignedTo`), and then further filter the results on the client side.
* Filtering by `principalId` is not supported, but is usually not needed. Instead, query the assigned principal's app role assignments and filter by `resourceId`.

## Request headers

| Name           | Description                |
|:---------------|:---------------------------|
| Authorization  | Bearer {token}. Required.  |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and collection of [appRoleAssignment](../resources/approleassignment.md) objects in the response body.

## Example

### Request

Here is an example of the request to retrieve the app roles which have been assigned to a user.

<!-- {
  "blockType": "request",
  "name": "get_approleassignments"
}-->

```http
GET https://graph.microsoft.com/beta/users/{id}/appRoleAssignments
```

### Response

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.appRoleAssignment",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 306

{
  "value": [
    {
      "creationTimestamp": "2016-10-19T10:37:00Z",
      "id": "id-value",
      "principalDisplayName": "principalDisplayName-value",
      "principalId": "principalId-value",
      "principalType": "principalType-value",
      "resourceDisplayName": "resourceDisplayName-value"
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "List appRoleAssignments",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
