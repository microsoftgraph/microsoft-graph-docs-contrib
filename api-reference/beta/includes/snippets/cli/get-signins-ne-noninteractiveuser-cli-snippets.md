---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta audit-logs sign-ins list --top "10" --filter "(signInEventTypes/any(t: t ne 'interactiveUser'))" --orderby "createdDateTime DESC"

```