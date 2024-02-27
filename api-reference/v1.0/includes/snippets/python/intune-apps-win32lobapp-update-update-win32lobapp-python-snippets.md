---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.win32_lob_app import Win32LobApp
from msgraph.generated.models.mime_content import MimeContent
from msgraph.generated.models.win32_lob_app_rule import Win32LobAppRule
from msgraph.generated.models.win32_lob_app_registry_rule import Win32LobAppRegistryRule
from msgraph.generated.models.win32_lob_app_install_experience import Win32LobAppInstallExperience
from msgraph.generated.models.win32_lob_app_return_code import Win32LobAppReturnCode
from msgraph.generated.models.win32_lob_app_msi_information import Win32LobAppMsiInformation

graph_client = GraphServiceClient(credentials, scopes)

request_body = Win32LobApp(
	odata_type = "#microsoft.graph.win32LobApp",
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
	committed_content_version = "Committed Content Version value",
	file_name = "File Name value",
	size = 4,
	install_command_line = "Install Command Line value",
	uninstall_command_line = "Uninstall Command Line value",
	applicable_architectures = WindowsArchitecture.X86,
	minimum_free_disk_space_in_m_b = 8,
	minimum_memory_in_m_b = 1,
	minimum_number_of_processors = 9,
	minimum_cpu_speed_in_m_hz = 4,
	rules = [
		Win32LobAppRegistryRule(
			odata_type = "microsoft.graph.win32LobAppRegistryRule",
			rule_type = Win32LobAppRuleType.Requirement,
			check32_bit_on64_system = True,
			key_path = "Key Path value",
			value_name = "Value Name value",
			operation_type = Win32LobAppRegistryRuleOperationType.Exists,
			operator = Win32LobAppRuleOperator.Equal,
			comparison_value = "Comparison Value value",
		),
	],
	install_experience = Win32LobAppInstallExperience(
		odata_type = "microsoft.graph.win32LobAppInstallExperience",
		run_as_account = RunAsAccountType.User,
		device_restart_behavior = Win32LobAppRestartBehavior.Allow,
	),
	return_codes = [
		Win32LobAppReturnCode(
			odata_type = "microsoft.graph.win32LobAppReturnCode",
			return_code = 10,
			type = Win32LobAppReturnCodeType.Success,
		),
	],
	msi_information = Win32LobAppMsiInformation(
		odata_type = "microsoft.graph.win32LobAppMsiInformation",
		product_code = "Product Code value",
		product_version = "Product Version value",
		upgrade_code = "Upgrade Code value",
		requires_reboot = True,
		package_type = Win32LobAppMsiPackageType.PerUser,
		product_name = "Product Name value",
		publisher = "Publisher value",
	),
	setup_file_path = "Setup File Path value",
	minimum_supported_windows_release = "Minimum Supported Windows Release value",
)

result = await graph_client.device_app_management.mobile_apps.by_mobile_app_id('mobileApp-id').patch(request_body)


```