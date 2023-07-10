---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc users list --select "displayName,id&`$filter=identities/any(c:c/issuerAssignedId eq 'j.smith@yahoo.com' and c/issuer eq 'My B2C tenant')"

```