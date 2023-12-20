---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

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