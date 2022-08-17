---
title: "Azure AD Lifecycle Workflows"
description: "You can use Azure AD Lifecycle Workflows to manage the lifecycle of users in your organization. This documentation serves the 2nd version of the APIs."
ms.localizationpriority: medium
author: "AlexFilipin"
ms.prod: "governance"
doc_type: conceptualPageType
---

# Azure AD Lifecycle Workflows

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Azure AD Lifecycle Workflows is a new Azure AD Identity Governance service that enables organizations to manage Azure AD users by automating these three basic lifecycle processes:

Typical customer scenarios for Lifecycle Workflows include:

- **Joiner**:  When an individual comes into scope of needing access. An example is a new employee joining a company or organization.
- **Mover**: When an individual moves between boundaries within an organization. This movement may require more access or authorization. An example would be a user who was in marketing is now a member of the sales organization.
- **Leaver**: When an individual leaves the scope of needing access, access may need to be removed. Examples would be an employee who is retiring or an employee who has been terminated.

Note that the Lifecycle Workflows feature, including the API, is included in Azure AD Premium P2.  The tenant where Lifecycle Workflows are being created must have a valid purchased, or trial, Azure AD Premium P2 or EMS E5 subscription. For more information about the license requirements, see [Lifecycle Workflows license requirements](/azure/active-directory/governance/what-are-lifecycle-workflows.md#license-requirements).

[!INCLUDE [GDPR-related-guidance](../../includes/gdpr-msgraph-export-note.md)]

## Methods

The following table lists the methods that you can use to interact with Lifecycle Workflows-related resources.

|Method|Return type|Description|
|:---|:---|:---|
|[List workflows](../api/deleteditemcontainer-list-workflows.md)|[microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md) collection|Get a list of the [workflow](../resources/identitygovernance-workflow.md) objects and their properties.|
|[Create workflow](../api/deleteditemcontainer-post-workflows.md)|[microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md)|Create a new [workflow](../resources/identitygovernance-workflow.md) object.|
|[Get workflow](../api/identitygovernance-workflow-get.md)|[microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md)|Read the properties and relationships of a [workflow](../resources/identitygovernance-workflow.md) object.|
|[Update workflow](../api/identitygovernance-workflow-update.md)|[microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md)|Update the properties of a [workflow](../resources/identitygovernance-workflow.md) object.|
|[Delete workflow](../api/deleteditemcontainer-delete-workflows.md)|None|Deletes a [workflow](../resources/identitygovernance-workflow.md) object.|
|[activate](../api/identitygovernance-workflow-activate.md)|None|Activate the workflow object.|
|[createNewVersion](../api/identitygovernance-workflow-createnewversion.md)|[microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md)|Create a new version of the workflow object.|
|[restore](../api/identitygovernance-workflow-restore.md)|[microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md)|Restore the workflow object.|
|[List user](../api/invitation-list-inviteduser.md)|[microsoft.graph.user](../resources/user.md) collection|Get the user resources from the createdBy navigation property.|
|[Add user](../api/identitygovernance-workflow-post-createdby.md)|[microsoft.graph.user](../resources/user.md)|Add createdBy by posting to the createdBy collection.|
|[Remove user](../api/identitygovernance-workflow-delete-createdby.md)|None|Remove a [user](../resources/user.md) object.|
|[List executionScope](../api/invitation-list-inviteduser.md)|[microsoft.graph.user](../resources/user.md) collection|Get the user resources from the executionScope navigation property.|
|[Add user](../api/identitygovernance-workflow-post-executionscope.md)|[microsoft.graph.user](../resources/user.md)|Add executionScope by posting to the executionScope collection.|
|[Remove executionScope](../api/identitygovernance-workflow-delete-executionscope.md)|None|Remove a [user](../resources/user.md) object.|
|[List user](../api/invitation-list-inviteduser.md)|[microsoft.graph.user](../resources/user.md) collection|Get the user resources from the lastModifiedBy navigation property.|
|[Add user](../api/identitygovernance-workflow-post-lastmodifiedby.md)|[microsoft.graph.user](../resources/user.md)|Add lastModifiedBy by posting to the lastModifiedBy collection.|
|[Remove user](../api/identitygovernance-workflow-delete-lastmodifiedby.md)|None|Remove a [user](../resources/user.md) object.|
|[List runs](../api/identitygovernance-workflow-list-runs.md)|[microsoft.graph.identityGovernance.run](../resources/identitygovernance-run.md) collection|Get the run resources from the runs navigation property.|
|[Create run](../api/identitygovernance-workflow-post-runs.md)|[microsoft.graph.identityGovernance.run](../resources/identitygovernance-run.md)|Create a new run object.|
|[List tasks](../api/identitygovernance-taskprocessingresult-list-task.md)|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md) collection|Get the task resources from the tasks navigation property.|
|[Create task](../api/identitygovernance-workflow-post-tasks.md)|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md)|Create a new task object.|
|[List userProcessingResults](../api/identitygovernance-run-list-userprocessingresults.md)|[microsoft.graph.identityGovernance.userProcessingResult](../resources/identitygovernance-userprocessingresult.md) collection|Get the userProcessingResult resources from the userProcessingResults navigation property.|
|[Create userProcessingResult](../api/identitygovernance-workflow-post-userprocessingresults.md)|[microsoft.graph.identityGovernance.userProcessingResult](../resources/identitygovernance-userprocessingresult.md)|Create a new userProcessingResult object.|
|[List versions](../api/identitygovernance-workflow-list-versions.md)|[microsoft.graph.identityGovernance.workflowVersion](../resources/identitygovernance-workflowversion.md) collection|Get the workflowVersion resources from the versions navigation property.|
|[Create workflowVersion](../api/identitygovernance-workflow-post-versions.md)|[microsoft.graph.identityGovernance.workflowVersion](../resources/identitygovernance-workflowversion.md)|Create a new workflowVersion object.|

## Role and application permission authorization checks

The following [Azure AD roles](/azure/active-directory/roles/permissions-reference) are required for a calling user to manage Lifecycle Workflows.

| Operation | Application permissions | Required directory role of the calling user |
|:------------------|:------------|:--------------------------------------------|
| Read | LifecycleWorkflows.Read.All or LifecycleWorkflows.ReadWrite.All | Global Administrator, Global Reader, Security Administrator, Security Reader or User Administrator |
| Create, Update or Delete | LifecycleWorkflows.ReadWrite.All | Global Administrator or User Administrator |

## See also

- [Tutorials](/graph/lifecycleworkflows-overview) to learn how to use the Lifecycle Workflows API to automate lifecycle in your organization.
- [Onboard users to your organization using Lifecycle Workflows API](/azure/active-directory/active-directory-azure-ad-controls-manage-user-access-with-access-reviews)
- [Offboard users to your organization using Lifecycle Workflows API](/azure/active-directory/active-directory-azure-ad-controls-manage-guest-access-with-access-reviews)


<!--
{
  "type": "#page.annotation",
  "description": "Service root",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
