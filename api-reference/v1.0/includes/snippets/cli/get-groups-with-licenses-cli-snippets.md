---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc groups list --select "id,assignedLicenses&`$filter=assignedLicenses/any()&`$expand=members(`$select=id,displayName)"

```