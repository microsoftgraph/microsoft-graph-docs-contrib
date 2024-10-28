---
author: markwahl-msft
ms.topic: include
---

<!-- Applies to:
- accessPackageAssignmentRequestWorkflowExtension
- customAccessPackageWorkflowExtension
-->

In delegated scenarios with work or school accounts, the signed-in user must also be assigned an administrator role with supported role permissions through one of the following options:

- One of the following [Azure role](azure/role-based-access-control/built-in-roles) assignments are required either on the Logic App itself, or on a higher scope such as the resource group, subscription or management group:
    - Logic App contributor
    - Contributor
    - Owner
- [A role in the Entitlement Management system](/entra/id-governance/entitlement-management-delegate) where the least privileged roles are *Access package assignment manager*. **This is the least privileged option.**
- A [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json), where the following least privileged roles are supported for this operation:
    - Access package manager
    - Catalog owner
    - Identity Governance Administrator  

In app-only scenarios, the calling app can be assigned one of the preceding supported roles instead of the `EntitlementManagement.ReadWrite.All` application permission. The *Catalog reader* role is less privileged than the `EntitlementManagement.Read.All` application permission.. If it's a delegated call without the `URL` property in [logicAppTriggerEndpointConfiguration](../api/resources/logicapptriggerendpointconfiguration.md), the caller also needs to be authorized on the Logic App.

For more information, see [Delegation and roles in entitlement management](/entra/id-governance/entitlement-management-delegate) and [how to delegate access governance to access package managers in entitlement management](/entra/id-governance/entitlement-management-delegate-managers).
