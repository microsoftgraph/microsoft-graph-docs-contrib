---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc identity conditional-access policies patch --conditional-access-policy-id {conditionalAccessPolicy-id} --body '{\
    "conditions": {\
        "signInRiskLevels": [\
            "high",\
            "medium",\
            "low",\
        ]\
    }\
}\
'

```