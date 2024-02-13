---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.managed_device import ManagedDevice
from msgraph.generated.models.device_action_result import DeviceActionResult
from msgraph.generated.models.configuration_manager_client_enabled_features import ConfigurationManagerClientEnabledFeatures
from msgraph.generated.models.device_health_attestation_state import DeviceHealthAttestationState

graph_client = GraphServiceClient(credentials, scopes)

request_body = ManagedDevice(
	odata_type = "#microsoft.graph.managedDevice",
	user_id = "User Id value",
	device_name = "Device Name value",
	managed_device_owner_type = ManagedDeviceOwnerType.Company,
	device_action_results = [
		DeviceActionResult(
			odata_type = "microsoft.graph.deviceActionResult",
			action_name = "Action Name value",
			action_state = ActionState.Pending,
			start_date_time = "2016-12-31T23:58:46.7156189-08:00",
			last_updated_date_time = "2017-01-01T00:00:56.8321556-08:00",
		),
	],
	enrolled_date_time = "2016-12-31T23:59:43.797191-08:00",
	last_sync_date_time = "2017-01-01T00:02:49.3205976-08:00",
	operating_system = "Operating System value",
	compliance_state = ComplianceState.Compliant,
	jail_broken = "Jail Broken value",
	management_agent = ManagementAgentType.Mdm,
	os_version = "Os Version value",
	eas_activated = True,
	eas_device_id = "Eas Device Id value",
	eas_activation_date_time = "2016-12-31T23:59:43.4878784-08:00",
	azure_a_d_registered = True,
	device_enrollment_type = DeviceEnrollmentType.UserEnrollment,
	activation_lock_bypass_code = "Activation Lock Bypass Code value",
	email_address = "Email Address value",
	azure_a_d_device_id = "Azure ADDevice Id value",
	device_registration_state = DeviceRegistrationState.Registered,
	device_category_display_name = "Device Category Display Name value",
	is_supervised = True,
	exchange_last_successful_sync_date_time = "2017-01-01T00:00:45.8803083-08:00",
	exchange_access_state = DeviceManagementExchangeAccessState.Unknown,
	exchange_access_state_reason = DeviceManagementExchangeAccessStateReason.Unknown,
	remote_assistance_session_url = "https://example.com/remoteAssistanceSessionUrl/",
	remote_assistance_session_error_details = "Remote Assistance Session Error Details value",
	is_encrypted = True,
	user_principal_name = "User Principal Name value",
	model = "Model value",
	manufacturer = "Manufacturer value",
	imei = "Imei value",
	compliance_grace_period_expiration_date_time = "2016-12-31T23:56:44.951111-08:00",
	serial_number = "Serial Number value",
	phone_number = "Phone Number value",
	android_security_patch_level = "Android Security Patch Level value",
	user_display_name = "User Display Name value",
	configuration_manager_client_enabled_features = ConfigurationManagerClientEnabledFeatures(
		odata_type = "microsoft.graph.configurationManagerClientEnabledFeatures",
		inventory = True,
		modern_apps = True,
		resource_access = True,
		device_configuration = True,
		compliance_policy = True,
		windows_update_for_business = True,
	),
	wi_fi_mac_address = "Wi Fi Mac Address value",
	device_health_attestation_state = DeviceHealthAttestationState(
		odata_type = "microsoft.graph.deviceHealthAttestationState",
		last_update_date_time = "Last Update Date Time value",
		content_namespace_url = "https://example.com/contentNamespaceUrl/",
		device_health_attestation_status = "Device Health Attestation Status value",
		content_version = "Content Version value",
		issued_date_time = "2016-12-31T23:58:22.1231038-08:00",
		attestation_identity_key = "Attestation Identity Key value",
		reset_count = 10,
		restart_count = 12,
		data_excution_policy = "Data Excution Policy value",
		bit_locker_status = "Bit Locker Status value",
		boot_manager_version = "Boot Manager Version value",
		code_integrity_check_version = "Code Integrity Check Version value",
		secure_boot = "Secure Boot value",
		boot_debugging = "Boot Debugging value",
		operating_system_kernel_debugging = "Operating System Kernel Debugging value",
		code_integrity = "Code Integrity value",
		test_signing = "Test Signing value",
		safe_mode = "Safe Mode value",
		windows_p_e = "Windows PE value",
		early_launch_anti_malware_driver_protection = "Early Launch Anti Malware Driver Protection value",
		virtual_secure_mode = "Virtual Secure Mode value",
		pcr_hash_algorithm = "Pcr Hash Algorithm value",
		boot_app_security_version = "Boot App Security Version value",
		boot_manager_security_version = "Boot Manager Security Version value",
		tpm_version = "Tpm Version value",
		pcr0 = "Pcr0 value",
		secure_boot_configuration_policy_finger_print = "Secure Boot Configuration Policy Finger Print value",
		code_integrity_policy = "Code Integrity Policy value",
		boot_revision_list_info = "Boot Revision List Info value",
		operating_system_rev_list_info = "Operating System Rev List Info value",
		health_status_mismatch_info = "Health Status Mismatch Info value",
		health_attestation_supported_status = "Health Attestation Supported Status value",
	),
	subscriber_carrier = "Subscriber Carrier value",
	meid = "Meid value",
	total_storage_space_in_bytes = 8,
	free_storage_space_in_bytes = 7,
	managed_device_name = "Managed Device Name value",
	partner_reported_threat_state = ManagedDevicePartnerReportedHealthState.Activated,
	require_user_enrollment_approval = True,
	management_certificate_expiration_date = "2016-12-31T23:57:59.9789653-08:00",
	iccid = "Iccid value",
	udid = "Udid value",
	notes = "Notes value",
	ethernet_mac_address = "Ethernet Mac Address value",
	physical_memory_in_bytes = 5,
)

result = await graph_client.device_management.managed_devices.by_managed_device_id('managedDevice-id').patch(request_body)


```