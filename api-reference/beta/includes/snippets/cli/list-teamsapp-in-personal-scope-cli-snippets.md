---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta app-catalogs teams-apps list --filter "appDefinitions/any(a:a/allowedInstallationScopes has 'personal')" --expand "appDefinitions(\$select=id,displayName,allowedInstallationScopes)"

```