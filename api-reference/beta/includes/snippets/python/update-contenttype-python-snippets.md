---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.content_type import ContentType
from msgraph_beta.generated.models.document_set import DocumentSet
from msgraph_beta.generated.models.content_type_info import ContentTypeInfo
from msgraph_beta.generated.models.document_set_content import DocumentSetContent
from msgraph_beta.generated.models.column_definition import ColumnDefinition
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ContentType(
	name = "updatedCt",
	document_set = DocumentSet(
		should_prefix_name_to_file = True,
		allowed_content_types = [
			ContentTypeInfo(
				id = "0x0101",
				name = "Document",
			),
		],
		default_contents = [
			DocumentSetContent(
				file_name = "a.txt",
				content_type = ContentTypeInfo(
					id = "0x0101",
				),
			),
			DocumentSetContent(
				file_name = "b.txt",
				content_type = ContentTypeInfo(
					id = "0x0101",
				),
			),
		],
		shared_columns = [
			ColumnDefinition(
				name = "Description",
				id = "cbb92da4-fd46-4c7d-af6c-3128c2a5576e",
			),
			ColumnDefinition(
				name = "Address",
				id = "fc2e188e-ba91-48c9-9dd3-16431afddd50",
			),
		],
		welcome_page_columns = [
			ColumnDefinition(
				name = "Address",
				id = "fc2e188e-ba91-48c9-9dd3-16431afddd50",
			),
		],
	),
)

result = await graph_client.sites.by_site_id('site-id').content_types.by_content_type_id('contentType-id').patch(request_body)


```