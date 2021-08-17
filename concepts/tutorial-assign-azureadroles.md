---
title: "Tutorial: Use Microsoft Graph Privileged Identity Management (PIM) API to assign Azure AD admin roles"
description: "Use the Privileged Identity Management (PIM) API to assign Azure AD admin roles"
author: "FaithOmbongi"
localization_priority: Normal
ms.prod: "governance"
---

# Tutorial: Use Microsoft Graph Privileged Identity Management (PIM) API to assign Azure AD admin roles

Contoso Limited is a growing service provider that wishes to have its IT Helpdesk manage the lifecycle of employees’ access.

In this tutorial, you as the Global Administrator of Contoso Limited create a role-assignable security group for IT Helpdesk. Add an employee as a group member. Using the PIM API, then add the security group as eligible for the User Administrator role.

By using a security group to assign the eligible role, Contoso has a more efficient way to manage administrator access to resources such as Azure AD roles. For example:

+ Removing existing or adding more group members also removes administrators.
+ Adding more roles to the group members, for example, roles to manage user-facing applications.

Assigning eligibility instead of a persistently active User Administrator privilege allows the company to enforce **just-in-time access** which grants temporary permissions to carry out the privileged tasks. After defining the role eligibility, the eligible group member then activates their assignment for a temporary period.

>[!NOTE]
>The response objects shown in this tutorial might be shortened for readability.

## Prerequisites

To complete this tutorial, you need the following resources and privileges:

+ A working Azure AD tenant with an Azure AD Premium P2 or EMS E5 license enabled.
+ Sign in to [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer) as a user in a global administrator role. 
+ The following delegated permissions: `User.ReadWrite.All`, `Group.ReadWrite.All`, `Directory.Read.All`, `RoleAssignmentSchedule.ReadWrite.All`, and `RoleEligibilitySchedule.ReadWrite.Directory`.
        > [!NOTE]
        > Note for Faith, test out using RoleManagement.ReadWrite.All only. Consent to RoleAssignment/EligibilitySchedule Read perms only for org.
+ Authenticator app installed on your phone to register a user for multi-factor authentication (MFA).

To consent to the required permissions in Graph Explorer:
1. Select the horizontal ellipses icon to the right of the user account details, and then choose **Select permissions**.
  
      :::image type="content" source="/graph/images/GE-Permissions/selectpermissions.png" alt-text="Select Microsoft Graph permissions." border="true":::

2. Scroll through the list of permissions to these permissions:
    + Group (2), expand and then select **Group.ReadWrite.All**.
    + Directory (4), expand and then select **Directory.Read.All**.
    + RoleAssignmentSchedule (2), expand and then select **RoleAssignmentSchedule.ReadWrite.Directory**.
    + RoleEligibilitySchedule (2), expand and then select **RoleEligibilitySchedule.ReadWrite.Directory**.
    + User (8), expand and then select **User.ReadWrite.All**.
   
   Select **Consent**, and then select **Accept** to accept the consent of the permissions. For the `RoleEligibilitySchedule.ReadWrite.Directory` and `RoleAssignmentSchedule.ReadWrite.All` permissions, consent on behalf of your organization.

      :::image type="content" source="/graph/images/GE-Permissions/User.ReadWrite.All-consent.png" alt-text="Consent to Microsoft Graph permissions." border="true":::

## Step 1: Create a test user

Create a user who must reset their password at first sign in. From this step, record the value of the new user's **id** for use in the next step. After creating the user, visit the Azure Portal and enable multi-factor authentication (MFA) for the user. For more guidance on enabling MFA, refer to the [See also](#see-also) section.


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

Create a group that’s assignable to an Azure AD role. Assign yourself as the group owner and both you and the user created in Step 1 as members.

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

### Request

Assign two members to the security group, including yourself. In the following request, replace:
+ `6d77df76-5f95-4e40-9a92-f9d35efbe243` with the value of the group's **id**.
+ `92f37639-ba1e-471c-b9ba-922371c740cb` with the value of the new user's **id**.
+ `fc9a2c2b-1ddc-486d-a211-5fe8ca77fa1f` with the value of your **id**.

<!-- {
  "blockType": "request",
  "name": "tutorial-assignaadroles-addGroupMembers"
}-->
```msgraph-interactive
PATCH https://graph.microsoft.com/v1.0/groups/6d77df76-5f95-4e40-9a92-f9d35efbe243
Content-type: application/json

{
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
HTTP/1.1 204 No Content
```

## Step 3: Create a unifiedRoleEligibilityScheduleRequest

Now that you have a security group, assign it as eligible for the User Administrator role. In this step:

+ Create a unifiedRoleEligibilityScheduleRequest that identifies the group **IT Helpdesk (User)** as eligible for the User Administrator role for one year. Azure AD extends this eligible assignment the group members, that is, you and the new user.
+ Scope the eligible assignment to your entire tenant. This allows the user admin to use their privilege against all users in your tenant, except higher privilege users such as the Global Administrator.

### Request

Replace `6d77df76-5f95-4e40-9a92-f9d35efbe243` with the value of the **id** of the **IT Helpdesk (User)** security group you created in Step 2. This **principalId** identifies the assignee of eligibility to the User Administrator role. The roleDefinitionId `fe930be7-5e62-47db-91af-98c3a49a38b1` is the global template identifier for the User Administrator role in Azure AD.

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

## Step 4: Confirm the user's current role assignments

While the group members are now eligible for the User Administrator role, they're still unable to use the role. This is because they're yet to activate their eligibility. You can confirm by checking the user's current role assignments.


### Request

In the following request, replace `92f37639-ba1e-471c-b9ba-922371c740cb` with the **id** of the user created in Step 1.

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

The empty response object shows that the user has no existing Azure AD roles in Contoso. They'll now activate their eligible User Administrator role for a limited time.

## Step 5: User self-activates their eligible assignment

An incident ticket CONTOSO: Security-012345 has been raised in Contoso's incident management system and the company requires that all employee's refresh tokens b invalidated. As a member of IT Helpdesk, the user is responsible for fulfilling this task.

Sign in to Graph Explorer as the user created in Step 1. You'll first change your password because this was specified during account creation. Then, because the administrator configured your account for MFA, you'll be prompted to set up your account in the Authenticator app and be challenged for MFA sign-in. This is because PIM requires that all active role assignments require Azure MFA. After signing in, you are now ready to activate your assignment.

First, confirm the eligible assignment you (signed-in as the user created in Step 1) are allowed to activate.

### Request

<!-- {
  "blockType": "request",
  "name": "tutorial-assignaadroles-roleEligibilityScheduleRequests_filterByCurrentUser_list"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/roleManagement/directory/roleEligibilityScheduleRequests/filterByCurrentUser(on='principal')
```

### Response

The following response objects shows that you have ben assigned role eligibility identified by the **targetScheduleId** `b43db1e8-9674-4a27-be35-3a15fdec76a3`. This is the identifier of the unifiedRoleEligibilityScheduleRequest object that you created in Step 3.

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
    "value": [
        {
            "@odata.type": "#microsoft.graph.unifiedRoleEligibilityScheduleRequest",
            "id": "b43db1e8-9674-4a27-be35-3a15fdec76a3",
            "status": "Provisioned",
            "createdDateTime": "2021-08-09T09:39:46.16Z",
            "completedDateTime": "2021-08-09T09:39:46.263Z",
            "approvalId": null,
            "customData": null,
            "action": "AdminAssign",
            "principalId": "c6ad1942-4afa-47f8-8d48-afb5d8d69d2f",
            "roleDefinitionId": "fe930be7-5e62-47db-91af-98c3a49a38b1",
            "directoryScopeId": "/",
            "appScopeId": null,
            "isValidationOnly": false,
            "targetScheduleId": "b43db1e8-9674-4a27-be35-3a15fdec76a3",
            "justification": "Assign User Admin eligibility to Allan Deyoung",
            "createdBy": {
                "application": null,
                "device": null,
                "user": {
                    "displayName": null,
                    "id": "4562bcc8-c436-4f95-b7c0-4f8ce89dca5e"
                }
            },
            "scheduleInfo": {
                "startDateTime": "2021-08-09T09:39:46.2631879Z",
                "recurrence": null,
                "expiration": {
                    "type": "afterDateTime",
                    "endDateTime": "2022-06-30T00:00:00Z",
                    "duration": null
                }
            },
            "ticketInfo": {
                "ticketNumber": null,
                "ticketSystem": null
            }
        }
    ]
}
```

Now, activate your User Administrator role for five hours.

### Request

To activate a role, call the roleEligibilityScheduleRequests endpoint. In this request, the `UserActivate` action allows you to activate your eligible assignment, in this case for 5 hours.

+ For **principalId**, supply the value of your id.
+ The **roleDefinitionId** is the **id** of the role you are eligible for, in this case, the User Administrator role.
+ Enter the details of the ticket system which provides an auditable justification for activating the request.

<!-- {
  "blockType": "request",
  "name": "tutorial-assignaadroles-roleEligibilityScheduleRequests_post"
}-->
```msgraph-interactive
POST https://graph.microsoft.com/beta/roleManagement/directory/roleEligibilityScheduleRequests
Content-type: application/json

{
    "action": "SelfActivate",
    "principalId": "c6ad1942-4afa-47f8-8d48-afb5d8d69d2f",
    "roleDefinitionId": "fe930be7-5e62-47db-91af-98c3a49a38b1",
    "directoryScopeId": "/",
    "justification": "Need to invalidate all app refresh tokens for Contoso users.",
    "scheduleInfo": {
        "startDateTime": "2021-08-17T15:13:00.000Z",
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

### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.roleEligibilityScheduleRequests"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#roleManagement/directory/roleAssignmentScheduleRequests/$entity",
    "id": "7670bbfa-486d-49b4-9d9c-b2c3b45f848a",
    "status": "Provisioned",
    "createdDateTime": "2021-08-17T15:13:43.2752078Z",
    "completedDateTime": "2021-08-17T15:13:45.8690117Z",
    "approvalId": null,
    "customData": null,
    "action": "SelfActivate",
    "principalId": "c6ad1942-4afa-47f8-8d48-afb5d8d69d2f",
    "roleDefinitionId": "fe930be7-5e62-47db-91af-98c3a49a38b1",
    "directoryScopeId": "/",
    "appScopeId": null,
    "isValidationOnly": false,
    "targetScheduleId": "7670bbfa-486d-49b4-9d9c-b2c3b45f848a",
    "justification": "Need to invalidate all app refresh tokens for Contoso users.",
    "createdBy": {
        "application": null,
        "device": null,
        "user": {
            "displayName": null,
            "id": "c6ad1942-4afa-47f8-8d48-afb5d8d69d2f"
        }
    },
    "scheduleInfo": {
        "startDateTime": "2021-08-17T15:13:45.8690117Z",
        "recurrence": null,
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

Repeat the second request in Step 4 to confirm your active assignment for the User Administrator role. This time, the response object returns your newly activated role assignment. With your new privilege, carry out any allowed actions within five hours your assignment is active for. This includes invalidating all employees' refresh tokens. After five hours, the active assignment expires but through your membership in the **IT Support (Users)** group, you still remain eligible for the User Administrator role.

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

Replace `825f1b5e-6fb2-4d9a-b393-d491101acc0c` with the **id** of IT Support (Users) group. Deleting this group also removes the remaining members' eligibile role assignments.

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

### Remove the role eligibility request

Replace `825f1b5e-6fb2-4d9a-b393-d491101acc0c` with the **id** of the role eligibility schedule.

<!-- {
  "blockType": "request",
  "name": "tutorial-assignaadroles-unifiedroleeligibilityschedulerequest_cancel"
}-->
```msgraph-interactive
POST https://graph.microsoft.com/beta/roleManagement/directory/roleAssignmentScheduleRequests/
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

+ [Azure AD built-in roles](/azure/active-directory/roles/permissions-reference#all-roles)
+ [Enable per-user Azure AD Multi-Factor Authentication to secure sign-in events](/azure/active-directory/authentication/howto-mfa-userstates)
+ [unifiedRoleEligibilityScheduleRequest resource type](/graph/api/resources/unifiedroleeligibilityschedulerequest?view=graph-rest-beta&preserve-view=true)