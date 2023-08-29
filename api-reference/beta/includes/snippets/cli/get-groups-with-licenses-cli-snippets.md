---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta groups list --select "id,assignedLicenses&`$filter=assignedLicenses/any()&`$expand=members(`$select=id,displayName)"

```