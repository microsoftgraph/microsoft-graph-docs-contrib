---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.windows_information_protection_policy import WindowsInformationProtectionPolicy
from msgraph.generated.models.windows_information_protection_enforcement_level import WindowsInformationProtectionEnforcementLevel
from msgraph.generated.models.windows_information_protection_resource_collection import WindowsInformationProtectionResourceCollection
from msgraph.generated.models.windows_information_protection_data_recovery_certificate import WindowsInformationProtectionDataRecoveryCertificate
from msgraph.generated.models.windows_information_protection_app import WindowsInformationProtectionApp
from msgraph.generated.models.windows_information_protection_store_app import WindowsInformationProtectionStoreApp
from msgraph.generated.models.windows_information_protection_proxied_domain_collection import WindowsInformationProtectionProxiedDomainCollection
from msgraph.generated.models.proxied_domain import ProxiedDomain
from msgraph.generated.models.windows_information_protection_i_p_range_collection import WindowsInformationProtectionIPRangeCollection
from msgraph.generated.models.ip_range import IpRange
from msgraph.generated.models.windows_information_protection_pin_character_requirements import WindowsInformationProtectionPinCharacterRequirements
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = WindowsInformationProtectionPolicy(
	odata_type = "#microsoft.graph.windowsInformationProtectionPolicy",
	display_name = "Display Name value",
	description = "Description value",
	version = "Version value",
	enforcement_level = WindowsInformationProtectionEnforcementLevel.EncryptAndAuditOnly,
	enterprise_domain = "Enterprise Domain value",
	enterprise_protected_domain_names = [
		WindowsInformationProtectionResourceCollection(
			odata_type = "microsoft.graph.windowsInformationProtectionResourceCollection",
			display_name = "Display Name value",
			resources = [
				"Resources value",
			],
		),
	],
	protection_under_lock_config_required = True,
	data_recovery_certificate = WindowsInformationProtectionDataRecoveryCertificate(
		odata_type = "microsoft.graph.windowsInformationProtectionDataRecoveryCertificate",
		subject_name = "Subject Name value",
		description = "Description value",
		expiration_date_time = "2016-12-31T23:57:57.2481234-08:00",
		certificate = base64.urlsafe_b64decode("Y2VydGlmaWNhdGU="),
	),
	revoke_on_unenroll_disabled = True,
	rights_management_services_template_id = UUID("abf7b16f-b16f-abf7-6fb1-f7ab6fb1f7ab"),
	azure_rights_management_services_allowed = True,
	icons_visible = True,
	protected_apps = [
		WindowsInformationProtectionStoreApp(
			odata_type = "microsoft.graph.windowsInformationProtectionStoreApp",
			display_name = "Display Name value",
			description = "Description value",
			publisher_name = "Publisher Name value",
			product_name = "Product Name value",
			denied = True,
		),
	],
	exempt_apps = [
		WindowsInformationProtectionStoreApp(
			odata_type = "microsoft.graph.windowsInformationProtectionStoreApp",
			display_name = "Display Name value",
			description = "Description value",
			publisher_name = "Publisher Name value",
			product_name = "Product Name value",
			denied = True,
		),
	],
	enterprise_network_domain_names = [
		WindowsInformationProtectionResourceCollection(
			odata_type = "microsoft.graph.windowsInformationProtectionResourceCollection",
			display_name = "Display Name value",
			resources = [
				"Resources value",
			],
		),
	],
	enterprise_proxied_domains = [
		WindowsInformationProtectionProxiedDomainCollection(
			odata_type = "microsoft.graph.windowsInformationProtectionProxiedDomainCollection",
			display_name = "Display Name value",
			proxied_domains = [
				ProxiedDomain(
					odata_type = "microsoft.graph.proxiedDomain",
					ip_address_or_f_q_d_n = "Ip Address Or FQDN value",
					proxy = "Proxy value",
				),
			],
		),
	],
	enterprise_i_p_ranges = [
		WindowsInformationProtectionIPRangeCollection(
			odata_type = "microsoft.graph.windowsInformationProtectionIPRangeCollection",
			display_name = "Display Name value",
			ranges = [
				IpRange(
					odata_type = "microsoft.graph.ipRange",
				),
			],
		),
	],
	enterprise_i_p_ranges_are_authoritative = True,
	enterprise_proxy_servers = [
		WindowsInformationProtectionResourceCollection(
			odata_type = "microsoft.graph.windowsInformationProtectionResourceCollection",
			display_name = "Display Name value",
			resources = [
				"Resources value",
			],
		),
	],
	enterprise_internal_proxy_servers = [
		WindowsInformationProtectionResourceCollection(
			odata_type = "microsoft.graph.windowsInformationProtectionResourceCollection",
			display_name = "Display Name value",
			resources = [
				"Resources value",
			],
		),
	],
	enterprise_proxy_servers_are_authoritative = True,
	neutral_domain_resources = [
		WindowsInformationProtectionResourceCollection(
			odata_type = "microsoft.graph.windowsInformationProtectionResourceCollection",
			display_name = "Display Name value",
			resources = [
				"Resources value",
			],
		),
	],
	indexing_encrypted_stores_or_items_blocked = True,
	smb_auto_encrypted_file_extensions = [
		WindowsInformationProtectionResourceCollection(
			odata_type = "microsoft.graph.windowsInformationProtectionResourceCollection",
			display_name = "Display Name value",
			resources = [
				"Resources value",
			],
		),
	],
	is_assigned = True,
	revoke_on_mdm_handoff_disabled = True,
	mdm_enrollment_url = "https://example.com/mdmEnrollmentUrl/",
	windows_hello_for_business_blocked = True,
	pin_minimum_length = 0,
	pin_uppercase_letters = WindowsInformationProtectionPinCharacterRequirements.RequireAtLeastOne,
	pin_lowercase_letters = WindowsInformationProtectionPinCharacterRequirements.RequireAtLeastOne,
	pin_special_characters = WindowsInformationProtectionPinCharacterRequirements.RequireAtLeastOne,
	pin_expiration_days = 1,
	number_of_past_pins_remembered = 10,
	password_maximum_attempt_count = 11,
	minutes_of_inactivity_before_device_lock = 3,
	days_without_contact_before_unenroll = 0,
)

result = await graph_client.device_app_management.windows_information_protection_policies.by_windows_information_protection_policy_id('windowsInformationProtectionPolicy-id').patch(request_body)


```