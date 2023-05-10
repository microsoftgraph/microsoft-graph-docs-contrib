---
author: sandeo-MSFT
ms.topic: include
---

For delegated scenarios, the calling user must be a user assigned to one of the following [Azure AD roles](/azure/active-directory/roles/permissions-reference?toc=%2Fgraph%2Ftoc.json).

- Global Administrator
- Cloud Device Administrator
- Helpdesk Administrator
- Intune Service Administrator
- Security Administrator
- Security Reader
- Global Reader

Note that in order to access the actual passwords on the device, done by including `$select=credentials` as part of the query parameters, the calling user must be a user assigned to one of the following  [Azure AD roles](/azure/active-directory/roles/permissions-reference?toc=%2Fgraph%2Ftoc.json).

- Global Administrator
- Cloud Device Administrator
- Intune Service Administrator