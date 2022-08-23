---
title: "Lifecycle Workflow reporting"
description: "You can use Lifecycle Workflows reporting features to gain information about the lifecycle of users. This documentation serves the 2nd version of the APIs."
ms.localizationpriority: medium
author: "AlexFilipin"
ms.prod: "governance"
doc_type: conceptualPageType
---

# Lifecycle Workflow reporting

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Lifecycle Workflow reporting is a new  feature in the Azure AD Identity Governance service that enables organizations to gain insight into how workflows created using Lifecycle workflows was processed for users in your organization.

Note that the Lifecycle Workflows feature, including the API, is included in Azure AD Premium P2.  The tenant where Lifecycle Workflows are being created must have a valid purchased, or trial, Azure AD Premium P2 or EMS E5 subscription. For more information about the license requirements, see [Lifecycle Workflows license requirements](/azure/active-directory/governance/what-are-lifecycle-workflows.md#license-requirements).

[!INCLUDE [GDPR-related-guidance](../../includes/gdpr-msgraph-export-note.md)]

## Role and application permission authorization checks

The following [Azure AD roles](/azure/active-directory/roles/permissions-reference) are required for a calling user to gain  Lifecycle Workflows.

| Operation | Application permissions | Required directory role of the calling user |
|:------------------|:------------|:--------------------------------------------|
| Read | LifecycleWorkflows.Read.All or LifecycleWorkflows.ReadWrite.All | Global Admin, Global Reader or Lifecycle Workflows Administrator |
| Create, Update or Delete | LifecycleWorkflows.ReadWrite.All | Global Administrator or Lifecycle Workflows Administrator |

## Common use cases for Lifecycle Workflow reporting using a REST API

|Use Case  |Resource  |
|---------|---------|
|List and Get a user processing summary of users processed by a workflow using Lifecycle Workflows.     | [User Processing Results](identitygovernance-userprocessingresult.md)        |
|List and Get a task report of workflows created using Lifecycle Workflows.     | [Task Reports](identitygovernance-taskreport.md)        |
|List and get a summary of workflows run made using Lifecycle Workflows.     | [Workflow Runs](identitygovernance-run.md)        |
|List, Get, and Resume a task processing result of tasks that run within workflows.     | [Task Processing Results](identitygovernance-taskprocessingresult.md)        |

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
