---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.virtual_event_presenter import VirtualEventPresenter
from msgraph_beta.generated.models.virtual_event_presenter_details import VirtualEventPresenterDetails
from msgraph_beta.generated.models.item_body import ItemBody
from msgraph_beta.generated.models.body_type import BodyType

graph_client = GraphServiceClient(credentials, scopes)

request_body = VirtualEventPresenter(
	presenter_details = VirtualEventPresenterDetails(
		bio = ItemBody(
			content = "Lead Product Manager of Contoso Sales department",
			content_type = BodyType.Text,
		),
		company = "Contoso",
		job_title = "Product Manager",
		linked_in_profile_web_url = "https://linkedin.com/in/DianeDemoss",
		personal_site_web_url = "https://DianeDemoss.com",
	),
)

result = await graph_client.solutions.virtual_events.webinars.by_virtual_event_webinar_id('virtualEventWebinar-id').presenters.by_virtual_event_presenter_id('virtualEventPresenter-id').patch(request_body)


```