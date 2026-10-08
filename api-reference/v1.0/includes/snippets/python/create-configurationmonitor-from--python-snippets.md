---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.configuration_monitor import ConfigurationMonitor
from msgraph.generated.models.configuration_baseline import ConfigurationBaseline
from msgraph.generated.models.baseline_resource import BaselineResource
from msgraph.generated.models.open_complex_dictionary_type import OpenComplexDictionaryType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ConfigurationMonitor(
	display_name = "Demo Monitor",
	description = "This is a Demo Monitor",
	baseline = ConfigurationBaseline(
		display_name = "Demo Baseline",
		description = "This is a baseline with resources SharedMailbox, AcceptedDomain and MailContact",
		resources = [
			BaselineResource(
				display_name = "TestSharedMailbox Resource",
				resource_type = "microsoft.exchange.sharedmailbox",
				properties = OpenComplexDictionaryType(
					additional_data = {
							"display_name" : "TestSharedMailbox",
							"alias" : "testSharedMailbox",
							"identity" : "TestSharedMailbox",
							"ensure" : "Present",
							"primary_smtp_address" : "testSharedMailbox@contoso.onmicrosoft.com",
							"email_addresses" : [
								"abc@contoso.onmicrosoft.com",
							],
					}
				),
			),
			BaselineResource(
				display_name = "Accepted Domain",
				resource_type = "microsoft.exchange.accepteddomain",
				properties = OpenComplexDictionaryType(
					additional_data = {
							"identity" : "contoso.onmicrosoft.com",
							"domain_type" : "InternalRelay",
							"ensure" : "Present",
					}
				),
			),
			BaselineResource(
				display_name = "Mail Contact Resource",
				resource_type = "microsoft.exchange.mailcontact",
				properties = OpenComplexDictionaryType(
					additional_data = {
							"name" : "Chris",
							"display_name" : "Chris",
							"external_email_address" : "SMTP:chris@fabrikam.com",
							"alias" : "Chrisa",
							"ensure" : "Present",
					}
				),
			),
		],
	),
)

result = await graph_client.admin.configuration_management.configuration_monitors.post(request_body)


```