---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = SubjectRightsRequest()
request_body.type(SubjectRightsRequestType.Export('subjectrightsrequesttype.export'))

request_body.content_query = '((\"Diego Siciliani\" OR \"Diego.Siciliani@contoso.com\") OR (participants:\"Diego.Siciliani@contoso.com\"))'

request_body.datasubjecttype(DataSubjectType.Customer('datasubjecttype.customer'))

request_body.external_id = 'F53BF2DA-607D-412A-B568-FAA0F023AC0B'

request_body.display_name = 'Export report for customer Id: 12345'

request_body.description = 'This is a export request'

request_body.include_all_versions = False

request_body.include_authored_content = True

request_body.internalDueDateTime = DateTime('2022-07-20T22:42:28Z')

data_subject = DataSubject()
data_subject.first_name = 'Diego'

data_subject.last_name = 'Siciliani'

data_subject.email = 'Diego.Siciliani@contoso.com'

data_subject.residency = 'USA'


request_body.data_subject = data_subject
request_body.mailboxLocations=null

request_body.pause_after_estimate = True

request_body.Regulations(['CCPA', ])

site_locations = SubjectRightsRequestAllSiteLocation()
site_locations.@odata_type = 'microsoft.graph.subjectRightsRequestAllSiteLocation'


request_body.site_locations = site_locations
approvers_user1 = User()
approvers_user1.id = '1B761ED2-AA7E-4D82-9CF5-C09D737B6167'


approversArray []= approversUser1;
request_body.approvers(approversArray)





result = await client.privacy.subject_right_requests.post(request_body = request_body)


```