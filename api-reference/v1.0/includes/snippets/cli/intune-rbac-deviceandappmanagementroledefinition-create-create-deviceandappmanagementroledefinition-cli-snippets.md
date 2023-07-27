---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc device-management role-definitions create --body '{\
  "@odata.type": "#microsoft.graph.deviceAndAppManagementRoleDefinition",\
  "displayName": "Display Name value",\
  "description": "Description value",\
  "rolePermissions": [\
    {\
      "@odata.type": "microsoft.graph.rolePermission",\
      "resourceActions": [\
        {\
          "@odata.type": "microsoft.graph.resourceAction",\
          "allowedResourceActions": [\
            "Allowed Resource Actions value"\
          ],\
          "notAllowedResourceActions": [\
            "Not Allowed Resource Actions value"\
          ]\
        }\
      ]\
    }\
  ],\
  "isBuiltIn": true\
}\
'

```