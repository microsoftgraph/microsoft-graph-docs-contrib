---
author: "Anusree-stack"
ms.localizationpriority: medium
ms.subservice: "tenant-configuration-management"
ms.topic: include
---

<!-- markdownlint-disable MD041 -->

### Description

Controls web search availability in Microsoft 365 Copilot and Microsoft 365 Copilot Chat. Web search data is handled under Bing consumer terms, separately from Microsoft 365 data handling and processing terms.

### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| value | Write | String | Controls web search. `0` enables it in Microsoft 365 Copilot and Microsoft 365 Copilot Chat. `1` disables it in both. `2` disables it in Microsoft 365 Copilot Work mode while enabling it in Microsoft 365 Copilot Web mode and Microsoft 365 Copilot Chat. When web search is available, users can turn it off for themselves. Web search can be enabled independently of the optional connected experiences policy. | `0`, `1`, `2` |

### Sample baseline resource

```json
{
  "displayName": "Allow web search",
  "resourceType": "microsoft.copilot.allowwebsearch",
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
