---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.applications.by_application_id('application-id').federated_identity_credentials.by_federated_identity_credential_id('federatedIdentityCredential-id').get()


```