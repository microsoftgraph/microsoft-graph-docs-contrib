---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.document_processing_job import DocumentProcessingJob
from msgraph_beta.generated.models.document_processing_job_type import DocumentProcessingJobType

graph_client = GraphServiceClient(credentials, scopes)

request_body = DocumentProcessingJob(
	odata_type = "#microsoft.graph.documentProcessingJob",
	job_type = DocumentProcessingJobType.File,
	list_item_unique_id = "5955b119-99c1-4af9-97ed-3449e02de6f1",
)

result = await graph_client.sites.by_site_id('site-id').document_processing_jobs.post(request_body)


```