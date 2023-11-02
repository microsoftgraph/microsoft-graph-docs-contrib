---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta privileged-access role-settings patch --privileged-access-id {privilegedAccess-id} --governance-role-setting-id {governanceRoleSetting-id} --body '{\
   "adminEligibleSettings":[\
      {\
         "ruleIdentifier":"ExpirationRule",\
         "setting":"{\"permanentAssignment\":false,\"maximumGrantPeriodInMinutes\":129600}"\
      }\
   ]\
}\
'

```