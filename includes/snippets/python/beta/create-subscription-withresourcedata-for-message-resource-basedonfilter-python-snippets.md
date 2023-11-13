---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = Subscription(
	change_type = "created",
	notification_url = "https://webhook.azurewebsites.net/api/send/myNotifyClient",
	resource = "me/mailfolders('Drafts')/messages?$select=Subject,bodyPreview&$filter=hasAttachments eq true AND importance eq 'High'",
	expiration_date_time = "2022-01-01T21:42:18.2257768+00:00",
	client_state = "secretClientValue",
	include_resource_data = True,
	encryption_certificate = "MIIDMzCCAhugAwIBAgIQE7D+++Dk1hKQBqWA==",
	encryption_certificate_id = "testCertificateId",
)

result = await graph_client.subscriptions.post(request_body)


```