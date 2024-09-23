---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.groups.item.delete_password_single_sign_on_credentials.delete_password_single_sign_on_credentials_post_request_body import DeletePasswordSingleSignOnCredentialsPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = DeletePasswordSingleSignOnCredentialsPostRequestBody(
	id = "314ac440-129f-4cb3-ad61-24ef4a7de1d9",
)

await graph_client.groups.by_group_id('group-id').delete_password_single_sign_on_credentials.post(request_body)


```