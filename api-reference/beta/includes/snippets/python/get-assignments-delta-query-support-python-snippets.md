---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.education.classes.item.assignments.delta.delta_request_builder import DeltaRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = DeltaRequestBuilder.DeltaRequestBuilderGetQueryParameters(
		skiptoken = "U43TyYWKlRvJ6wWxZOfJvkp22nMqShRw9f-GxBtG2FDy9b1hMDaAJGdLb7n2fh1IdHoweKQs1czM4Ry1LVsNqwIFXftTcRHvgSCbcszvbJHEWDCO3QO7K7zwCM8DdXNepZOa1gqldecjIUM0NFRbGQoQ5yR6RmGnMgtko8TDMOyMH_yg1my82PTXA_t4Nj-DhMDZWvuNTd_lbLeTngc7mIJPMCR2gHN9CSKsW_kw850.UM9tUqwOu5Ln1pnxaP6KdMmfJHszGqY3EKPlQkOiyGs",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').assignments.delta.get(request_configuration = request_configuration)


```