---
title: "Tutorial: Assign Azure AD admin roles using Microsoft Graph PIM API"
description: "Use the Privileged Identity Management API to assign Azure AD admin roles"
author: "FaithOmbongi"
localization_priority: Normal
ms.prod: "governance"
---

# Tutorial: Assign Azure AD admin roles using Microsoft Graph Privileged Identity Management (PIM) API

Contoso Limited is a growing service provider with an equally growing number of employees. The company wishes to assign the IT Helpdesk the User Administrator roles to manage the lifecycle of employees’ access including user accounts and password policies.

In this tutorial, the Global Administrator of Contoso Limited creates a security group for IT Helpdesk and adds an employee as a member of the group. Then, using PIM API, the Global Admin will add the security group as eligible for the User Administrator role assignment.

By using a security group to assign the eligible role, Contoso has a more efficient way to manage administrator access to resources, in this case Azure AD roles. This includes:

+ To remove existing or add more members, and therefore administrators.
+ To add more roles to the group members, for example, roles to manage user-facing applications.

By assigning eligibility instead of a persistently active User Administrator privilege, the IT Helpdesk's mandate is only for a limited time. This is referred to as **just-in-time access**. Every time an IT Helpdesk team member needs to use their User Administrator role to manage employee access, they'll have to perform a just-in-time activation of the role.

After the Global Administrator has defined the role eligibility, the eligible IT Helpdesk team member must then perform a just in time activation of their assignment before they can perform the roles assigned to them.

>[!NOTE]
>The response objects shown in this tutorial might be shortened for readability.

## Prerequisites

To complete this tutorial, you need the following resources and privileges:

+ A working Azure AD tenant with an Azure AD Premium P2 or EMS E5 license enabled.
+ A test user whom you'll assign the user administrator role.
+ Sign in to [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer) as a user in a global administrator role. 
+ The following delegated permissions: `User.ReadWrite.All`, `Group.ReadWrite.All`, `RoleManagement.ReadWrite.Directory`, and `RoleEligibilitySchedule.ReadWrite.Directory`.

To consent to the required permissions in Graph Explorer:
1. Select the horizontal ellipses icon to the right of the user account details, and then choose **Select permissions**.
  
  :::image type="content" source="/graph/images/tutorial-accessreviews-api/settings.png" alt-text="Select Microsoft Graph permissions." border="true":::

2. Scroll through the list of permissions to these permissions:
    + Group (2), expand and then select **Group.ReadWrite.All**.
    + RoleEligibilitySchedule (2), expand and then select **RoleEligibilitySchedule.ReadWrite.Directory**.
    + User (8), expand and then select **User.ReadWrite.All**.
   
   Select **Consent**, and then select **Accept** to accept the consent of the permissions. You do not need to consent on behalf of your organization for these permissions.

  :::image type="content" source="/graph/images/tutorial-accessreviews-api/consentpermissions.png" alt-text="Consent to Microsoft Graph permissions." border="true":::

## Step 1: Create a test user

You will create a user who must rest their password at first sign-in to the tenant. From this step, record the value of the new user's **id** for use in the next step.


### Request
<!-- {
  "blockType": "request",
  "name": "tutorial-assignaadroles-createUser"
}-->
```http
POST https://graph.microsoft.com/v1.0/users
Content-Type: application/json

{
    "accountEnabled": true,
    "displayName": "Aline Dupuy",
    "mailNickname": "AlineD",
    "userPrincipalName": "AlineD@m365x435773.onmicrosoft.com",
    "passwordProfile": {
        "forceChangePasswordNextSignIn": true,
        "password": "xWwvJ]6NMw+bWH-d"
    }
}
```

### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.user"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users/$entity",
    "@odata.id": "https://graph.microsoft.com/v2/927c6607-8060-4f4a-a5f8-34964ac78d70/directoryObjects/92f37639-ba1e-471c-b9ba-922371c740cb/Microsoft.DirectoryServices.User",
    "id": "92f37639-ba1e-471c-b9ba-922371c740cb",
    "displayName": "Aline Dupuy",
    "userPrincipalName": "AlineD@m365x435773.onmicrosoft.com"
}
```

## Step 2: Create a security group that can be assigned an Azure AD role

In this step, create a group that’s assignable to an Azure AD role. Assign yourself as the group owner and both you and the user created in Step 1 as members.

### Request

Replace `fc9a2c2b-1ddc-486d-a211-5fe8ca77fa1f` with your **id** and `92f37639-ba1e-471c-b9ba-922371c740cb` with the **id** of the user you created in Step 1.
<!-- {
  "blockType": "request",
  "name": "tutorial-assignaadroles-createSecurityGroup"
}-->
```msgraph-interactive
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
        "https://graph.microsoft.com/v1.0/users/fc9a2c2b-1ddc-486d-a211-5fe8ca77fa1f"
    ],
    "members@odata.bind": [
        "https://graph.microsoft.com/v1.0/users/92f37639-ba1e-471c-b9ba-922371c740cb",
        "https://graph.microsoft.com/v1.0/users/fc9a2c2b-1ddc-486d-a211-5fe8ca77fa1f"
    ]
}
```

### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.group"
} -->

```
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#groups/$entity",
    "@odata.id": "https://graph.microsoft.com/v2/927c6607-8060-4f4a-a5f8-34964ac78d70/directoryObjects/6d77df76-5f95-4e40-9a92-f9d35efbe243/Microsoft.DirectoryServices.Group",
    "id": "6d77df76-5f95-4e40-9a92-f9d35efbe243",
    "createdDateTime": "2021-08-06T15:56:44Z",
    "description": "IT Helpdesk to support Contoso employees",
    "displayName": "IT Helpdesk (User)",
    "groupTypes": [],
    "isAssignableToRole": true,
    "mail": null,
    "mailEnabled": false,
    "mailNickname": "userHelpdesk",
    "renewedDateTime": "2021-08-06T15:56:44Z",
    "securityEnabled": true,
    "securityIdentifier": "S-1-12-1-1836572534-1312841621-3556348570-1138948958",
    "visibility": "Private"
}
```

## Step 3: Create a unifiedRoleEligibilityScheduleRequest

Now that we have a security group, we can assign it as eligible for the User Administrator role.

In this step:

+ Create a template, a unifiedRoleEligibilityScheduleRequest, that identifies that the group IT Helpdesk (User) is eligible for User Administrator role for a period of one year. Azure AD extends this eligible assignment the group members, that is, you and the user created in Step 1.
+ Scope the eligible assignment to your entire tenant. This allows the user admin to perform the roles assigned to their privileges across all users in your tenant, except higher privilege users such as the Global Administrator.

### Request

Replace `6d77df76-5f95-4e40-9a92-f9d35efbe243` with the value of **id** of the group you created in Step 2. In this request, this is the principal to whom you are assigning eligibility to the role. The roleDefinitionId `fe930be7-5e62-47db-91af-98c3a49a38b1` is the global template identifier for the User Administrator role in Azure AD.

<!-- {
  "blockType": "request",
  "name": "tutorial-assignaadroles-unifiedRoleEligibilityScheduleRequest_create"
}-->

```msgraph-interactive
POST https://graph.microsoft.com/beta/roleManagement/directory/roleEligibilityScheduleRequests
Content-type: application/json

{
    "action": "AdminAssign",
    "justification": "Assign User Admin eligibility to IT Helpdesk (User) group",
    "roleDefinitionId": "fe930be7-5e62-47db-91af-98c3a49a38b1",
    "directoryScopeId": "/",
    "principalId": "6d77df76-5f95-4e40-9a92-f9d35efbe243",
    "scheduleInfo": {
        "startDateTime": "2021-07-01T00:00:00Z",
        "expiration": {
            "endDateTime": "2022-06-30T00:00:00Z",
            "type": "AfterDateTime"
        }
    }
}
```

### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.unifiedRoleEligibilityScheduleRequests"
} -->

```
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#roleManagement/directory/roleEligibilityScheduleRequests/$entity",
    "id": "2303e6ff-5939-496f-8057-9203db4c75f3",
    "status": "Provisioned",
    "createdDateTime": "2021-08-06T16:04:58.8662763Z",
    "completedDateTime": "2021-08-06T16:05:02.53826Z",
    "action": "AdminAssign",
    "principalId": "6d77df76-5f95-4e40-9a92-f9d35efbe243",
    "roleDefinitionId": "fe930be7-5e62-47db-91af-98c3a49a38b1",
    "directoryScopeId": "/",
    "appScopeId": null,
    "isValidationOnly": false,
    "targetScheduleId": "2303e6ff-5939-496f-8057-9203db4c75f3",
    "justification": "Assign User Admin eligibility to IT Helpdesk (User) group",
    "createdBy": {
        "user": {
            "displayName": null,
            "id": "fc9a2c2b-1ddc-486d-a211-5fe8ca77fa1f"
        }
    },
    "scheduleInfo": {
        "startDateTime": "2021-08-06T16:05:02.53826Z",
        "recurrence": null,
        "expiration": {
            "type": "afterDateTime",
            "endDateTime": "2022-06-30T00:00:00Z",
            "duration": null
        }
    }
}
```

## Step 4: Retrieve roleEligibilityScheduleInstances

> [!WARNING]
> NOTE to Faith: How about changing this to filterbycurrentUser & merge it with Step 5, Part I?
Retrieve roleEligibilityScheduleInstances objects to confirm that the eligible assignments to the security group were successfully provisioned in the previous step.

### Request

<!-- {
  "blockType": "request",
  "name": "tutorial-assignaadroles-unifiedroleEligibilityScheduleInstances_list"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/roleManagement/directory/roleEligibilityScheduleInstances
```

### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.unifiedRoleEligibilityScheduleInstances"
} -->

```
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#roleManagement/directory/roleEligibilityScheduleInstances",
    "value": [
        {
            "id": "5wuT_mJe20eRr5jDpJo4sXbfd22VX0BOmpL501774kM-1-e",
            "principalId": "6d77df76-5f95-4e40-9a92-f9d35efbe243",
            "roleDefinitionId": "fe930be7-5e62-47db-91af-98c3a49a38b1",
            "directoryScopeId": "/",
            "appScopeId": null,
            "startDateTime": "2021-08-06T16:18:04.793Z",
            "endDateTime": "2022-06-30T00:00:00Z",
            "memberType": "Direct",
            "roleEligibilityScheduleId": "2303e6ff-5939-496f-8057-9203db4c75f3"
        }
    ]
}
```

While the group members are now eligible for the User Administrator role, they are still unable to make use of the role. This is because they are yet to activate their eligibility. You can confirm this by checking the user's current role assignments in your tenant.


> [!WARNING]
> Reminder/Note to Faith: should this step really be here? Because, does it ever change after afterward?

### Request

<!-- {
  "blockType": "request",
  "name": "tutorial-assignaadroles-roleAssignments_list"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/roleManagement/directory/roleAssignments?$filter=principalId eq '92f37639-ba1e-471c-b9ba-922371c740cb'
```

### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.unifiedRoleAssignments"
} -->
```
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#roleManagement/directory/roleAssignments",
    "value": []
}
```

The empty response object shows that the user has no existing Azure AD roles in Contoso. They will need to perform a just in time activation of the User Administrator role and privilege before they can perform actions that are only allowed for the role.

## Step 5: User self-activates their eligible assignment

An incident ticket has been raised in Contoso's incident management system and the company requires that all employee's refresh tokens be invalidated. This ticket number CONTOSO:Security-012345 has been assigned to the IT Helpdesk. As a member of IT Helpdesk, the user is responsible for fulfilling the ticket requirements.

First, the user confirms and retrieves the eligible assignments they are allowed to activate


> [!WARNING]
> Reminder/Note to Faith: should this step really be here? Because the role eligibility is not assigned to a user but to a group. Confirm if this query returns eligible assignments through group memberships. Or, what if we use **roleEligibilityScheduleInstance** instead?

### Request

<!-- {
  "blockType": "request",
  "name": "tutorial-assignaadroles-roleEligibilityScheduleRequests_filterByCurrentUser_list"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/roleManagement/directory/roleEligibilityScheduleRequests/filterByCurrentUser(on='principal')
```

### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.roleEligibilityScheduleRequests"
} -->
```
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(unifiedRoleEligibilityScheduleRequest)",
    "value": []
}
```

Then, they perform a just-in-time activation of their own eligible assignment, to activate their role for five hours.

### Request

For this step, login to Graph Explorer as the user created in Step 1. You will be required to first change your password because this was specified during account creation. Ruh the following request.

In this request, the `UserAdd` action allows the eligible user to activate their own eligible assignment. They will activate it for a period of 5 hours.

<!-- {
  "blockType": "request",
  "name": "tutorial-assignaadroles-roleEligibilityScheduleRequests_post"
}-->
```msgraph-interactive
POST https://graph.microsoft.com/beta/roleManagement/directory/roleEligibilityScheduleRequests
Content-type: application/json

{
    "action": "UserAdd",
    "principalId": "6d77df76-5f95-4e40-9a92-f9d35efbe243",
    "roleDefinitionId": "fe930be7-5e62-47db-91af-98c3a49a38b1",
    "directoryScopeId": "/",
    "justification": "Need to invalidate all app refresh tokens for Contoso users.",
    "scheduleInfo": {
        "startDateTime": "2021-07-17T08:00:00.000Z",
        "expiration": {
            "type": "afterDuration",
            "duration": "PT5H"
        }
    },
    "ticketInfo": {
        "ticketNumber": "CONTOSO:Security-012345",
        "ticketSystem": "Contoso ICM"
    }
}
```

### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.roleEligibilityScheduleRequests"
} -->

```

```

By repeating the second request in Step 4 above, the user can confirm that they have an active assignment for the User Administrator role. Now, they may perform any allowed actions within five hours that their assignment is active for, including invalidating all employees' refresh tokens. After five hours, their active assignment expires but their eligible assignment remains for future activation.

## Step 6: Clean up resources

Delete the following resources that you created for this tutorial: the test user,  IT Support (Users) group, and the role eligibility request.

### Delete the test user

#### Request

Replace `825f1b5e-6fb2-4d9a-b393-d491101acc0c` with the **id** of test user that you created in Step 1.

<!-- {
  "blockType": "request",
  "name": "tutorial-assignaadroles-user_delete"
}-->
```msgraph-interactive
DELETE https://graph.microsoft.com/beta/users/825f1b5e-6fb2-4d9a-b393-d491101acc0c
```

#### Response

<!-- {
  "blockType": "response",
  "truncated": false
} -->

```http
HTTP/1.1 204 No Content
```

### Delete the IT Support (Users) group

Replace `825f1b5e-6fb2-4d9a-b393-d491101acc0c` with the **id** of IT Support (Users) group. Deleting this group also removes the remaining members’ role eligibility assignments.

<!-- {
  "blockType": "request",
  "name": "tutorial-assignaadroles-group_delete"
}-->
```msgraph-interactive
DELETE https://graph.microsoft.com/beta/groups/825f1b5e-6fb2-4d9a-b393-d491101acc0c
```

#### Response

<!-- {
  "blockType": "response",
  "truncated": false
} -->

```http
HTTP/1.1 204 No Content
```

### Cancel the role eligibility schedule request

Replace `825f1b5e-6fb2-4d9a-b393-d491101acc0c` with the **id** of the role eligibility schedule. Granted role eligibility schedule requests are canceled than automatically deleted by Azure AD in 30 days.

<!-- {
  "blockType": "request",
  "name": "tutorial-assignaadroles-unifiedroleeligibilityschedulerequest_cancel"
}-->
```msgraph-interactive
DELETE POST https://graph.microsoft.com/beta/roleManagement/directory/roleEligibilityScheduleRequests/532bef1f-c677-4564-aa6f-811444a4f018/cancel
```

#### Response

<!-- {
  "blockType": "response",
  "truncated": false
} -->

```http
HTTP/1.1 204 No Content
```


## See also

+ [Azure AD built-in roles](https://docs.microsoft.com/azure/active-directory/roles/permissions-reference#all-roles)
+ [unifiedRoleEligibilityScheduleRequest resource type](https://docs.microsoft.com/en-us/graph/api/resources/unifiedroleeligibilityschedulerequest?view=graph-rest-beta&preserve-view=true)
+ [unifiedRoleEligibilityScheduleInstance resource type](https://docs.microsoft.com/en-us/graph/api/resources/unifiedroleeligibilityscheduleinstance?view=graph-rest-beta&preserve-view=true)