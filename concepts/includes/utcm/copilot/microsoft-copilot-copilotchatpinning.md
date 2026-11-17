---
author: "Anusree-stack"
ms.localizationpriority: medium
ms.subservice: "tenant-configuration-management"
ms.topic: include
---

<!-- markdownlint-disable MD041 -->

### Description

Controls whether Microsoft 365 Copilot Chat is pinned to the navigation bar in Microsoft 365 apps.

### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| value | Write | String | Pins or unpins Microsoft 365 Copilot Chat in Microsoft 365 apps. `0` disables the setting; `1` enables the setting. As of January 20, 2026, this setting no longer governs the Microsoft 365 Copilot app. | `0`, `1` |

### Sample baseline resource

```json
{
  "displayName": "Copilot Chat pinning",
  "resourceType": "microsoft.copilot.copilotchatpinning",
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
