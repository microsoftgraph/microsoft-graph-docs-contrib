---
title: "Use the business scenarios API in Microsoft Graph to integrate with Planner (preview)"
description: "Learn how to use the business scenarios in Microsoft Graph to integrate with Planner."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.prod: "business-scenarios"
doc_type: conceptualPageType
---

# Use the business scenarios API in Microsoft Graph to integrate with Planner (preview)

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The [business scenarios API](businessscenario-overview.md) allows creating Planner tasks with scenario-controlled policies, in a specified target.

## Planner configuration

Using the business scenarios API, apps can configure Planner entities in two ways. First is the plan configuration which defines the elements of the plans created to host scenario tasks. Second is the task configuration which controls how created tasks behave for users and applications.

### Plan configuration

Plan configuration is represented by the [plannerPlanConfiguration](plannerplanconfiguration.md) entity. In plan configuration, the application can configure the buckets that will appear in the plan, the order of these buckets, as well as the title of the plan and the name of the buckets. Each bucket is identified by an external ID, which can be used when creating tasks or updating the tasks to put them in the correct bucket. The buckets configured in the plan configuration do not specify any names to be used, instead this information is part of the localized names. Plan configuration also specifies localized names for the plan and the buckets as well as the default language code. Currently, created items will use the default language.

### Task configuration

Task configuration is represented by the [plannerTaskConfiguration](plannertaskconfiguration.md) entity. In task configuration the application can configure the policies that restrict the access to the applications and users that will use the tasks managed by the scenario. The policies are grouped by [roles](plannerrelationshipbasedusertype.md). Each role identifies a group of callers, and each group can have a different rules specified for them. The rules that apply to a specific call are picked in the following order. Only the first specified rules will apply, and the rules only apply when the request is modifying a task.

- `taskAssignees`: Applies if the target task is assigned to the user making the call.
- `groupOwners`: Applies if the user making the call is an owner of the container that the plan of the target task is in.
- `groupMembers`: Applies if the user making the call is a member of the container that the plan of the task is in.
- `applications`: Applies if the caller is application permissions, therefore the call isn't associated with a user.
- `defaultRules`: Applies when none of the other conditions match.

>**Note:** These rules restrict what the caller can do, but they cannot allow the caller to perform operations that they would otherwise not be permitted to.

Each role specifies a default rule, and rules for specific actions and fields on task. The default rule must be either `allow` or `block`. If an action or field doesn't have a rule defined for it, the default rule will be used to either keep it unrestricted for `allow`, or blocked from getting used for `block`. Keep in mind that this applies when new properties and actions are available to be configured, but the scenario configuration is not yet updated to specify rules for these.

For more information about using rules, see [Configuring task rules in Planner](/graph/planner-task-rules-overview).

## Targeting tasks

Created tasks are placed in plans based on the specified target when they are created. In the current version, a [group](group.md) can be targeted. The task will be placed in the [plan](plannerplan.md) associated with the scenario in that group. If the group doesn't have a plan for the scenario, a new plan is going to be created based on the plan configuration.

## Task metadata and behavior

As part of the tasks, [scenario properties](businessscenarioproperties.md) are required. These properties include the external ID of the task, which is required to be specified for each task. This value must be unique within the tenant. If you create a second task with the same external ID, it will cause the first task to be returned without any modifications. You can also use the external ID as an alternate key when working with tasks. Additionally, a context ID can be specified for each task. This value can be used to query the tasks with the same context ID, allowing the applications to group tasks across plans.
