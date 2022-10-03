---
title: "Overview of Lifecycle Workflows APIs"
description: "Use Lifecycle Workflows to manage the lifecycle of users in your organization."
ms.localizationpriority: medium
author: "AlexFilipin"
ms.prod: "governance"
doc_type: conceptualPageType
---

# Overview of Lifecycle Workflows APIs

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Lifecycle Workflows is an Identity Governance service in Azure Active Directory (Azure AD) that enables organizations to automate basic lifecycle processes for their users at three levels:

1. **Joiner**: When an individual comes into scope of needing access; for example, a new employee joining a company or organization.
2. **Mover**: When an individual moves between boundaries within an organization; for example, a user who was in marketing is now a member of the sales organization. This movement might require more access or authorization, or revocation of other privileges.
3. **Leaver**: When an individual leaves the scope of needing access, access might need to be revoked, and the user deprovisioned. For example, an employee who is retiring or has been terminated.

For this reason, Lifecycle Workflows can be referred to as the **Joiner-Mover-Leaver** (JML) workflow. Only the *joiner* and *leaver* processes are currently implemented.

The lifecycle workflows APIs in Microsoft Graph allow you to automate the Lifecycle Workflows capabilities for your organization. This article introduced the set of APIs that enable the Lifecycle Workflows service in Azure AD.

The lifecycle workflows APIs are defined in the OData subnamespace, microsoft.graph.identityGovernance.

[!INCLUDE [GDPR-related-guidance](../../includes/gdpr-msgraph-export-note.md)]

## Workflows

Workflows are containers for the processes involved in managing the life cycle of users in the organization. At their core are *tasks* and *execution conditions*.

+ [Tasks](#workflow-tasks) are specific actions that run automatically when a workflow is triggered.
+ [Execution conditions](#execution-conditions) define the *scope* of "who" and the *trigger* of "when" a workflow will run.

:::image type="content" source="../includes/identitygovernance-workflow-parts.png" alt-text="Parts of a workflow API object.":::

To create workflows, use one of the [predefined workflow templates](#workflow-templates), or integrate with Logic Apps to run custom workflows.

### Workflow templates

Azure AD provides the following six predefined **workflow templates** that define the templates for combinations of [*tasks*](#workflow-tasks) and *execution conditions* that can be part of a workflow. You can use the workflow templates to create your workflows programmatically.

[!INCLUDE [identitygovernance-lifecycleworkflows-workflowtemplates](../includes/identitygovernance-lifecycleworkflows-workflowtemplates.md)]

Use the [workflowTemplate resource type](identitygovernance-workflowtemplate.md) and its associated methods to identify the preconfigured templates, and the tasks and execution conditions that they support, and copy and use the templates to [create your workflows](#create-and-manage-workflows) programmatically.

### General workflow information

Each workflow contains general descriptive information such as it's identifier, name, description, and whether it is enabled to run as scheduled or on-demand.

### Workflow tasks

Workflow tasks are specific actions that run automatically when a workflow is triggered. Lifecycle Workflows defines the following preconfigured and read-only tasks that are allowed for the specified workflow categories. These task definitions show the configuration that's allowed for the task type in your workflow.

[!INCLUDE [identitygovernance-lifecycleworkflows-tasks](~/Azure_docs/includes/lifecycle-workflows-tasks-table.md)]

For example, the following JSON object represents the configuration of a built-in task that's identified by taskDefinitionId `1b555e50-7f65-41d5-b514-5894a026d10d`.

```json
{
    "category": "joiner",
    "description": "Generate Temporary Access Pass and send via email to user's manager",
    "displayName": "Generate TAP And Send Email",
    "id": "1b555e50-7f65-41d5-b514-5894a026d10d",
    "version": 1,
    "parameters": [
        {
            "name": "tapLifetimeMinutes",
            "values": [],
            "valueType": "string"
        },
        {
            "name": "tapIsUsableOnce",
            "values": [
                "true",
                "false"
            ],
            "valueType": "enum"
        }
    ]
}
```

Use the [taskDefinition resource type](identitygovernance-taskdefinition.md) and its associated methods to discover all the predefined tasks that you can configure for your workflow.

### Execution conditions

For every workflow task, there's an execution condition that defines the *scope* of "who" and the *trigger* of "when" a workflow and it's associated tasks will run. For example, an execution condition can specify that a workflow runs for exiting employees, seven days before their employment end date, if they are in the R&D department. The associated task in the workflow can specify that the user is removed from the R&D teams and groups.

```json
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

After identifying the tasks and execution conditions that you want to define for your workflow, use the [workflow resource type](identitygovernance-workflow.md), and its associated methods to create and manage the workflow. You can create up to 50 workflows in a tenant. The category of the task must match the category of the workflow. Each workflow can have up to 25 tasks. Therefore:

+ A task supported for only the "leaver" workflow category can't be specified in a "joiner" workflow scenario, and vice versa.
+ A task supported for both "leaver" and "joiner" workflow categories can be specified in either a "joiner" or "leaver" workflow scenario.

You can schedule a workflow to run based on the [tenant-wide schedule](#settings) or run it on-demand. For example, a daily workflow can provision access for new employees, while you can run a custom extension to immediately terminate an employee's access to sensitive resources after a security breach.

The following JSON object shows an example workflow with the following settings:
+ The workflow is enabled and scheduled to run.
+ It is a "leaver" workflow that specifies the following tasks and execution conditions:
    + Execution conditions: Run the workflow for users in the R&D department, seven days before their employeeLeaveDateTime.
    + Tasks: Remove the user from one group and one team.

```json
{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/workflows/$entity",
  "category": "leaver",
  "description": "Pre-offboarding tasks for employees in the R&D department before their last day of work to comply with Contoso's security policies.",
  "displayName": "Pre-Offboarding employees in the R&D department",
  "lastModifiedDateTime": "2022-09-27T17:27:51.3504189Z",
  "createdDateTime": "2022-09-27T17:27:51.3504046Z",
  "deletedDateTime": null,
  "id": "c0548e6c-8849-46e8-be14-8b6d2b04957e",
  "isEnabled": true,
  "isSchedulingEnabled": true,
  "nextScheduleRunDateTime": "2022-09-27T20:27:53Z",
  "version": 1,
  "executionConditions": {
      "@odata.type": "#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions",
      "scope": {
          "@odata.type": "#microsoft.graph.identityGovernance.ruleBasedSubjectSet",
          "rule": "(department eq 'R&D')"
      },
      "trigger": {
          "@odata.type": "#microsoft.graph.identityGovernance.timeBasedAttributeTrigger",
          "timeBasedAttribute": "employeeLeaveDateTime",
          "offsetInDays": -7
      }
  },
  "lastModifiedBy": {
      "id": "10a08e2e-3ea2-4ce0-80cb-d5fdd4b05ea6"
  },
  "tasks@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/workflows('c0548e6c-8849-46e8-be14-8b6d2b04957e')/tasks",
  "tasks": [
      {
          "category": "joiner,leaver",
          "continueOnError": false,
          "description": "Remove user from membership of selected Azure AD groups",
          "displayName": "Remove user from selected groups",
          "executionSequence": 1,
          "id": "e77a7588-fb91-4155-a533-d4daffc2f29d",
          "isEnabled": true,
          "taskDefinitionId": "1953a66c-751c-45e5-8bfe-01462c70da3c",
          "arguments": [
              {
                  "name": "groupID",
                  "value": "7e30d4be-1858-48cd-b3af-c9efd3df7263"
              }
          ]
      },
      {
          "category": "joiner,leaver",
          "continueOnError": false,
          "description": "Remove user from membership of selected Teams",
          "displayName": "Remove user from selected Teams",
          "executionSequence": 2,
          "id": "78520f52-3f2d-44de-8830-562f2b6b3990",
          "isEnabled": true,
          "taskDefinitionId": "06aa7acb-01af-4824-8899-b14e5ed788d6",
          "arguments": [
              {
                  "name": "teamID",
                  "value": "7e30d4be-1858-48cd-b3af-c9efd3df7263"
              }
          ]
      }
  ],
  "createdBy": {
      "id": "10a08e2e-3ea2-4ce0-80cb-d5fdd4b05ea6"
  }
}
```

### Workflow versions

While a workflow is in use, you may need to update execution conditions and tasks for a workflow. However, Lifecycle Workflows doesn't allow you to update these properties for an existing workflow.

Instead of creating new workflows, use the [workflowVersion resource type](identitygovernance-workflowversion.md) and it's associated methods to create and manage a new workflow version, based off an existing workflow object. The workflow version can have similar or a different set of tasks and execution conditions.

## Reports

Lifecycle Workflows supports extensive reporting capabilities to track the status of workflow processing at the workflow run-level, task-level, and user-level.

For more information about the reporting capabilities for Lifecycle Workflows, see the [overview of Lifecycle Workflows reporting APIs](identitygovernance-lifecycleworkflows-reporting-overview.md)
<!--Scope: user-level vs task-level vs run-level; Audit logs-->

## Extensions

Sometimes, the built-in tasks may not be adequate to fulfill all your business scenarios. To extend your lifecycle management scenarios, Lifecycle Workflows supports defining custom tasks to integrate with external systems via Azure Logic Apps. For example, for a "leaver" scenario, you may also want to grant the user's manager access to the user's email account.

Use the [customTaskExtension resource type](identitygovernance-customtaskextension.md) and its associated methods to define the settings for your Azure Logic App.

## Settings

Each tenant defines a tenant-wide [schedule](identitygovernance-lifecyclemanagementsettings.md) when all scheduled workflows are run. The tenant can adopt the Azure AD-defined default schedule where workflows are run every three hours, or modify the schedule to run between 1 hour and 24 hours.

## License checks

The Lifecycle Workflows feature, including the API, is included in the Azure AD Premium P2 license. The tenant where Lifecycle Workflows are being created must have a valid purchased, or trial, Azure AD Premium P2 or EMS E5 subscription. For more information about the license requirements, see [Lifecycle Workflows license requirements](/azure/active-directory/governance/what-are-lifecycle-workflows.md#license-requirements).

## Role and application permission authorization checks

The following [Azure AD roles](/azure/active-directory/roles/permissions-reference) are required for a calling user to manage Lifecycle Workflows.

| Operation | Application permissions | Required directory role of the calling user |
|:------------------|:------------|:--------------------------------------------|
| Read | LifecycleWorkflows.Read.All or LifecycleWorkflows.ReadWrite.All | Global Admin, Global Reader or Lifecycle Workflows Administrator |
| Create, Update or Delete | LifecycleWorkflows.ReadWrite.All | Global Administrator or Lifecycle Workflows Administrator |

## See also

+ [What are Lifecycle Workflows? (Public Preview)](/azure/active-directory/governance/what-are-lifecycle-workflows)
+ [Concepts in Lifecycle Workflows](/azure/active-directory/governance/understanding-lifecycle-workflows)
+ [Tutorial: Automate employee offboarding tasks after their last day of work with Microsoft Graph (preview)](/azure/active-directory/governance/tutorial-scheduled-leaver-graph)
+ [Tutorial: Execute employee offboarding tasks in real-time on their last day of work with Microsoft Graph (preview)](/azure/active-directory/governance/tutorial-offboard-custom-workflow-graph)
+ [Tutorial: Automate employee onboarding tasks before their first day of work with Microsoft Graph (preview)](/azure/active-directory/governance/tutorial-onboard-custom-workflow-graph)