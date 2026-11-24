---
author: "Anusree-stack"
ms.localizationpriority: medium
ms.subservice: "tenant-configuration-management"
ms.topic: include
---

<!-- markdownlint-disable MD041 -->

### Description

Controls whether connected experiences that analyze content are available to users in Office. PowerPoint Designer and Editor in Word are examples of these experiences.

### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| value | Write | String | Makes connected Office experiences that analyze content available or unavailable to users. `0` disables the setting; `1` enables the setting. These experiences remain unavailable when the broader connected-experiences-in-Office policy is disabled. | `0`, `1` |

### Sample baseline resource

```json
{
  "displayName": "Allow Office experiences that analyze content",
  "resourceType": "microsoft.copilot.allowofficeexperiencesanalyzingcontent",
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
