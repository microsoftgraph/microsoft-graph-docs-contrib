---
author: "Anusree-stack"
ms.localizationpriority: medium
ms.subservice: "tenant-configuration-management"
ms.topic: include
---

<!-- markdownlint-disable MD041 -->

### Description

Controls which types of apps, agents, and plugins users can see in their store and install. The author of an app, agent, or plugin determines its type.

### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| valueObject | Write | AllowedAgentTypesValueObject | Configures which types of apps, agents, and plugins users can see and install. | - |

#### AllowedAgentTypesValueObject

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| areISVAppsAllowed | Write | Boolean | Indicates whether apps, agents, and plugins built by external publishers are allowed. | - |
| areMicrosoftAppsAllowed | Write | Boolean | Indicates whether apps, agents, and plugins built by Microsoft are allowed. | - |
| areMicrosoftCertifiedThirdPartyAppsAllowed | Write | Boolean | Indicates whether only apps, agents, and plugins from certified external publishers are allowed when external publishers are enabled. | - |
| areTenantScopedAppsAllowed | Write | Boolean | Indicates whether apps, agents, and plugins built by the organization are allowed. | - |

### Sample baseline resource

```json
{
  "displayName": "Allowed agent types",
  "resourceType": "microsoft.agent.allowedagenttypes",
  "resourceVersion": 1,
  "properties": {
    "valueObject": {
      "areMicrosoftAppsAllowed": true,
      "areTenantScopedAppsAllowed": true,
      "areISVAppsAllowed": false,
      "areMicrosoftCertifiedThirdPartyAppsAllowed": true
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
