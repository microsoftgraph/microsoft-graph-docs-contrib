---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta identity-governance entitlement-management access-package-assignment-requests list --filter "(requestState eq 'PendingApproval')" --expand "requestor(\$expand=connectedOrganization)"

```