---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.domains.by_domain_id('domain-id').federation_configuration.by_internal_domain_federation_id('internalDomainFederation-id').delete()


```