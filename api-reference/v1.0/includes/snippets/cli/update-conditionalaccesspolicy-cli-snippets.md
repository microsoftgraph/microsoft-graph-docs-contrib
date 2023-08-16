---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
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