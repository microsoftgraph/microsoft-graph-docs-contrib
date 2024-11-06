---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc directory administrative-units patch --administrative-unit-id {administrativeUnit-id} --body '{\
    "displayName": "Executive Division",\
    "membershipType": "Dynamic",\
    "membershipRule": "(user.country -eq \"United States\")",\
    "membershipRuleProcessingState": "On"\
}\
'

```