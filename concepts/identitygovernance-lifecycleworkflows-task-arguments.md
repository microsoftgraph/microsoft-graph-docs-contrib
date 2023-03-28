---
title: "Configure the arguments for built-in Lifecycle Workflow tasks"
description: "Configure the arguments for built-in Lifecycle Workflow tasks. Learn the allowed configurations for the arguments property of various built-in tasks in Lifecycle Workflows."
author: "FaithOmbongi"
ms.author: ombongifaith
ms.reviewer: alexander.filipin
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: conceptualPageType
ms.date: 11/23/2022
---

# Configure the arguments for built-in Lifecycle Workflow tasks

The Lifecycle Workflows API in Microsoft Graph enables you to automate basic lifecycle processes for your users at three levels: Joiner, Leaver, and Mover. Core to the workflows are **tasks**, that represent the specific actions that run automatically when a workflow is triggered.

Microsoft Graph supports [16 built-in tasks](/graph/api/resources/identitygovernance-task) that you can use to create your custom workflows. Each task has a set of arguments that are allowed for that task. For example, a task to generate a temporary access pass (TAP) for a user allows you to configure the lifetime of the TAP and whether the user can reuse it. A task to add a user to a group requires you to specify the groups to which you want to add the user. This configuration is made on the **arguments** property of a task and is based on the [keyValuePair resource type](/graph/api/resources/keyvaluepair).

This article provides guidance on the allowed configuration for the **arguments** property of [tasks](/graph/api/resources/identitygovernance-task) in Lifecycle Workflows.

## Configure arguments for tasks

| Task description | taskDefinitionId | arguments |
|--|--|--|
| Send welcome email to new hire | 70b29d51-b59a-4773-9280-8841dfd3f2ea | name: `cc`<br/>value: A valid user ID (String) for the user you want to cc in the email.<br/><br/>name: `customSubject`<br/>value: A custom subject header for the email being sent.<br/><br/><br/>name: `customBody`<br/>value:The body of the customized email.<br/><br/><br/>name: `locale`<br/>value: Language value that overrides the email recipient's language settings. Will not customize the custom text of the email, and should be set in the same language as the custom text.  <br/> |
| Generate Temporary Access Pass and send via email to user's manager | 1b555e50-7f65-41d5-b514-5894a026d10d | name: `tapLifetimeMinutes`<br/>value: `10` upto `43000`<br/><br/>name: `tapIsUsableOnce`<br/>value: `true` or `false`<br/><br/>Prerequisites: <br/><ol><li>The user must be assigned a manager.<li>The user's manager must have their mail enabled.<li>The temporary access pass (TAP) policy must be enabled in the tenant and the user enabled to use the TAP authentication method. For more information, see [temporaryAccessPassAuthenticationMethodConfiguration resource type](/graph/api/resources/temporaryaccesspassauthenticationmethodconfiguration). </ol> |
| Add user to groups | 22085229-5809-45e8-97fd-270d28d66910 | name: `groupID`<br/>value: a valid group ID or a comma-separated list of groups to which the user will be added as a member. For example, `"06269010-2d8e-48e4-8f0e-33580720c9e1, 06bba22c-775e-42d8-b451-4221af061af0, 182f68db-6513-4e79-9ec2-a7e89a460e7f"` |
| Add user to teams | e440ed8d-25a1-4618-84ce-091ed5be5594 | name: `teamID`<br/>value: a valid group ID or a comma-separated list of teams to which the user will be added as a member. For example, `"06269010-2d8e-48e4-8f0e-33580720c9e1, 06bba22c-775e-42d8-b451-4221af061af0, 182f68db-6513-4e79-9ec2-a7e89a460e7f"` |
| Enable user account | 6fc52c9d-398b-4305-9763-15f42c1676fc | None |
| Run a custom task extension | 4262b724-8dba-4fad-afc3-43fcbb497a0e | name: `CustomTaskExtensionID`<br/>value: The ID of the custom task extension |
| Disable user account | 1dfdfcc7-52fa-4c2e-bf3a-e3919cc12950 | None |
| Remove user from selected group | 1953a66c-751c-45e5-8bfe-01462c70da3c | name: `groupID`<br/>value: a valid group ID or a comma-separated list of groups that the user is a member of. For example, `"06269010-2d8e-48e4-8f0e-33580720c9e1, 06bba22c-775e-42d8-b451-4221af061af0, 182f68db-6513-4e79-9ec2-a7e89a460e7f"` |
| Remove users from all groups | b3a31406-2a15-4c9a-b25b-a658fa5f07fc | None |
| Remove user from teams | 06aa7acb-01af-4824-8899-b14e5ed788d6 | name: `teamID`<br/>value: a comma-separated list of teams that the user is a member of. For example, `"06269010-2d8e-48e4-8f0e-33580720c9e1, 06bba22c-775e-42d8-b451-4221af061af0, 182f68db-6513-4e79-9ec2-a7e89a460e7f"` |
| Remove user from all teams | 81f7b200-2816-4b3b-8c5d-dc556f07b024 | None |
| Remove all license assignments from user | 8fa97d28-3e52-4985-b3a9-a1126f9b8b4e | None |
| Delete user | 8d18588d-9ad3-4c0f-99d0-ec215f0e3dff | None |
| Send email to manager before user last day | 52853a3e-f4e5-4eb8-bb24-1ac09a1da935 | name: `cc`<br/>value: A valid user ID (String) for the user you want to cc in the email.<br/><br/>name: `customSubject`<br/>value: A custom subject header for the email being sent.<br/><br/><br/>name: `customBody`<br/>value:The body of the customized email.<br/><br/><br/>name: `locale`<br/>value: Language value that overrides the email recipient's language settings. Will not customize the custom text of the email, and should be set in the same language as the custom text.  <br/> |
| Send email on users last day | 9c0a1eaf-5bda-4392-9d9e-6e155bb57411 | name: `cc`<br/>value: A valid user ID (String) for the user you want to cc in the email.<br/><br/>name: `customSubject`<br/>value: A custom subject for the email being sent.<br/><br/><br/>name: `customBody`<br/>value:The body of the customized email.<br/><br/><br/>name: `locale`<br/>value: Language value that overrides the email recipient's language settings. Will not customize the custom text of the email, and should be set in the same language as the custom text.  <br/> |
| Send offboarding email to users manager after their last day | 6f22ddd4-b3a5-47a4-a846-0d7c201a49ce | name: `cc`<br/>value: A valid user ID (String) for the user you want to cc in the email.<br/><br/>name: `customSubject`<br/>value: A custom subject header for the email being sent.<br/><br/><br/>name: `customBody`<br/>value:The body of the customized email.<br/><br/><br/>name: `locale`<br/>value: Language value that overrides the email recipient's language settings. Will not customize the custom text of the email, and should be set in the same language as the custom text.  <br/> |

## Examples

### Example 1: Configure a task based on taskDefinitionId 6f22ddd4-b3a5-47a4-a846-0d7c201a49ce

```http
{
    "category": "leaver",
    "continueOnError": true,
    "displayName": "Send offboarding email to user's manager after the last day of work",
    "description": "Send email after user’s last day",
    "isEnabled": true,
    "continueOnError": true,
    "taskDefinitionId": "6f22ddd4-b3a5-47a4-a846-0d7c201a49ce",
    "arguments": []
}
```

### Example 2: Configure a task based on taskDefinitionId e440ed8d-25a1-4618-84ce-091ed5be5594

```http
{
    "category": "leaver",
    "description": "Add user to university alumni team",
    "displayName": "AddUserToUniAlumniTeam",
    "isEnabled": true,
    "continueOnError": true,
    "taskDefinitionId": "e440ed8d-25a1-4618-84ce-091ed5be5594",
    "arguments": [
        {
            "name": "teamID",
            "value": "e3cc382a-c4b6-4a8c-b26d-a9a3855421bd"
        }
    ]
}
```

## Next steps

+ [Lifecycle Workflows](/graph/api/resources/identitygovernance-lifecycleworkflows-overview)
