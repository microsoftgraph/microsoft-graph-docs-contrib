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

Use [Azure AD access reviews](/azure/active-directory/active-directory-azure-ad-controls-access-reviews-overview) to configure one-time or recurring access reviews for attestation of users' rights to access Azure AD resources. These Azure AD resources include groups, service principals, access packages, and privileged roles.

Typical customer scenarios for access reviews include:

- Customers can review and certify guest user access to groups through group memberships. Reviewers can use the insights that are provided to efficiently decide whether guests should have continued access.
- Customers can review and certify employee access to Azure AD resources.
- Customers can review and audit assignments to Azure AD privileged roles. This supports organizations in the management of privileged access.

Note that the access reviews feature, including the API, is included in Azure AD Premium P2.  The tenant where an access review is being created must have a valid purchased or trial Azure AD Premium P2 or EMS E5 subscription. For more information about the license requirements, see [Access reviews license requirements](/azure/active-directory/governance/access-reviews-overview#license-requirements).

[!INCLUDE [GDPR-related-guidance](../../includes/gdpr-msgraph-export-note.md)]

## Methods

The following table lists the methods that you can use to interact with access review-related resources.

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

The following [Azure AD roles](/azure/active-directory/roles/permissions-reference) are required for a calling user to manage access reviews.

| Operation | Application permissions | Required directory role of the calling user |
|:------------------|:------------|:--------------------------------------------|
| Read | LifecycleWorkflows.Read.All or LifecycleWorkflows.ReadWrite.All | Global Administrator, Global Reader, Security Administrator, Security Reader or User Administrator |
| Create, Update or Delete | LifecycleWorkflows.ReadWrite.All | Global Administrator or User Administrator |

In addition, a user who is an assigned reviewer of an access review can manage their decisions, without needing to be in a directory role.

## See also

- [Tutorials](/graph/accessreviews-overview) to learn how to use the access reviews API to review access to Azure AD resources
- [How an administrator can manage user access with Azure AD access reviews](/azure/active-directory/active-directory-azure-ad-controls-manage-user-access-with-access-reviews)
- [How an administrator can manage guest access with Azure AD access reviews](/azure/active-directory/active-directory-azure-ad-controls-manage-guest-access-with-access-reviews)


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

