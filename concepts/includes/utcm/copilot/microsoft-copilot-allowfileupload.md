---
author: "Anusree-stack"
ms.localizationpriority: medium
ms.subservice: "tenant-configuration-management"
ms.topic: include
---

<!-- markdownlint-disable MD041 -->

### Description

Controls whether users can upload files to Copilot.

### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| value | Write | String | Controls file uploads. `0` allows uploads in both Microsoft 365 Copilot and Microsoft 365 Copilot Chat. `1` prevents uploads in both. `2` disables uploads in Microsoft 365 Copilot Web mode and Microsoft 365 Copilot Chat while allowing uploads in Microsoft 365 Copilot Work mode. | `0`, `1`, `2` |

### Sample baseline resource

```json
{
  "displayName": "Allow file upload",
  "resourceType": "microsoft.copilot.allowfileupload",
  "resourceVersion": 1,
  "properties": {
    "value": "0"
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
