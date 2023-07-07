---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc policies authentication-methods-policy patch --body '{\
  "registrationEnforcement": {\
    "authenticationMethodsRegistrationCampaign": {\
        "snoozeDurationInDays": 1,\
        "state": "enabled",\
        "excludeTargets": [],\
        "includeTargets": [\
            {\
                "id": "3ee3a9de-0a86-4e12-a287-9769accf1ba2",\
                "targetType": "group",\
                "targetedAuthenticationMethod": "microsoftAuthenticator"\
            }\
        ]\
    }\
  }\
}\
'

```