---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.ios_vpp_app import IosVppApp
from msgraph.generated.models.mime_content import MimeContent
from msgraph.generated.models.vpp_licensing_type import VppLicensingType
from msgraph.generated.models.ios_device_type import IosDeviceType

graph_client = GraphServiceClient(credentials, scopes)

request_body = IosVppApp(
	odata_type = "#microsoft.graph.iosVppApp",
	display_name = "Display Name value",
	description = "Description value",
	publisher = "Publisher value",
	large_icon = MimeContent(
		odata_type = "microsoft.graph.mimeContent",
		type = "Type value",
		value = base64.urlsafe_b64decode("dmFsdWU="),
	),
	is_featured = True,
	privacy_information_url = "https://example.com/privacyInformationUrl/",
	information_url = "https://example.com/informationUrl/",
	owner = "Owner value",
	developer = "Developer value",
	notes = "Notes value",
	publishing_state = MobileAppPublishingState.Processing,
	used_license_count = 0,
	total_license_count = 1,
	release_date_time = "2017-01-01T00:01:34.7470482-08:00",
	app_store_url = "https://example.com/appStoreUrl/",
	licensing_type = VppLicensingType(
		odata_type = "microsoft.graph.vppLicensingType",
		supports_user_licensing = True,
		supports_device_licensing = True,
	),
	applicable_device_type = IosDeviceType(
		odata_type = "microsoft.graph.iosDeviceType",
		i_pad = True,
		i_phone_and_i_pod = True,
	),
	vpp_token_organization_name = "Vpp Token Organization Name value",
	vpp_token_account_type = VppTokenAccountType.Education,
	vpp_token_apple_id = "Vpp Token Apple Id value",
	bundle_id = "Bundle Id value",
)

result = await graph_client.device_app_management.mobile_apps.post(request_body)


```