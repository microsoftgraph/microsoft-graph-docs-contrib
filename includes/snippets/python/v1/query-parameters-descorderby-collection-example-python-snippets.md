---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.users.item.mail_folders.item.messages.messages_request_builder import MessagesRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = MessagesRequestBuilder.MessagesRequestBuilderGetQueryParameters(
		orderby = ["from/emailAddress/name desc","subject"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.me.mail_folders.by_mail_folder_id('mailFolder-id').messages.get(request_configuration = request_configuration)


```