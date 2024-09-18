---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.organization.by_organization_id('organization-id').branding.localizations.by_organizational_branding_localization_id('organizationalBrandingLocalization-id').delete()


```