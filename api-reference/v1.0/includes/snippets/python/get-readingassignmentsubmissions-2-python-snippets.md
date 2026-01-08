---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.education.reports.reading_assignment_submissions.reading_assignment_submissions_request_builder import ReadingAssignmentSubmissionsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = ReadingAssignmentSubmissionsRequestBuilder.ReadingAssignmentSubmissionsRequestBuilderGetQueryParameters(
		filter = "submissionDateTime gt 2025-06-10T00:00:00.000Z and submissionDateTime lt 2025-06-11T00:00:00Z",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.education.reports.reading_assignment_submissions.get(request_configuration = request_configuration)


```