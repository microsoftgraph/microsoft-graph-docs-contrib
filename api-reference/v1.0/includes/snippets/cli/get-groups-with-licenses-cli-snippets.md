---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc groups list --filter "assignedLicenses/any()" --select "id,assignedLicenses" --expand "members(\$select=id,displayName)"

```