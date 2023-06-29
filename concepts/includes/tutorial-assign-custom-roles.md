---
author: "FaithOmbongi"
ms.localizationpriority: high
ms.topic: include
---

<!-- markdownlint-disable MD041-->
<!-- This include file is referenced by the following files:

1. https://learn.microsoft.com/en-us/azure/active-directory/roles/custom-assign-graph

-->

# Assign custom admin roles using the Microsoft Graph API in Azure Active Directory

You can automate how you assign roles to user accounts using the Microsoft Graph API. This article covers POST, GET, and DELETE operations on **roleAssignments**.

## Prerequisites

- Azure AD Premium P1 or P2 license
- Privileged Role Administrator or Global Administrator
- Admin consent when using Graph Explorer for Microsoft Graph API

## POST operations on roleAssignment

Use the [Create unifiedRoleAssignment](/graph/api/rbacapplication-post-roleassignments) API to assign the role.

### Example 1: Create a role assignment between a user and a role definition

#### Request
<!-- {
  "blockType": "request",
  "name": "tutorial-assign-custom-roles-create-roleassignment-all-directory"
}-->
```http
POST https://graph.microsoft.com/v1.0/roleManagement/directory/roleAssignments
Content-type: application/json

{
    "@odata.type": "#microsoft.graph.unifiedRoleAssignment",
    "principalId": "ab2e1023-bddc-4038-9ac1-ad4843e7e539",
    "roleDefinitionId": "194ae4cb-b126-40b2-bd5b-6091b380977d",
    "directoryScopeId": "/"
}
```

#### Response
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 201 Created
```

### Example 2: Create a role assignment where the principal or role definition does not exist

#### Request
<!-- {
  "blockType": "request",
  "name": "tutorial-assign-custom-roles-create-404-roleassignment"
}-->
```http
POST https://graph.microsoft.com/v1.0/roleManagement/directory/roleAssignments
Content-type: application/json

{
    "@odata.type": "#microsoft.graph.unifiedRoleAssignment",
    "principalId": "2142743c-a5b3-4983-8486-4532ccba12869",
    "roleDefinitionId": "194ae4cb-b126-40b2-bd5b-6091b380977d",
    "directoryScopeId": "/"
}
```

#### Response

<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 404 Not Found
```

### Example 3: Create a role assignment on a single resource scope

#### Request
<!-- {
  "blockType": "request",
  "name": "tutorial-assign-custom-roles-create-404-roleassignment-directoryscope"
}-->
```http
POST https://graph.microsoft.com/v1.0/roleManagement/directory/roleAssignments
Content-type: application/json

{
    "@odata.type": "#microsoft.graph.unifiedRoleAssignment",
    "principalId": "2142743c-a5b3-4983-8486-4532ccba12869",
    "roleDefinitionId": "e9b2b976-1dea-4229-a078-b08abd6c4f84",
    "directoryScopeId": "/13ff0c50-18e7-4071-8b52-a6f08e17c8cc"
}
```

#### Response

<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 201 Created
```

### Example 4: Create an administrative unit scoped role assignment on a built-in role definition which is not supported

#### Request
<!-- {
  "blockType": "request",
  "name": "tutorial-assign-custom-roles-create-404-roleassignment-auscope"
}-->
```http
POST https://graph.microsoft.com/v1.0/roleManagement/directory/roleAssignments
Content-type: application/json

{
    "@odata.type": "#microsoft.graph.unifiedRoleAssignment",
    "principalId": "ab2e1023-bddc-4038-9ac1-ad4843e7e539",
    "roleDefinitionId": "29232cdf-9323-42fd-ade2-1d097af3e4de",
    "directoryScopeId": "/administrativeUnits/13ff0c50-18e7-4071-8b52-a6f08e17c8cc"
}
```


#### Response

<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 400 Bad Request
{
    "odata.error":
    {
        "code":"Request_BadRequest",
        "message":
        {
            "message":"The given built-in role is not supported to be assigned to a single resource scope."
        }
    }
}
```

Only a subset of built-in roles are enabled for Administrative Unit scoping. For the list of built-in roles supported over an administrative unit, see [Assign Azure AD roles with administrative unit scope](/azure/active-directory/roles/admin-units-assign-roles).

## GET operations on roleAssignment

Use the [List unifiedRoleAssignments](/graph/api/rbacapplication-list-roleassignments) API to get the role assignment.

### Example 5: Get role assignments for a given principal

#### Request
<!-- {
  "blockType": "request",
  "name": "tutorial-assign-custom-roles-filter-principalid"
}-->
```http
GET https://graph.microsoft.com/v1.0/roleManagement/directory/roleAssignments?$filter=principalId+eq+'<object-id-of-principal>'
```


#### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.roleAssignment"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
"value":[
            { 
                "id": "mhxJMipY4UanIzy2yE-r7JIiSDKQoTVJrLE9etXyrY0-1"
                "principalId": "ab2e1023-bddc-4038-9ac1-ad4843e7e539",
                "roleDefinitionId": "10dae51f-b6af-4016-8d66-8c2a99b929b3",
                "directoryScopeId": "/"  
            } ,
            {
                "id": "CtRxNqwabEKgwaOCHr2CGJIiSDKQoTVJrLE9etXyrY0-1"
                "principalId": "ab2e1023-bddc-4038-9ac1-ad4843e7e539",
                "roleDefinitionId": "fe930be7-5e62-47db-91af-98c3a49a38b1",
                "directoryScopeId": "/"
            }
        ]
}
```

### Example 6: Get role assignments for a given role definition

#### Request
<!-- {
  "blockType": "request",
  "name": "tutorial-assign-custom-roles-filter-roledefinitionid"
}-->
```http
GET https://graph.microsoft.com/v1.0/roleManagement/directory/roleAssignments?$filter=roleDefinitionId+eq+'<object-id-or-template-id-of-role-definition>'
```

#### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.roleAssignment"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
"value":[
            {
                "id": "CtRxNqwabEKgwaOCHr2CGJIiSDKQoTVJrLE9etXyrY0-1"
                "principalId": "ab2e1023-bddc-4038-9ac1-ad4843e7e539",
                "roleDefinitionId": "fe930be7-5e62-47db-91af-98c3a49a38b1",
                "directoryScopeId": "/"
            }
     ]
}
```

### Example 7: Get a role assignment by ID

#### Request
<!-- {
  "blockType": "request",
  "name": "tutorial-assign-custom-roles-get-roleassignment"
}-->
```http
GET https://graph.microsoft.com/v1.0/roleManagement/directory/roleAssignments/lAPpYvVpN0KRkAEhdxReEJC2sEqbR_9Hr48lds9SGHI-1
```

#### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.roleAssignment"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{ 
    "id": "mhxJMipY4UanIzy2yE-r7JIiSDKQoTVJrLE9etXyrY0-1",
    "principalId": "ab2e1023-bddc-4038-9ac1-ad4843e7e539",
    "roleDefinitionId": "10dae51f-b6af-4016-8d66-8c2a99b929b3",
    "directoryScopeId": "/"
}
```

### Example 8: Get role assignments for a given scope

#### Request
<!-- {
  "blockType": "request",
  "name": "tutorial-assign-custom-roles-get-roleassignment-filter-directoryscope"
}-->
```http
GET https://graph.microsoft.com/v1.0/roleManagement/directory/roleAssignments?$filter=directoryScopeId+eq+'/d23998b1-8853-4c87-b95f-be97d6c6b610'
```

#### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.roleAssignment"
} -->
```http
HTTP/1.1 200 OK
{
"value":[
            { 
                "id": "mhxJMipY4UanIzy2yE-r7JIiSDKQoTVJrLE9etXyrY0-1"
                "principalId": "ab2e1023-bddc-4038-9ac1-ad4843e7e539",
                "roleDefinitionId": "10dae51f-b6af-4016-8d66-8c2a99b929b3",
                "directoryScopeId": "/d23998b1-8853-4c87-b95f-be97d6c6b610"
            } ,
            {
                "id": "CtRxNqwabEKgwaOCHr2CGJIiSDKQoTVJrLE9etXyrY0-1"
                "principalId": "ab2e1023-bddc-4038-9ac1-ad4843e7e539",
                "roleDefinitionId": "3671d40a-1aac-426c-a0c1-a3821ebd8218",
                "directoryScopeId": "/d23998b1-8853-4c87-b95f-be97d6c6b610"
            }
        ]
}
```

## DELETE operations on roleAssignment

Use the [Delete unifiedRoleAssignment](/graph/api/unifiedroleassignment-delete) API to delete the role assignment.

### Example 9: Delete a role assignment between a user and a role definition


#### Request
<!-- {
  "blockType": "request",
  "name": "tutorial-assign-custom-roles-delete-roleassignment"
}-->
```http
DELETE https://graph.microsoft.com/v1.0/roleManagement/directory/roleAssignments/lAPpYvVpN0KRkAEhdxReEJC2sEqbR_9Hr48lds9SGHI-1
```

#### Response
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 204 No Content
```

If you try to delete a role assignment that no longer exists, you receive a `404 Not Found` error code.

### Example 11: Delete a role assignment between self and Global Administrator role definition

#### Request
<!-- {
  "blockType": "request",
  "name": "tutorial-assign-custom-roles-delete-self-roleassignment"
}-->
```http
DELETE https://graph.microsoft.com/v1.0/roleManagement/directory/roleAssignments/lAPpYvVpN0KRkAEhdxReEJC2sEqbR_9Hr48lds9SGHI-1
```

#### Response

<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 400 Bad Request

{
    "odata.error":
    {
        "code":"Request_BadRequest",
        "message":
        {
            "lang":"en",
            "value":"Removing self from Global Administrator built-in role is not allowed"},
            "values":null
        }
    }
}
```

Users are not able to delete their own Global Administrator role to avoid a scenario where a tenant has zero Global Administrators. Removing other roles assigned to self is allowed.
