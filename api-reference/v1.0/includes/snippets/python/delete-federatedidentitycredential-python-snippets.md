---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.applications.by_application_id('application-id').federated_identity_credentials.by_federated_identity_credential_id('federatedIdentityCredential-id').delete()


```