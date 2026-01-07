---
title: "Assign privileged roles using PIM for Microsoft Entra roles APIs"
description: "Learn how to create a role-assignable security group and use PIM APIs to assign the security group eligibility to a Microsoft Entra admin role."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: rianakarim
ms.topic: tutorial
ms.localizationpriority: medium
ms.subservice: entra-id-governance
ms.date: 03/21/2025
ms.custom: sfi-ga-nochange
#Customer intent: As a developer integrating with Microsoft Graph, I want to learn how to integrate PIM APIs for just-in-time access to Microsoft Entra roles, so that I can strengthen my organization's Zero Trust posture by enforcing the principle of least privilege.
---

# Assign privileged roles using PIM for Microsoft Entra roles APIs

Privileged Identity Management (PIM) helps organizations reduce risks associated with privileged access by limiting when access is active, managing access scope, and providing an auditable log of privileged access. Privileged access is typically granted for administrative purposes through role-assignable groups or admin roles.

Contoso wants to delegate some admin functions by assigning Microsoft Entra roles to users through security groups. The company assigns eligibility instead of persistently active privileged roles. This method is effective because:

- Removing or adding group members also removes or adds administrators.
- Group members inherit role assignments. You can assign more roles to a group instead of assigning roles directly to individual users.
- Assigning eligibility instead of persistently active privileges enforces **just-in-time access**, granting temporary permissions to carry out privileged tasks. When a group member needs privileges, they activate their assignment temporarily. All role activations are auditable.

You can model role eligibility through groups in two ways:
- Grant a group a permanent role assignment and make principals eligible for the group. In this scenario, group members activate their group membership to get active role assignments.
- Grant a group an eligible role assignment and make the principals permanent members of the group. In this scenario, group members activate their role assignments to get privileges.

In this tutorial, you learn how to:

> [!div class="checklist"]
> * Create a role-assignable security group.
> * Make a role-assignable security group eligible for a privileged role.
> * Grant just-in-time access to a user by activating their eligible assignment.

## Prerequisites

To complete this tutorial, you need:

- A Microsoft Entra tenant with a Microsoft Entra ID P2 or Microsoft Entra ID Governance license
- An API client such as [Graph Explorer](https://aka.ms/ge) signed in with an account that has at least the Privileged Role Administrator role
- A test user enabled for MFA with access to their Microsoft Authenticator app
- Delegated permissions:
  - `Group.ReadWrite.All` to create the group
  - `RoleManagement.ReadWrite.Directory` to make the group role-assignable and to configure and manage eligible and active role assignments. This permission should be granted to all users in the tenant.

## Step 1: Create a role-assignable security group

Assign yourself as the group owner, and add yourself and the test user as members.

### Request: Create a role-assignable group

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-assignaadroles-createSecurityGroup"
}-->
```http
POST https://graph.microsoft.com/v1.0/groups
Content-type: application/json

{
    "description": "IT Helpdesk to support Contoso employees",
    "displayName": "IT Helpdesk (User)",
    "mailEnabled": false,
    "mailNickname": "userHelpdesk",
    "securityEnabled": true,
    "isAssignableToRole": true,
    "owners@odata.bind": [
        "https://graph.microsoft.com/v1.0/users/e2330663-f949-41b5-a3dc-faeb793e14c6"
    ],
    "members@odata.bind": [
        "https://graph.microsoft.com/v1.0/users/e2330663-f949-41b5-a3dc-faeb793e14c6",
        "https://graph.microsoft.com/v1.0/users/d9771b4c-06c5-491a-92cb-3aa4e225a725"
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-assignaadroles-createsecuritygroup-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-assignaadroles-createsecuritygroup-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-assignaadroles-createsecuritygroup-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-assignaadroles-createsecuritygroup-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-assignaadroles-createsecuritygroup-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-assignaadroles-createsecuritygroup-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-assignaadroles-createsecuritygroup-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.group"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#groups/$entity",
    "id": "1189bbdd-1268-4a72-8c6d-6fe77d28f2e3",
    "description": "IT Helpdesk to support Contoso employees",
    "displayName": "IT Helpdesk (User)",
    "groupTypes": [],
    "isAssignableToRole": true,
    "mailEnabled": false,
    "mailNickname": "userHelpdesk",
    "securityEnabled": true
}
```

## Step 2: Create a unifiedRoleEligibilityScheduleRequest

Assign the security group as eligible for the *User Administrator* role for one year. Scope the eligible assignment to your entire tenant. Tenant-level scoping allows the user admin to manage all users in your tenant, except higher privileged users like Global Administrators.

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-assignaadroles-unifiedRoleEligibilityScheduleRequest_create"
}-->
```http
POST https://graph.microsoft.com/v1.0/roleManagement/directory/roleEligibilityScheduleRequests
Content-type: application/json

{
    "action": "AdminAssign",
    "justification": "Assign User Admin eligibility to IT Helpdesk (User) group",
    "roleDefinitionId": "fe930be7-5e62-47db-91af-98c3a49a38b1",
    "directoryScopeId": "/",
    "principalId": "1189bbdd-1268-4a72-8c6d-6fe77d28f2e3",
    "scheduleInfo": {
        "startDateTime": "2025-03-21T11:06:00Z",
        "expiration": {
            "endDateTime": "2026-03-21T00:00:00Z",
            "type": "AfterDateTime"
        }
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-assignaadroles-unifiedroleeligibilityschedulerequest-create-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-assignaadroles-unifiedroleeligibilityschedulerequest-create-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-assignaadroles-unifiedroleeligibilityschedulerequest-create-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-assignaadroles-unifiedroleeligibilityschedulerequest-create-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-assignaadroles-unifiedroleeligibilityschedulerequest-create-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-assignaadroles-unifiedroleeligibilityschedulerequest-create-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-assignaadroles-unifiedroleeligibilityschedulerequest-create-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.unifiedRoleEligibilityScheduleRequests"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#roleManagement/directory/roleEligibilityScheduleRequests/$entity",
    "id": "12956159-24b8-4619-b9ea-8ce21f81a38f",
    "status": "Provisioned",
    "createdDateTime": "2025-03-21T11:07:23.4563591Z",
    "completedDateTime": "2025-03-21T11:07:24.8573295Z",
    "action": "adminAssign",
    "principalId": "1189bbdd-1268-4a72-8c6d-6fe77d28f2e3",
    "roleDefinitionId": "fe930be7-5e62-47db-91af-98c3a49a38b1",
    "directoryScopeId": "/",
    "targetScheduleId": "12956159-24b8-4619-b9ea-8ce21f81a38f",
    "justification": "Assign User Admin eligibility to IT Helpdesk (User) group",
    "createdBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "e2330663-f949-41b5-a3dc-faeb793e14c6"
        }
    },
    "scheduleInfo": {
        "startDateTime": "2025-03-21T11:07:24.8573295Z",
        "expiration": {
            "type": "afterDateTime",
            "endDateTime": "2026-03-21T00:00:00Z",
            "duration": null
        }
    },
    "ticketInfo": {}
}
```

## Step 3: Confirm the user's current role assignments

Group members are now eligible for the User Administrator role but can't use the role until they activate it. The following request confirms the user's existing active role assignments. The request returns an empty collection.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-assignaadroles-roleAssignments_list"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/roleManagement/directory/roleAssignments?$filter=principalId eq 'd9771b4c-06c5-491a-92cb-3aa4e225a725'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-assignaadroles-roleassignments-list-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-assignaadroles-roleassignments-list-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-assignaadroles-roleassignments-list-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-assignaadroles-roleassignments-list-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-assignaadroles-roleassignments-list-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-assignaadroles-roleassignments-list-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-assignaadroles-roleassignments-list-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Step 4: User self-activates their eligible assignment

An incident ticket `CONTOSO: Security-012345` requires invalidating all employee refresh tokens. As an IT Helpdesk member, Aline wants to resolve this task.

Start the Authenticator app on your phone and open Aline Dupuy's account.

Sign in to Graph Explorer as Aline. The following request shows how to activate your User Administrator role for five hours.

### Request

To activate a role, call the `roleAssignmentScheduleRequests` endpoint. In this request, the `UserActivate` action allows you to activate your eligible assignment.

+ For **principalId**, supply the value of your (Aline's) **id**.
+ The **roleDefinitionId** is the **id** of the role you're eligible for, in this case, the User Administrator role.
+ Enter the details of the ticket system that provides an auditable justification for activating the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-assignaadroles-roleAssignmentScheduleRequests_selfActivate"
}-->
```http
POST https://graph.microsoft.com/v1.0/roleManagement/directory/roleAssignmentScheduleRequests
Content-type: application/json

{
    "action": "SelfActivate",
    "principalId": "d9771b4c-06c5-491a-92cb-3aa4e225a725",
    "roleDefinitionId": "fe930be7-5e62-47db-91af-98c3a49a38b1",
    "directoryScopeId": "/",
    "justification": "Need to invalidate all app refresh tokens for Contoso users.",
    "scheduleInfo": {
        "startDateTime": "2025-03-21T11:46:00.000Z",
        "expiration": {
            "type": "AfterDuration",
            "duration": "PT5H"
        }
    },
    "ticketInfo": {
        "ticketNumber": "CONTOSO:Security-012345",
        "ticketSystem": "Contoso ICM"
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-assignaadroles-roleassignmentschedulerequests-selfactivate-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-assignaadroles-roleassignmentschedulerequests-selfactivate-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-assignaadroles-roleassignmentschedulerequests-selfactivate-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-assignaadroles-roleassignmentschedulerequests-selfactivate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-assignaadroles-roleassignmentschedulerequests-selfactivate-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-assignaadroles-roleassignmentschedulerequests-selfactivate-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-assignaadroles-roleassignmentschedulerequests-selfactivate-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.roleEligibilityScheduleRequests"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#roleManagement/directory/roleAssignmentScheduleRequests/$entity",
    "id": "fdde3804-2cd0-4349-b1f6-674927c94f0b",
    "status": "Provisioned",
    "createdDateTime": "2025-03-21T11:46:41.9645736Z",
    "completedDateTime": "2025-03-21T11:46:42.4165908Z",
    "action": "selfActivate",
    "principalId": "d9771b4c-06c5-491a-92cb-3aa4e225a725",
    "roleDefinitionId": "fe930be7-5e62-47db-91af-98c3a49a38b1",
    "directoryScopeId": "/",
    "isValidationOnly": false,
    "targetScheduleId": "fdde3804-2cd0-4349-b1f6-674927c94f0b",
    "justification": "Need to invalidate all app refresh tokens for Contoso users.",
    "createdBy": {
        "user": {
            "id": "d9771b4c-06c5-491a-92cb-3aa4e225a725"
        }
    },
    "scheduleInfo": {
        "startDateTime": "2025-03-21T11:46:42.4165908Z",
        "expiration": {
            "type": "afterDuration",
            "endDateTime": null,
            "duration": "PT5H"
        }
    },
    "ticketInfo": {
        "ticketNumber": "CONTOSO:Security-012345",
        "ticketSystem": "Contoso ICM"
    }
}
```

## Step 5: Confirm the role assignment

You can confirm your assignment by running the following request. The response object returns your newly activated role assignment with its status set to either `Provisioned` or `Granted`. With your new privilege, carry out any allowed actions within five hours your assignment is active for. After five hours, the active assignment expires but through your membership in the **IT Support (Users)** group, you're eligible for the User Administrator role.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-assignaadroles-roleAssignmentScheduleRequests_verify"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/roleManagement/directory/roleAssignmentScheduleRequests/filterByCurrentUser(on='principal')?$expand=roleDefinition
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-assignaadroles-roleassignmentschedulerequests-verify-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-assignaadroles-roleassignmentschedulerequests-verify-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-assignaadroles-roleassignmentschedulerequests-verify-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-assignaadroles-roleassignmentschedulerequests-verify-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-assignaadroles-roleassignmentschedulerequests-verify-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-assignaadroles-roleassignmentschedulerequests-verify-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-assignaadroles-roleassignmentschedulerequests-verify-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Step 6: Clean up resources

Sign in as the Privileged Role Administrator and delete the resources created for this tutorial.

### Revoke the role eligibility for the group

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-assignaadroles-roleEligibilityScheduleRequests_revoke"
}-->
```http
POST https://graph.microsoft.com/v1.0/roleManagement/directory/roleEligibilityScheduleRequests
Content-type: application/json

{
    "action": "AdminRemove",
    "principalId": "1189bbdd-1268-4a72-8c6d-6fe77d28f2e3",
    "roleDefinitionId": "fe930be7-5e62-47db-91af-98c3a49a38b1",
    "directoryScopeId": "/"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-assignaadroles-roleeligibilityschedulerequests-revoke-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-assignaadroles-roleeligibilityschedulerequests-revoke-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-assignaadroles-roleeligibilityschedulerequests-revoke-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-assignaadroles-roleeligibilityschedulerequests-revoke-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-assignaadroles-roleeligibilityschedulerequests-revoke-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-assignaadroles-roleeligibilityschedulerequests-revoke-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-assignaadroles-roleeligibilityschedulerequests-revoke-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.roleEligibilityScheduleRequests"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#roleManagement/directory/roleEligibilityScheduleRequests/$entity",
    "id": "749ebf39-ffa9-4f43-aaaf-58e0d41f9efc",
    "status": "Revoked",
    "createdDateTime": "2025-03-21T12:03:14.551954Z",
    "action": "adminRemove",
    "principalId": "1189bbdd-1268-4a72-8c6d-6fe77d28f2e3",
    "roleDefinitionId": "fe930be7-5e62-47db-91af-98c3a49a38b1",
    "directoryScopeId": "/",
    "createdBy": {
        "user": {
            "displayName": null,
            "id": "e2330663-f949-41b5-a3dc-faeb793e14c6"
        }
    }
}
```

### Delete the IT Support (Users) group

The request returns a `204 No Content` response code.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-assignaadroles-group_delete"
}-->
```http
DELETE https://graph.microsoft.com/v1.0/groups/d9771b4c-06c5-491a-92cb-3aa4e225a725
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-assignaadroles-group-delete-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-assignaadroles-group-delete-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-assignaadroles-group-delete-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-assignaadroles-group-delete-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-assignaadroles-group-delete-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-assignaadroles-group-delete-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-assignaadroles-group-delete-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Conclusion

In this tutorial, you learned how to manage privileged role assignments in Microsoft Entra ID using PIM APIs.

- Instead of making the group eligible for the privileged role, you can assign an active role to the group and make members eligible for the group using PIM for Groups APIs.
- MFA was required for role activation. You can change this requirement in Microsoft Entra role settings.
- You can also configure:
  - Maximum allowed duration for role activation.
  - Whether justification and ticket information are required for activating the role.

## Related content

- [Assign Microsoft Entra roles in Privileged Identity Management using Microsoft Graph PowerShell](/powershell/microsoftgraph/tutorial-pim)
- [Overview of role management through PIM](/graph/api/resources/privilegedidentitymanagementv3-overview)
- [Govern membership and ownership of groups using PIM for groups](/graph/api/resources/privilegedidentitymanagement-for-groups-api-overview)
- [Rules in PIM - mapping guide](/graph/identity-governance-pim-rules-overview)
