---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta app-catalogs teams-apps list --filter "appDefinitions/any(a:a/dashboardCards/\$count ne 0)" --expand "appDefinitions(\$expand=dashboardCards)"

```