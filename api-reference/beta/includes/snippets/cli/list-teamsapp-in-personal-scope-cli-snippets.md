---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta app-catalogs teams-apps list --expand "appDefinitions(`$select=id,displayName,allowedInstallationScopes)&`$filter=appDefinitions/any(a:a/allowedInstallationScopes has 'personal')"

```