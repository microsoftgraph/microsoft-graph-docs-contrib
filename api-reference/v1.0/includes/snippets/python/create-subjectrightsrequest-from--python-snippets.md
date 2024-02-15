---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.subject_rights_request import SubjectRightsRequest
from msgraph.generated.models.data_subject import DataSubject
from msgraph.generated.models.subject_rights_request_all_site_location import SubjectRightsRequestAllSiteLocation
from msgraph.generated.models.user import User

graph_client = GraphServiceClient(credentials, scopes)

request_body = SubjectRightsRequest(
	type = SubjectRightsRequestType.Export,
	content_query = "((\"Diego Siciliani\" OR \"Diego.Siciliani@contoso.com\") OR (participants:\"Diego.Siciliani@contoso.com\"))",
	data_subject_type = DataSubjectType.Customer,
	external_id = "F53BF2DA-607D-412A-B568-FAA0F023AC0B",
	display_name = "Export report for customer Id: 12345",
	description = "This is a export request",
	include_all_versions = False,
	include_authored_content = True,
	internal_due_date_time = "2022-07-20T22:42:28Z",
	data_subject = DataSubject(
		first_name = "Diego",
		last_name = "Siciliani",
		email = "Diego.Siciliani@contoso.com",
		residency = "USA",
	),
	mailbox_locations = None,
	pause_after_estimate = True,
	regulations = [
		"CCPA",
	],
	site_locations = SubjectRightsRequestAllSiteLocation(
		odata_type = "microsoft.graph.subjectRightsRequestAllSiteLocation",
	),
	approvers = [
		User(
			id = "1B761ED2-AA7E-4D82-9CF5-C09D737B6167",
		),
	],
)

result = await graph_client.privacy.subject_rights_requests.post(request_body)


```