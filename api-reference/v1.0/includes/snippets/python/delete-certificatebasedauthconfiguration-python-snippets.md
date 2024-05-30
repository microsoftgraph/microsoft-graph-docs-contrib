---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.organization.by_organization_id('organization-id').certificate_based_auth_configuration.by_certificate_based_auth_configuration_id('certificateBasedAuthConfiguration-id').delete()


```