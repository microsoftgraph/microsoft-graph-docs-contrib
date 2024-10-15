---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.industry_data.one_roster_api_data_connector import OneRosterApiDataConnector
from msgraph_beta.generated.models.api_format import ApiFormat
from msgraph_beta.generated.models.industry_data.o_auth2_client_credential import OAuth2ClientCredential
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = OneRosterApiDataConnector(
	odata_type = "#microsoft.graph.industryData.oneRosterApiDataConnector",
	display_name = "Generic OAuth2 Connector",
	api_format = ApiFormat.OneRoster,
	base_url = "https://fakeProvider.net/ims/oneroster/v1p1",
	api_version = "1.1",
	credential = OAuth2ClientCredential(
		odata_type = "#microsoft.graph.industryData.oAuth2ClientCredential",
		display_name = "One Roster API Credentials",
		client_id = "530be723-6af3-4952-8658-668fb2598ad7",
		client_secret = "thisIsASecret",
		token_url = "https://login.microsoftonline.com/c27f982b-f7ee-4b8b-bb0e-3c55bd1dc02c/oauth2/token",
		scope = None,
	),
	is_demographics_enabled = False,
	is_flags_enabled = False,
	is_contacts_enabled = False,
	additional_data = {
			"source_system@odata_bind" : "https://graph.microsoft.com/beta/external/industryData/sourceSystems('c93a6e02-aeb7-437f-cc52-08dc3fc158af')",
	}
)

result = await graph_client.external.industry_data.data_connectors.post(request_body)


```