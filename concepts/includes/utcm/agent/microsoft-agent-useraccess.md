---
author: "Anusree-stack"
ms.localizationpriority: medium
ms.subservice: "tenant-configuration-management"
ms.topic: include
---

<!-- markdownlint-disable MD041 -->

### Description

Controls which users or groups can use agents built by Microsoft and the organization, including plugins within agents. Some agents require additional permissions or licenses. In pay-as-you-go deployments, allowing access to agents can increase costs.

### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| valueObject | Write | AgentUserAccessValueObject | Configures who can access agents and plugins. | - |

#### AgentUserAccessValueObject

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| userAssignmentCategory | Write | String | Specifies whether all users or no users can access agents and plugins. | `everyone`, `noOne` |

### Sample baseline resource

```json
{
  "displayName": "Agent user access",
  "resourceType": "microsoft.agent.useraccess",
  "resourceVersion": 1,
  "properties": {
    "valueObject": {
      "userAssignmentCategory": "everyone"
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
