---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.identity.b2x_user_flows.by_b2x_identity_user_flow_id('b2xIdentityUserFlow-id').languages.by_user_flow_language_configuration_id('userFlowLanguageConfiguration-id').default_pages.by_user_flow_language_page_id('userFlowLanguagePage-id').content.get()


```