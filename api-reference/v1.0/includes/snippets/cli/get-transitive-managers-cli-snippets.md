---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc users get --user-id {user-id} --select "id,displayName" --expand "manager(\$levels=max;\$select=id,displayName)" --consistency-level "eventual"

```