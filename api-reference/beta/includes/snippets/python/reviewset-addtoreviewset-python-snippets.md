---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AddToReviewSetPostRequestBody()
source_collection = SourceCollection()
source_collection.id = '1a9b4145d8f84e39bc45a7f68c5c5119'


request_body.source_collection = source_collection
additional_data = [
'additional_data' => 'linkedFiles', 
];
request_body.additional_data(additional_data)





await client.compliance.ediscovery.cases.by_case_id('case-id').review_sets.by_review_set_id('reviewSet-id').microsoft_graph_ediscovery_add_to_review_set.post(request_body = request_body)


```