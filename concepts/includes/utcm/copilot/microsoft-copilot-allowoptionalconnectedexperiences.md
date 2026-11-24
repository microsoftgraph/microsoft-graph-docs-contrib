---
author: "Anusree-stack"
ms.localizationpriority: medium
ms.subservice: "tenant-configuration-management"
ms.topic: include
---

<!-- markdownlint-disable MD041 -->

### Description

Controls whether additional optional connected experiences are available to users in Office. These experiences are offered directly by Microsoft and are governed by terms other than the organization's commercial agreement with Microsoft. Examples include inserting an online video into PowerPoint and using 3D Maps in Excel.

### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| value | Write | String | Makes additional optional connected experiences available or unavailable to users. `0` disables the setting; `1` enables the setting. Users can turn off these experiences as a group when they are available. They remain unavailable when the broader connected-experiences-in-Office policy is disabled. | `0`, `1` |

### Sample baseline resource

```json
{
  "displayName": "Allow optional connected experiences",
  "resourceType": "microsoft.copilot.allowoptionalconnectedexperiences",
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
