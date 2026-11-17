---
author: "Anusree-stack"
ms.localizationpriority: medium
ms.subservice: "tenant-configuration-management"
ms.topic: include
---

<!-- markdownlint-disable MD041 -->

### Description

Controls whether users without a Microsoft 365 Copilot license can access Microsoft 365 Copilot Chat from Microsoft 365 apps.

### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| value | Write | String | Shows or hides Microsoft 365 Copilot Chat entry points in Microsoft 365 apps for users without a Microsoft 365 Copilot license. `0` disables the setting; `1` enables the setting. This policy doesn't apply to licensed users. | `0`, `1` |

### Sample baseline resource

```json
{
  "displayName": "Copilot Chat side pane",
  "resourceType": "microsoft.copilot.copilotchatsidepane",
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
