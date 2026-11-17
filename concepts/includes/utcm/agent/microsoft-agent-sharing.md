---
author: "Anusree-stack"
ms.localizationpriority: medium
ms.subservice: "tenant-configuration-management"
ms.topic: include
---

<!-- markdownlint-disable MD041 -->

### Description

Controls who can share agents with anyone in the organization. This setting applies to agents built with Microsoft 365 Copilot Agent Builder. Users who can't share with everyone in the organization can still share their agents with individual users and security groups.

### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| valueObject | Write | AgentSharingValueObject | Configures who can share Agent Builder agents with anyone in the organization. | - |

#### AgentSharingValueObject

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| organizationWideSharingAssignment | Write | UserAssignment | Configures which users can share agents with everyone in the organization. | - |

#### UserAssignment

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| userAssignmentCategory | Write | String | Specifies whether all users or no users can share agents with everyone in the organization. | `everyone`, `noOne` |

### Sample baseline resource

```json
{
  "displayName": "Agent sharing",
  "resourceType": "microsoft.agent.sharing",
  "resourceVersion": 1,
  "properties": {
    "valueObject": {
      "organizationWideSharingAssignment": {
        "userAssignmentCategory": "everyone"
      }
    }
  }
}
```

### Permissions

#### Microsoft Entra ID roles

For remediation and `applyOnce`, **AI Administrator** is the least-privileged [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference) for the signed-in user. This role requirement applies to the user, not to the TCM service principal.

#### Microsoft Graph

Grant the following Microsoft Graph permissions to the TCM service principal. For setup instructions, see [Set up authentication](/graph/utcm-authentication-setup).

##### Application permissions

| Operation | Supported permissions |
| --- | --- |
| Monitoring and snapshots | CopilotPolicySettings.Read |

##### Delegated permissions

| Operation | Supported permissions |
| --- | --- |
| Remediation and applyOnce | CopilotPolicySettings.ReadWrite |
