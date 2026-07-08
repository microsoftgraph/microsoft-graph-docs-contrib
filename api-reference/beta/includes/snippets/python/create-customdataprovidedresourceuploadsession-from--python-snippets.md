---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.custom_data_provided_resource_access_review_upload_session import CustomDataProvidedResourceAccessReviewUploadSession
from msgraph_beta.generated.models.custom_data_provided_resource_payloads.access_review_context_data import AccessReviewContextData
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CustomDataProvidedResourceAccessReviewUploadSession(
	odata_type = "#microsoft.graph.customDataProvidedResourceAccessReviewUploadSession",
	data = AccessReviewContextData(
		odata_type = "#microsoft.graph.customDataProvidedResourcePayloads.accessReviewContextData",
		review_definition_id = "9e4b1c6f-2a3d-4f8e-9b7a-5c1e2d3f4a6b",
		review_instance_id = "15eeb4df-8a4d-4f8e-9b7a-6b3e1c7f5a9d",
	),
)

result = await graph_client.identity_governance.catalogs.by_access_package_catalog_id('accessPackageCatalog-id').access_package_resources.by_access_package_resource_id('accessPackageResource-id').upload_sessions.post(request_body)


```