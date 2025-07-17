---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.document_processing_job import DocumentProcessingJob
from msgraph_beta.generated.models.document_processing_job_type import DocumentProcessingJobType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = DocumentProcessingJob(
	odata_type = "#microsoft.graph.documentProcessingJob",
	job_type = DocumentProcessingJobType.File,
	list_item_unique_id = "5955b119-99c1-4af9-97ed-3449e02de6f1",
)

result = await graph_client.sites.by_site_id('site-id').document_processing_jobs.post(request_body)


```