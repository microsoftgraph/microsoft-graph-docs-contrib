---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.application import Application
from msgraph.generated.models.informational_url import InformationalUrl
from msgraph.generated.models.web_application import WebApplication
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Application(
	tags = [
		"HR",
		"Payroll",
		"HideApp",
	],
	info = InformationalUrl(
		logo_url = "https://cdn.contoso.com/photo/2016/03/21/23/25/link-1271843_1280.png",
		marketing_url = "https://www.contoso.com/app/marketing",
		privacy_statement_url = "https://www.contoso.com/app/privacy",
		support_url = "https://www.contoso.com/app/support",
		terms_of_service_url = "https://www.contoso.com/app/termsofservice",
	),
	web = WebApplication(
		home_page_url = "https://www.contoso.com/",
		logout_url = "https://www.contoso.com/frontchannel_logout",
		redirect_uris = [
			"https://localhost",
		],
	),
	service_management_reference = "Owners aliases: Finance @ contosofinance@contoso.com; The Phone Company HR consulting @ hronsite@thephone-company.com;",
)

result = await graph_client.applications.by_application_id('application-id').patch(request_body)


```