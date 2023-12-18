---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta role-management cloud-pc role-definitions create --body '{\
  "description": "An example custom role",\
  "displayName": "ExampleCustomRole",\
  "rolePermissions":\
    [\
        {\
            "allowedResourceActions": \
            [\
                "Microsoft.CloudPC/CloudPCs/Read"\
            ]\
        }\
    ],\
    "condition" : "null"\
}\
'

```