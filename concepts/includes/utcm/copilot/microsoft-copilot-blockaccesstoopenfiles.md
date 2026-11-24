---
author: "Anusree-stack"
ms.localizationpriority: medium
ms.subservice: "tenant-configuration-management"
ms.topic: include
---

<!-- markdownlint-disable MD041 -->

### Description

Controls whether users can ask Copilot questions about the file currently open in an eligible Microsoft 365 app, such as requesting summaries, key action items, or rewrites. This policy applies only to users without a Microsoft 365 Copilot license.

### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| value | Write | String | Allows or prevents Copilot from accessing the currently open file when responding to prompts. `0` disables the setting; `1` enables the setting. In Outlook, blocking access also blocks all entry points to Copilot Chat. | `0`, `1` |

### Sample baseline resource

```json
{
  "displayName": "Block access to open files",
  "resourceType": "microsoft.copilot.blockaccesstoopenfiles",
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
