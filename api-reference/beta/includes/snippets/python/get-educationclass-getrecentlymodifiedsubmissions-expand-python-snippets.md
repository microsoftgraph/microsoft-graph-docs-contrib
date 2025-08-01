---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.education.classes.item.get_recently_modified_submissions.get_recently_modified_submissions_request_builder import GetRecentlyModifiedSubmissionsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = GetRecentlyModifiedSubmissionsRequestBuilder.GetRecentlyModifiedSubmissionsRequestBuilderGetQueryParameters(
		expand = ["outcomes"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').get_recently_modified_submissions.get(request_configuration = request_configuration)


```