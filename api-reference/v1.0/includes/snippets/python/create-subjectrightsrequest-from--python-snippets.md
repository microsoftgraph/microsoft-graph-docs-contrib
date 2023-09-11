---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = SubjectRightsRequest(
	type = SubjectRightsRequestType.Export,
	data_subject_type = DataSubjectType.Customer,
	regulations = [
		"String",
	]
	display_name = "String",
	description = "String",
	internal_due_date_time = "String (timestamp)",
	data_subject = DataSubject(
		first_name = "String",
		last_name = "String",
		email = "String",
		residency = "String",
		additional_data = {
				"phone_number" : "String",
				"s_s_n" : "String",
		}
	),
)

result = await graph_client.privacy.subject_right_requests.post(body = request_body)


```