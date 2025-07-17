---
title: "Overview of Lifecycle Workflows APIs"
description: "Use Lifecycle Workflows to manage the lifecycle of users in your organization."
ms.localizationpriority: medium
author: "AlexFilipin"
ms.subservice: "entra-id-governance"
doc_type: conceptualPageType
ms.topic: overview
ms.date: 03/12/2024
---

# Overview of Lifecycle Workflows APIs

Lifecycle Workflows is an Identity Governance service in Microsoft Entra ID that enables organizations to automate basic lifecycle processes for their users at three levels:

1. **Joiner**: When an individual comes into scope of needing access; for example, a new employee joining a company or organization.
2. **Mover**: When an individual moves between boundaries within an organization; for example, a user who was in marketing is now a member of the sales organization. This movement might require more access or authorization, or revocation of other privileges.
3. **Leaver**: When an individual leaves the scope of needing access, access might need to be revoked, and the user deprovisioned. For example, an employee who is retiring or terminated.

For this reason, lifecycle workflows can be referred to as the **Joiner-Mover-Leaver** (JML) workflow.

The lifecycle workflow APIs in Microsoft Graph allow you to automate the lifecycle workflows capabilities for your organization. This article introduced the set of APIs that enable the Lifecycle Workflows service in Microsoft Entra ID.

The lifecycle workflows APIs are defined in the OData subnamespace, microsoft.graph.identityGovernance.

[!INCLUDE [GDPR-related-guidance](../../includes/gdpr-msgraph-export-note.md)]

## Workflows

Workflows are containers for the processes involved in managing the life cycle of users in the organization. At their core are *tasks* and *execution conditions*.

+ [Tasks](#workflow-tasks) are specific actions that run automatically when a workflow is triggered.
+ [Execution conditions](#execution-conditions) define the *scope* of "who" and the *trigger* of "when" a workflow runs.

<!-- :::image type="content" source="../../../concepts/images/identitygovernance-workflow-parts.png" alt-text="Parts of a workflow API object.":::-->

To create workflows, we recommend using one of the [predefined workflow templates](#workflow-templates).

### Workflow templates

Microsoft Entra ID provides the following predefined **workflow templates** that define the templates for combinations of [*tasks*](#workflow-tasks) and *execution conditions* that can be part of a workflow. You can use the workflow templates to create your workflows programmatically.

[!INCLUDE [identitygovernance-lifecycleworkflows-workflowtemplates](../includes/identitygovernance-lifecycleworkflows-workflowtemplates.md)]

Use the [workflowTemplate resource type](identitygovernance-workflowtemplate.md) and its associated methods to identify the preconfigured templates, and the tasks and execution conditions that they support, and copy and use the templates to [create your workflows](#create-and-manage-workflows) programmatically.

### General workflow information

Each workflow contains general descriptive information such as its identifier, name, description, and whether it's enabled to run as scheduled or on-demand.

### Workflow tasks

Workflow tasks are specific actions that run automatically when a workflow is triggered. Lifecycle workflows define the following preconfigured and read-only tasks allowed for the specified workflow categories. These task definitions show the settings for the task type, guiding you as you create tasks for your workflow.

[!INCLUDE [lifecycle-workflows-tasks-table](../includes/identitygovernance-lifecycleworkflows-tasks-table.md)]

Use the [taskDefinition resource type](identitygovernance-taskdefinition.md) and its associated methods to discover all the predefined tasks that can be configured for your workflow and the settings for the properties. The [task](identitygovernance-task.md) resource type and its associated GET methods allow you to view the tasks configured for your workflow.

### Execution conditions

For every workflow task, there's an execution condition that defines the *scope* of "who" and the *trigger* of "when" a workflow and its associated tasks runs. For example, an execution condition can specify that a workflow runs for exiting employees, seven days before their employment end date, if they are in the R&D department. The associated task in the workflow can specify that the user is removed from the R&D teams and groups.

```json
⁄⁄Sample snippet for the executionConditions object

"executionConditions": {
    "@odata.type": "#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions",
    "scope": {
        "@odata.type": "#microsoft.graph.identityGovernance.ruleBasedSubjectSet",
        "rule": "department eq 'R&D'"
    },
    "trigger": {
        "@odata.type": "#microsoft.graph.identityGovernance.timeBasedAttributeTrigger",
        "timeBasedAttribute": "employeeLeaveDateTime",
        "offsetInDays": -7
    }
}
```

When creating or updating a workflow, use the [workflowExecutionConditions resource type](identitygovernance-workflowexecutionconditions.md) to configure the execution conditions. Use this object to also configure a workflow that runs on-demand only.

### Create and manage workflows

After identifying the tasks and execution conditions that you want to define for your workflow, use the [workflow resource type](identitygovernance-workflow.md), and its associated methods to create and manage the workflow. You can create up to 100 workflows in a tenant. The category of the task must match the category of the workflow. Each workflow can have up to 25 tasks. Therefore:

+ A task supported for only the "leaver" workflow category can't be specified in a "joiner" or "mover" workflow scenario, and vice versa.
+ A task supported for "joiner", "mover", and "leaver" workflow categories can be specified in either a "joiner", "mover" or "leaver" workflow scenario.

You can schedule a workflow to run based on the [tenant-wide schedule](#settings) or run it on-demand. The tenant schedule can take care of scheduled new hires and terminations, while you can run a workflow on-demand immediately to terminate an employee's access if there is a sensitive event.

### Workflow versions

While a workflow is in use, you might need to update execution conditions and tasks for a workflow. However, Lifecycle Workflows doesn't allow you to update these properties for an existing workflow.

Instead of creating new workflows, use the [workflowVersion resource type](identitygovernance-workflowversion.md) and its associated methods to create and manage a new workflow version, based on an existing workflow object. The workflow version can have a similar or different set of tasks and execution conditions.

## Reports

Lifecycle workflows support extensive reporting capabilities to track the status of workflow processing at the workflow run-level, task-level, and user-level.

For more information about the reporting capabilities for Lifecycle Workflows, see the [overview of Lifecycle Workflows reporting APIs](identitygovernance-lifecycleworkflows-reporting-overview.md).

## Extensions

Sometimes, the built-in tasks might not be adequate to fulfill all your business scenarios. To extend your lifecycle management scenarios, Lifecycle Workflows supports defining custom tasks to integrate with external systems via Azure Logic Apps. For example, for a "leaver" scenario, you might also want to grant the user's manager access to the user's email account.

Use the [customTaskExtension resource type](identitygovernance-customtaskextension.md) and its associated methods to define the settings for your Azure Logic App.

## Settings

Each tenant defines a tenant-wide [schedule](identitygovernance-lifecyclemanagementsettings.md) when all scheduled workflows are run. The tenant can adopt the Microsoft Entra ID-defined default schedule where workflows are run every three hours, or modify the schedule to run between 1 hour and 24 hours.

## License checks

Using this feature requires Microsoft Entra ID Governance licenses. To find the right license for your requirements, see [Compare generally available features of Microsoft Microsoft Entra ID](https://www.microsoft.com/security/business/identity-access-management/azure-ad-pricing).

## Related content

+ [What are Lifecycle Workflows?](/azure/active-directory/governance/what-are-lifecycle-workflows)
+ [Concepts in Lifecycle Workflows](/azure/active-directory/governance/understanding-lifecycle-workflows)
+ [Tutorial: Automate employee offboarding tasks after their last day of work with Microsoft Graph](/azure/active-directory/governance/tutorial-scheduled-leaver-graph)
+ [Tutorial: Execute employee offboarding tasks in real-time on their last day of work with Microsoft Graph](/azure/active-directory/governance/tutorial-offboard-custom-workflow-graph)
+ [Tutorial: Automate employee onboarding tasks before their first day of work with Microsoft Graph](/azure/active-directory/governance/tutorial-onboard-custom-workflow-graph)

<!-- {
  "type": "#page.annotation",
  "section": "documentation",
  "suppressions": []
} -->
