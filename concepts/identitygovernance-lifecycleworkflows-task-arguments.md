---
title: "Configure the arguments for built-in Lifecycle Workflow tasks"
description: "Configure the arguments for built-in Lifecycle Workflow tasks. Learn the allowed configurations for the arguments property of various built-in tasks in Lifecycle Workflows."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: alexander.filipin
ms.localizationpriority: medium
ms.subservice: entra-id-governance
ms.topic: how-to
ms.date: 04/05/2024
#Customer intent: As a developer automating user lifecycle processes, I want to learn how to use Microsoft Graph to configure the arguments property of built-in tasks in Lifecycle Workflows, so that I can automate basic lifecycle processes for my users.
---

# Configure the arguments for built-in Lifecycle Workflow tasks

The Lifecycle Workflows API in Microsoft Graph enables you to automate basic lifecycle processes for your users at three levels: Joiner, Leaver, and Mover. Core to the workflows is **tasks** that represent the specific actions that run automatically when a workflow is triggered.

Microsoft Graph supports [24 built-in tasks](/graph/api/resources/identitygovernance-task) that you can use to create your custom workflows. Each task has a set of arguments that are allowed for that task. For example, a task to generate a temporary access pass (TAP) for a user allows you to configure the lifetime of the TAP and whether the user can reuse it. A task to add a user to a group requires you to specify the groups to which you want to add the user. This configuration is made on the **arguments** property of a task.

This article provides guidance on the allowed configuration for the **arguments** property of [tasks](/graph/api/resources/identitygovernance-task) in Lifecycle Workflows.

## Configure arguments for tasks

| Task display name | taskDefinitionId | arguments |
|--|--|--|
| Send welcome email to new hire | 70b29d51-b59a-4773-9280-8841dfd3f2ea | **name**: `cc`<br/>**value**: A valid user ID (String) for the user you want to cc in the email.<br/><br/>**name**: `customSubject`<br/>**value**: A custom subject header for the email being sent.<br/><br/><br/>**name**: `customBody`<br/>**value**: The body of the customized email.<br/><br/><br/>**name**: `locale`<br/>**value**: Language value that overrides the email recipient's language settings. This argument doesn't customize the custom text of the email, and should be set in the same language as the custom text. <br/> |
|Send onboarding reminder email|3C860712-2D37-42A4-928F-5C93935D26A1|**name**: `cc`<br/>**value**: A valid user ID (String) for the user you want to cc in the email.<br/><br/>**name**: `customSubject`<br/>**value**: A custom subject header for the email being sent.<br/><br/><br/>**name**: `customBody`<br/>**value**: The body of the customized email.<br/><br/><br/>**name**: `locale`<br/>**value**: Language value that overrides the email recipient's language settings. This argument doesn't customize the custom text of the email, and should be set in the same language as the custom text. <br/> |
| Generate Temporary Access Pass and send via email to user's manager | 1b555e50-7f65-41d5-b514-5894a026d10d | **name**: `tapLifetimeMinutes`<br/>**value**: `10` upto `43000`<br/><br/>**name**: `tapIsUsableOnce`<br/>**value**: `true` or `false`<br/><br/>Prerequisites: <br/><ol><li>The user must be assigned a manager.<li>The user's manager must have their mail enabled.<li>The temporary access pass (TAP) policy must be enabled in the tenant and the user enabled to use the TAP authentication method. For more information, see [temporaryAccessPassAuthenticationMethodConfiguration resource type](/graph/api/resources/temporaryaccesspassauthenticationmethodconfiguration). </ol> |
| Add user to groups | 22085229-5809-45e8-97fd-270d28d66910 | **name**: `groupID`<br/>**value**: a valid group ID or a comma-separated list of groups to which the user is added as a member. For example, `"06269010-2d8e-48e4-8f0e-33580720c9e1, 06bba22c-775e-42d8-b451-4221af061af0, 182f68db-6513-4e79-9ec2-a7e89a460e7f"` |
| Add user to teams | e440ed8d-25a1-4618-84ce-091ed5be5594 | **name**: `teamID`<br/>**value**: a valid group ID or a comma-separated list of teams to which the user is added as a member. For example, `"06269010-2d8e-48e4-8f0e-33580720c9e1, 06bba22c-775e-42d8-b451-4221af061af0, 182f68db-6513-4e79-9ec2-a7e89a460e7f"` |
| Enable user account | 6fc52c9d-398b-4305-9763-15f42c1676fc | None |
| Run a custom task extension | 4262b724-8dba-4fad-afc3-43fcbb497a0e | name: `CustomTaskExtensionID`<br/>value: The ID of the custom task extension |
| Assign licenses to users (Preview) | 683c87a4-2ad4-420b-97d4-220d90afcd24 | name: `licenses`<br/>value: The ID of the license you want to assign |
| Remove selected license assignments from user (Preview) | 5fc402a8-daaf-4b7b-9203-da868b05fc5f | name: `licenses`<br/>value: The ID of the license you want to assign |
| Run a custom task extension | 4262b724-8dba-4fad-afc3-43fcbb497a0e | **name**: `CustomTaskExtensionID`<br/>**value**: The ID of the custom task extension |
| Disable user account | 1dfdfcc7-52fa-4c2e-bf3a-e3919cc12950 | None |
| Remove user from selected group | 1953a66c-751c-45e5-8bfe-01462c70da3c | **name**: `groupID`<br/>**value**: a valid group ID or a comma-separated list of groups that the user is a member of. For example, `"06269010-2d8e-48e4-8f0e-33580720c9e1, 06bba22c-775e-42d8-b451-4221af061af0, 182f68db-6513-4e79-9ec2-a7e89a460e7f"` |
| Remove users from all groups | b3a31406-2a15-4c9a-b25b-a658fa5f07fc | None |
| Remove user from teams | 06aa7acb-01af-4824-8899-b14e5ed788d6 | **name**: `teamID`<br/>**value**: a comma-separated list of teams that the user is a member of. For example, `"06269010-2d8e-48e4-8f0e-33580720c9e1, 06bba22c-775e-42d8-b451-4221af061af0, 182f68db-6513-4e79-9ec2-a7e89a460e7f"` |
| Remove user from all teams | 81f7b200-2816-4b3b-8c5d-dc556f07b024 | None |
| Remove all license assignments from user | 8fa97d28-3e52-4985-b3a9-a1126f9b8b4e | None |
| Delete user | 8d18588d-9ad3-4c0f-99d0-ec215f0e3dff | None |
| Send email to notify manager of user move | aab41899-9972-422a-9d97-f626014578b7 | **name**: `cc`<br/>**value**: A valid user ID (String) for the user you want to cc in the email.<br/><br/>**name**: `customSubject`<br/>**value**: A custom subject header for the email being sent.<br/><br/><br/>**name**: `customBody`<br/>**value**: The body of the customized email.<br/><br/><br/>**name**: `locale`<br/>**value**: Language value that overrides the email recipient's language settings. Doesn't customize the custom text of the email, and should be set in the same language as the custom text.  <br/> |
| Send email to manager before user last day | 52853a3e-f4e5-4eb8-bb24-1ac09a1da935 | **name**: `cc`<br/>**value**: A valid user ID (String) for the user you want to cc in the email.<br/><br/>**name**: `customSubject`<br/>**value**: A custom subject header for the email being sent.<br/><br/><br/>**name**: `customBody`<br/>**value**: The body of the customized email.<br/><br/><br/>**name**: `locale`<br/>**value**: Language value that overrides the email recipient's language settings. Doesn't customize the custom text of the email, and should be set in the same language as the custom text.  <br/> |
| Send email on users last day | 9c0a1eaf-5bda-4392-9d9e-6e155bb57411 | **name**: `cc`<br/>**value**: A valid user ID (String) for the user you want to cc in the email.<br/><br/>**name**: `customSubject`<br/>**value**: A custom subject for the email being sent.<br/><br/><br/>**name**: `customBody`<br/>**value**: The body of the customized email.<br/><br/><br/>**name**: `locale`<br/>**value**: Language value that overrides the email recipient's language settings. Doesn't customize the custom text of the email, and should be set in the same language as the custom text.  <br/> |
| Send offboarding email to users manager after their last day | 6f22ddd4-b3a5-47a4-a846-0d7c201a49ce | **name**: `cc`<br/>**value**: A valid user ID (String) for the user you want to cc in the email.<br/><br/>**name**: `customSubject`<br/>**value**: A custom subject header for the email being sent.<br/><br/><br/>**name**: `customBody`<br/>**value**: The body of the customized email.<br/><br/><br/>**name**: `locale`<br/>**value**: Language value that overrides the email recipient's language settings. Doesn't customize the custom text of the email, and should be set in the same language as the custom text.  <br/> |
| Request user access package assignment | c1ec1e76-f374-4375-aaa6-0bb6bd4c60be | **name**: `assignmentPolicyId`<br/>**value**: A valid assignment policy ID (String) for the access package you want to assign the user.<br/><br/>**name**: `accessPackageId`<br/>**value**: A valid access package ID for the access package you want to assign to the user. |
| Remove access package assignment for user | 4a0b64f2-c7ec-46ba-b117-18f262946c50 | **name**: `accessPackageId`<br/>**value**: A valid access package ID for the access package you want to unassign from the user. |
| Remove all access package assignments for user | 42ae2956-193d-4f39-be06-691b8ac4fa1d | None |
| Cancel pending access package assignment requests for user | 498770d9-bab7-4e4c-b73d-5ded82a1d0b3 | None |

## Examples

### Example 1: Send a welcome email to a new hire

```json
{
    "category": "joiner",
    "continueOnError": false,
    "description": "Send welcome email to new hire",
    "displayName": "Send Welcome Email",
    "isEnabled": true,
    "taskDefinitionId": "70b29d51-b59a-4773-9280-8841dfd3f2ea",
    "arguments": [
        {
            "name": "cc",
            "value": "e94ad2cd-d590-4b39-8e46-bb4f8e293f85,ac17d108-60cd-4eb2-a4b4-084cacda33f2"
        },
        {
            "name": "customSubject",
            "value": "Welcome to the organization {{userDisplayName}}!"
        },
        {
            "name": "customBody",
            "value": "Welcome to our organization {{userGivenName}} {{userSurname}}.\n\nFor more information, reach out to your manager {{managerDisplayName}} at {{managerEmail}}."
        },
        {
            "name": "locale",
            "value": "en-us"
        }
    ]
}
```

### Example 2: Generate a Temporary Access Pass (TAP) and send it to the user's manager

```json
{
    "category": "joiner",
    "continueOnError": false,
    "description": "Generate Temporary Access Pass and send via email to user's manager",
    "displayName": "Generate TAP and Send Email",
    "isEnabled": true,
    "taskDefinitionId": "1b555e50-7f65-41d5-b514-5894a026d10d",
    "arguments": [
        {
            "name": "tapLifetimeMinutes",
            "value": "480"
        },
        {
            "name": "tapIsUsableOnce",
            "value": "false"
        },
        {
            "name": "cc",
            "value": "068fa0c1-fa00-4f4f-8411-e968d921c3e7,9d208c40-7eb6-46ff-bebd-f30148c39b47"
        },
        {
            "name": "customSubject",
            "value": "Temporary access pass for your new employee {{userDisplayName}}"
        },
        {
            "name": "customBody",
            "value": "Hello {{managerDisplayName}}\n\nPlease find the temporary access pass for your new employee {{userDisplayName}} below:\n\n{{temporaryAccessPass}}\n\nRegards\nYour IT department"
        },
        {
            "name": "locale",
            "value": "en-us"
        }
    ]
}
```

### Example 3: Add a user to groups

```json
{
    "category": "joiner,leaver",
    "description": "Add user to groups",
    "displayName": "AddUserToGroup",
    "isEnabled": true,
    "continueOnError": true,
    "taskDefinitionId": "22085229-5809-45e8-97fd-270d28d66910",
    "arguments": [
        {
            "name": "groupID",
            "value": "06269010-2d8e-48e4-8f0e-33580720c9e1, 06bba22c-775e-42d8-b451-4221af061af0, 182f68db-6513-4e79-9ec2-a7e89a460e7f"
        }
    ]
}
```

### Example 4: Add a user to teams

```json
{
    "category": "joiner,leaver",
    "description": "Add user to team",
    "displayName": "AddUserToTeam",
    "isEnabled": true,
    "continueOnError": true,
    "taskDefinitionId": "e440ed8d-25a1-4618-84ce-091ed5be5594",
    "arguments": [
        {
            "name": "teamID",
            "value": "06269010-2d8e-48e4-8f0e-33580720c9e1, 06bba22c-775e-42d8-b451-4221af061af0, 182f68db-6513-4e79-9ec2-a7e89a460e7f"
        }
    ]
}
```

### Example 5: Enable a user account

```json
{
    "category": "joiner,leaver",
    "description": "Enable user account",
    "displayName": "EnableUserAccount",
    "isEnabled": true,
    "continueOnError": true,
    "taskDefinitionId": "6fc52c9d-398b-4305-9763-15f42c1676fc",
    "arguments": []
}
```

### Example 6: Run a custom task extension

```json
{
    "category": "joiner,leaver",
    "description": "Run a Custom Task Extension to call-out to an external system.",
    "displayName": "Run a Custom Task Extension",
    "isEnabled": true,
    "continueOnError": true,
    "taskDefinitionId": "d79d1fcc-16be-490c-a865-f4533b1639ee",
    "arguments": [
        {
            "name": "customTaskExtensionID",
            "value": "<ID of your Custom Task Extension>"
        }
    ]
}
```

### Example 7: Disable a user account

```json
{
    "category": "joiner,leaver",
    "description": "Disable user account",
    "displayName": "DisableUserAccount",
    "isEnabled": true,
    "continueOnError": true,
    "taskDefinitionId": "1dfdfcc7-52fa-4c2e-bf3a-e3919cc12950",
    "arguments": []
}
```

### Example 8: Remove a user from selected groups

```json
{
    "category": "leaver",
    "displayName": "Remove user from selected groups",
    "description": "Remove user from membership of selected Azure AD groups",
    "isEnabled": true,
    "continueOnError": true,
    "taskDefinitionId": "1953a66c-751c-45e5-8bfe-01462c70da3c",
    "arguments": [
        {
            "name": "groupID",
            "value": "06269010-2d8e-48e4-8f0e-33580720c9e1, 06bba22c-775e-42d8-b451-4221af061af0, 182f68db-6513-4e79-9ec2-a7e89a460e7f"
        }
    ]
}
```

### Example 9: Remove a user from all groups

```json
{
    "category": "leaver",
    "continueOnError": true,
    "displayName": "Remove user from all groups",
    "description": "Remove user from all Azure AD groups memberships",
    "isEnabled": true,
    "taskDefinitionId": "b3a31406-2a15-4c9a-b25b-a658fa5f07fc",
    "arguments": []
}
```

### Example 10: Remove a user from selected teams

```json
{
    "category": "joiner,leaver",
    "continueOnError": true,
    "displayName": "Remove user from selected Teams",
    "description": "Remove user from membership of selected Teams",
    "isEnabled": true,
    "taskDefinitionId": "06aa7acb-01af-4824-8899-b14e5ed788d6",
    "arguments": [
        {
            "name": "teamID",
            "value": "TeamId1, TeamId2, TeamId3, ..."
        }
    ]
}
```

### Example 11: Remove a user from all teams

```json
{
    "category": "leaver",
    "continueOnError": true,
    "description": "Remove user from all Teams",
    "displayName": "Remove user from all Teams memberships",
    "isEnabled": true,
    "taskDefinitionId": "81f7b200-2816-4b3b-8c5d-dc556f07b024",
    "arguments": []
}
```

### Example 12: Remove all license assignments from a user

```json
{
    "category": "leaver",
    "continueOnError": true,
    "displayName": "Remove all licenses for user",
    "description": "Remove all licenses assigned to the user",
    "isEnabled": true,
    "taskDefinitionId": "8fa97d28-3e52-4985-b3a9-a1126f9b8b4e",
    "arguments": []
}
```

### Example 13: Delete a user

```json
{
    "category": "leaver",
    "continueOnError": true,
    "displayName": "Delete user account",
    "description": "Delete user account in Azure AD",
    "isEnabled": true,
    "taskDefinitionId": "8d18588d-9ad3-4c0f-99d0-ec215f0e3dff",
    "arguments": []
}
```

### Example 14: Send an email to notify a manager of a user move

```json
{
    "category": "mover",
    "continueOnError": false,
    "description": "Send email to notify user\u2019s manager of user move",
    "displayName": "Send email to notify manager of user move",
    "isEnabled": true,
    "taskDefinitionId": "aab41899-9972-422a-9d97-f626014578b7",
    "arguments": [
        {
            "name": "cc",
            "value": "ac17d108-60cd-4eb2-a4b4-084cacda33f2,7d3ee937-edcc-46b0-9e2c-f832e01231ea"
        },
        {
            "name": "customSubject",
            "value": "{{userDisplayName}} has moved"
        },
        {
            "name": "customBody",
            "value": "Hello {{managerDisplayName}}\n\nwe are reaching out to let you know {{userDisplayName}} has moved in the organization.\n\nRegards\nYour IT department"
        },
        {
            "name": "locale",
            "value": "en-us"
        }
    ]
}
```

### Example 15: Send an email to a manager before a user's last day

```json
{
    "category": "leaver",
    "continueOnError": false,
    "description": "Send offboarding email to user's manager before the last day of work",
    "displayName": "Send email before user's last day",
    "isEnabled": true,
    "taskDefinitionId": "52853a3e-f4e5-4eb8-bb24-1ac09a1da935",
    "arguments": [
        {
            "name": "cc",
            "value": "068fa0c1-fa00-4f4f-8411-e968d921c3e7,e94ad2cd-d590-4b39-8e46-bb4f8e293f85"
        },
        {
            "name": "customSubject",
            "value": "Reminder that {{userDisplayName}}'s last day is coming up"
        },
        {
            "name": "customBody",
            "value": "Hello {{managerDisplayName}}\n\nthis is a reminder that {{userDisplayName}}'s last day is coming up.\n\nRegards\nYour IT department"
        },
        {
            "name": "locale",
            "value": "en-us"
        }
    ]
}
```

### Example 16: Send an email on a user's last day

```json
{
    "category": "leaver",
    "continueOnError": false,
    "description": "Send offboarding email to user's manager on the last day of work",
    "displayName": "Send email on user's last day",
    "isEnabled": true,
    "taskDefinitionId": "9c0a1eaf-5bda-4392-9d9e-6e155bb57411",
    "arguments": [
        {
            "name": "cc",
            "value": "068fa0c1-fa00-4f4f-8411-e968d921c3e7,e94ad2cd-d590-4b39-8e46-bb4f8e293f85"
        },
        {
            "name": "customSubject",
            "value": "{{userDisplayName}}'s last day"
        },
        {
            "name": "customBody",
            "value": "Hello {{managerDisplayName}}\n\nthis is a reminder that {{userDisplayName}}'s last day is today and their access will be revoked.\n\nRegards\nYour IT department"
        },
        {
            "name": "locale",
            "value": "en-us"
        }
    ]
}
```

### Example 17: Send the offboarding email to a user's manager after the user's last day of work

```json
{
    "category": "leaver",
    "continueOnError": true,
    "displayName": "Send offboarding email to user's manager after the last day of work",
    "description": "Send email after user's last day",
    "isEnabled": true,
    "continueOnError": true,
    "taskDefinitionId": "6f22ddd4-b3a5-47a4-a846-0d7c201a49ce",
    "arguments": []
}
```

### Example 18: Request user access package assignment

```json
{
    "category": "joiner,mover",
    "continueOnError": false,
    "description": "Request user assignment to selected access package",
    "displayName": "Request user access package assignment",
    "isEnabled": true,
    "taskDefinitionId": "c1ec1e76-f374-4375-aaa6-0bb6bd4c60be",
    "arguments": [
        {
            "name": "assignmentPolicyId",
            "value": "00d6fd25-6695-4f4a-8186-e4c6f901d2c1"
        },
        {
            "name": "accessPackageId",
            "value": "2ae5d6e5-6cbe-4710-82f2-09ef6ffff0d0"
        }
    ]
}
```

### Example 19: Remove access package assignment for a user

```json
{
    "category": "leaver,mover",
    "continueOnError": false,
    "description": "Remove user assignment of selected access package",
    "displayName": "Remove access package assignment for user",
    "isEnabled": true,
    "taskDefinitionId": "4a0b64f2-c7ec-46ba-b117-18f262946c50",
    "arguments": [
        {
            "name": "accessPackageId",
            "value": "2ae5d6e5-6cbe-4710-82f2-09ef6ffff0d0"
        }
    ]
}
```

### Example 20: Remove all access package assignments for a user

```json
{
    "category": "leaver",
    "continueOnError": false,
    "description": "Remove all access packages assigned to the user",
    "displayName": "Remove all access package assignments for user",
    "isEnabled": true,
    "taskDefinitionId": "42ae2956-193d-4f39-be06-691b8ac4fa1d",
    "arguments": []
}
```

### Example 21: Cancel pending access package assignment requests for a user

```json
{
    "category": "leaver",
    "continueOnError": false,
    "description": "Cancel all access package assignment requests pending for the user",
    "displayName": "Cancel all pending access package assignment requests for user",
    "isEnabled": true,
    "taskDefinitionId": "498770d9-bab7-4e4c-b73d-5ded82a1d0b3",
    "arguments": []
}
```

### Example 22: Send onboarding reminder email

```json
{
    "category": "joiner",
    "continueOnError": false,
    "description": "Send onboarding reminder email to user\u2019s manager",
    "displayName": "Send onboarding reminder email",
    "isEnabled": true,
    "taskDefinitionId": "3C860712-2D37-42A4-928F-5C93935D26A1",
    "arguments": [
        {
            "name": "cc",
            "value": "e94ad2cd-d590-4b39-8e46-bb4f8e293f85,068fa0c1-fa00-4f4f-8411-e968d921c3e7"
        },
        {
            "name": "customSubject",
            "value": "Reminder: {{userDisplayName}} is starting soon"
        },
        {
            "name": "customBody",
            "value": "Hello {{managerDisplayName}}\n\nthis is a reminder that {{userDisplayName}} is starting soon.\n\nRegards\nYour IT department"
        },
        {
            "name": "locale",
            "value": "en-us"
        }
    ]
}
```


## Related content

+ [Microsoft Entra ID Governance: Lifecycle Workflow built-in tasks](/entra/id-governance/lifecycle-workflow-tasks).
