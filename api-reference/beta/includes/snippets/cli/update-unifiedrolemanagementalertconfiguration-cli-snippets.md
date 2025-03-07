---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta identity-governance role-management-alerts alert-configurations patch --unified-role-management-alert-configuration-id {unifiedRoleManagementAlertConfiguration-id} --body '{\
  "@odata.type":"#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertConfiguration",\
  "isEnabled": "true",\
  "globalAdminCountThreshold": 7,\
  "percentageOfGlobalAdminsOutOfRolesThreshold": 70\
}\
'

```