---
title: "List assignedRoles"
description: "Get a list of all the roles assigned to a user in Viva Engage."
author: "richafnu"
ms.date: 09/22/2025
ms.localizationpriority: medium
ms.subservice: "viva-engage"
doc_type: apiPageType
---

# List assignedRoles

Namespace: microsoft.graph

Get a list of all the [roles](../resources/engagementrole.md) assigned to a user in Viva Engage.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).
<!-- {
  "blockType": "permissions",
  "name": "employeeexperienceuser-list-assignedroles-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/employeeexperienceuser-list-assignedroles-permissions.md)]

[!INCLUDE [me-apis-sign-in-note](../includes/me-apis-sign-in-note.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /users/{userId}/employeeExperience/assignedRoles
GET /me/employeeExperience/assignedRoles
```
>**Note:** The `{userId}` represents the office user ID.

## Optional query parameters

This method supports the `$filter` (`eq`), `$select`, and `$count` OData query parameters. For general information, see [OData query parameters](/graph/query-parameters). Only the **displayName** and **id** properties support the `$filter` parameter.

The following table shows how you can use OData query parameters with this API. 

| Description | HTTP request |
|:---|:---|
| Filter assigned roles by display name | `GET /users/{userId}/employeeExperience/assignedRoles?$filter=displayName eq 'Corporate Communicator'` |
| Get only the **id** property for a list of assigned roles | `GET /users/{userId}/employeeExperience/assignedRoles?$select=id` |
| Include the total count of assigned roles       | `GET /users/{userId}/employeeExperience/assignedRoles?$count=true` |

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [engagementRole](../resources/engagementrole.md) objects in the response body.

## Examples

### Example 1: Get a list of all the roles assigned to a signed-in user in Viva Engage

The following example shows how to get a list of all the roles assigned to a signed-in user in Viva Engage.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_assignedrole_me"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/me/employeeExperience/assignedRoles
```

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.engagementRole)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#me/employeeExperience/assignedRoles",
  "value": [
    {
        "id": "ec791927-d09f-4f91-bd76-d3b05e1c1a31",
        "displayName": "Network Admin"
    },
    {
        "id": "b0de8e6d-4457-4722-bdc5-5a32a09bf064",
        "displayName": "Verified Admin"
    },
    {
        "id": "77aa7d76-bdf6-4cc0-80e2-fd1ac5a28471",
        "displayName": "Corporate Communicator"
    }
  ]
}
```

### Example 2: Get a list of all the roles assigned to a user in Viva Engage

The following example shows how to get a list of all the roles assigned to a user in Viva Engage.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_assignedrole_user"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/users/e8d9f6a2-1c34-4b7a-9f11-2a4d8b7c9e01/employeeExperience/assignedRoles
```

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.engagementRole)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users/e8d9f6a2-1c34-4b7a-9f11-2a4d8b7c9e01/employeeExperience/assignedRoles",
  "value": [
    {
        "id": "ec791927-d09f-4f91-bd76-d3b05e1c1a31",
        "displayName": "Network Admin"
    },
    {
        "id": "b0de8e6d-4457-4722-bdc5-5a32a09bf064",
        "displayName": "Verified Admin"
    },
    {
        "id": "77aa7d76-bdf6-4cc0-80e2-fd1ac5a28471",
        "displayName": "Corporate Communicator"
    }
  ]
}
```
