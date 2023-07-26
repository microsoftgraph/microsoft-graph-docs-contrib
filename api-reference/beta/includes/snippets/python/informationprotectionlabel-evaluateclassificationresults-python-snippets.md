---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EvaluateClassificationResultsPostRequestBody()
content_info = ContentInfo()
content_info.@odata_type = '#microsoft.graph.contentInfo'

content_info.format(ContentFormat.Default('contentformat.default'))

content_info.identifier=null

content_info.state(ContentState.Rest('contentstate.rest'))

additional_data = [
'format@odata_type' => '#microsoft.graph.contentFormat', 
'state@odata_type' => '#microsoft.graph.contentState', 
];
content_info.additional_data(additional_data)



request_body.content_info = content_info
classification_results_classification_result1 = ClassificationResult()
classification_results_classification_result1.sensitive_type_id = 'cb353f78-2b72-4c3c-8827-92ebe4f69fdf'

classification_results_classification_result1.Count = 4

classification_results_classification_result1.ConfidenceLevel = 75


classificationResultsArray []= classificationResultsClassificationResult1;
request_body.classificationresults(classificationResultsArray)




request_configuration = EvaluateClassificationResultsRequestBuilder.EvaluateClassificationResultsRequestBuilderPostRequestConfiguration(
headers = {
	'User-Agent' : "ContosoLOBApp/1.0",
}

)


result = await client.information_protection.policy.labels.evaluate_classification_results.post(request_body = request_body, request_configuration = request_configuration)


```