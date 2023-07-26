---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc groups list --filter "mailEnabled eq false and securityEnabled eq true and NOT(groupTypes/any(s:s eq 'Unified')) and membershipRuleProcessingState eq 'On'&`$count=true&`$select=id,membershipRule,membershipRuleProcessingState" --consistency-level eventual

```