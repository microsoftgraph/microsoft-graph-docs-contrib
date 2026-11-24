---
author: "Anusree-stack"
ms.localizationpriority: medium
ms.subservice: "tenant-configuration-management"
ms.topic: include
---

<!-- markdownlint-disable MD041 -->

### Description

Controls whether users can create and view Copilot Pages and Copilot Notebooks through Microsoft 365 Copilot Chat and Copilot Actions.

### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| value | Write | String | Allows or prevents creating and viewing Copilot Pages and Copilot Notebooks through Microsoft 365 Copilot Chat and Copilot Actions. `0` disables the setting; `1` enables the setting. When disabled, Copilot Chat doesn't provide live access to view or edit shared Loop files, and Copilot Actions email and Teams notifications are disabled. This policy is separate from the policy for creating and viewing Loop files in supported Microsoft apps. Copilot Notebooks also require a Microsoft 365 Copilot license. | `0`, `1` |

### Sample baseline resource

```json
{
  "displayName": "Copilot Pages and Notebooks",
  "resourceType": "microsoft.copilot.copilotpagesnotebooks",
  "resourceVersion": 1,
  "properties": {
    "value": "1"
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
