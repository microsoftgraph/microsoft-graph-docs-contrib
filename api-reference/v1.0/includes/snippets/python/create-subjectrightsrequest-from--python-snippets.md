---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = SubjectRightsRequest()
request_body.type(SubjectRightsRequestType.Microsoft.graph.subjectRightsRequestType('subjectrightsrequesttype.microsoft.graph.subjectrightsrequesttype'))

request_body.datasubjecttype(DataSubjectType.Microsoft.graph.dataSubjectType('datasubjecttype.microsoft.graph.datasubjecttype'))

request_body.Regulations(['String', ])

request_body.display_name = 'String'

request_body.description = 'String'

request_body.internalDueDateTime = DateTime('String (timestamp)')

data_subject = DataSubject()
data_subject.first_name = 'String'

data_subject.last_name = 'String'

data_subject.email = 'String'

data_subject.residency = 'String'

additional_data = [
'phone_number' => 'String', 
's_s_n' => 'String', 
];
data_subject.additional_data(additional_data)



request_body.data_subject = data_subject



result = await client.privacy.subject_right_requests.post(request_body = request_body)


```