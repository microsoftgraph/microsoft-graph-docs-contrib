---
title: "Business Scenarios API (Preview) Planner Overview"
description: ""
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.prod: ""
---

# Working with Planner in Business Scenarios (Preview)

Planner APIs in [Business Scenarios](businessscenario-overview.md) allow creating tasks with scenario controlled policies, in a specified target. In the current version a [group](group.md) can be targeted, and a [plannerPlan](plannerplan.md) based on the scenario configuration will be created, and tasks will be created in this plan.

## Planner configuration

In Business Scenarios Planner entities can be configued in two ways. First is the Plan configuration which defines the elements of the Plans created to host scenario tasks. Second is the Task configuration which controls how created tasks behave for users and applications.

### Plan Configuration

Plan configuration is represented by the [plannerPlanConfiguration](plannerplanconfiguration.md) entity. In plan configuration the application can configure the the buckets that will appear in the plan, the order of these buckets, as well as the title of the plan and the name of the buckets. Each bucket is identified by an external id, which can be used when creating tasks or updating the tasks to put them in the correct bucket. The buckets configured in the plan configuration does not specify any names to be used, instead this information is part of the localized names. Plan configuration also specifies localized names for the plan and the buckets as well as the the default language code. Currently created items will use the default language.

### Task Configuration

Task configuration is represented by the [plannerTaskConfiguration](plannertaskconfiguration.md) entity. In task configuration the application can configure the policies that restrict the access to the applications and users that will use the tasks managed by the scenario. The policies are are grouped by [roles](plannerrelationshipbasedusertype.md). Each role identifies a group of callers, and each group can have a different rules specified for them. The rules that apply to a specific call are picked in the following order. Only the first specified rules will apply, and the rules only apply when the request is modifying a task.

* `taskAssignees`: Applies if the target task is assigned to the user making the call.
* `groupOwners`: Applies if the user making the call is an owner of the container that the plan of the target task is in.
* `groupMembers`: Applies if the user making the call is a member of the container that the plan of the task is in.
* `applications`: Applies if the caller is application permissions, therefore the call isn't associated with a user..
* `defaultRules`: Applies when none of the other conditions match.

Please note that these rules restrict what the caller can do, but they cannot allow the caller to perform operations that they would otherwise not be permitted to.

Each role specifies a default rule, and rules for specific actions and fields on task. The default rule must be either `allow` or `block`. If a action or field doesn't have a rule defined for it, the default rule will be used to either keep it unrestricted for `allow`, or blocked from getting used for `block`. Keep in mind this applies when new properties and actions are available to be configured, but the scenario configuration is not yet updated to specify rules for these.

See [Planner Task Rules Overview](planner-task-rules-overview.md) for more information about using rules.

## Targeting Tasks

## Task Metadata & Behavior
