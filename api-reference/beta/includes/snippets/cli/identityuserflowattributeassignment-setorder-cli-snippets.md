---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta identity b2c-user-flows user-attribute-assignments set-order post --b2c-identity-user-flow-id {b2cIdentityUserFlow-id} --body '{\
  "newAssignmentOrder": {\
    "order": [\
        "City",\
        "extension_GUID_ShoeSize"\
    ]\
  }\
}\
'

```