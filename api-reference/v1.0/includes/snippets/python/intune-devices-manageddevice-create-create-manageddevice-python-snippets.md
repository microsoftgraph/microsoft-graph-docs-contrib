---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ManagedDevice()
request_body.@odata_type = '#microsoft.graph.managedDevice'

request_body.user_id = 'User Id value'

request_body.device_name = 'Device Name value'

request_body.manageddeviceownertype(ManagedDeviceOwnerType.Company('manageddeviceownertype.company'))

device_action_results_device_action_result1 = DeviceActionResult()
device_action_results_device_action_result1.@odata_type = 'microsoft.graph.deviceActionResult'

device_action_results_device_action_result1.action_name = 'Action Name value'

device_action_results_device_action_result1.actionstate(ActionState.Pending('actionstate.pending'))

device_action_results_device_action_result1.startDateTime = DateTime('2016-12-31T23:58:46.7156189-08:00')

device_action_results_device_action_result1.lastUpdatedDateTime = DateTime('2017-01-01T00:00:56.8321556-08:00')


deviceActionResultsArray []= deviceActionResultsDeviceActionResult1;
request_body.deviceactionresults(deviceActionResultsArray)


request_body.enrolledDateTime = DateTime('2016-12-31T23:59:43.797191-08:00')

request_body.lastSyncDateTime = DateTime('2017-01-01T00:02:49.3205976-08:00')

request_body.operating_system = 'Operating System value'

request_body.compliancestate(ComplianceState.Compliant('compliancestate.compliant'))

request_body.jail_broken = 'Jail Broken value'

request_body.managementagent(ManagementAgentType.Mdm('managementagenttype.mdm'))

request_body.os_version = 'Os Version value'

request_body.eas_activated = True

request_body.eas_device_id = 'Eas Device Id value'

request_body.easActivationDateTime = DateTime('2016-12-31T23:59:43.4878784-08:00')

request_body.azure_a_d_registered = True

request_body.deviceenrollmenttype(DeviceEnrollmentType.UserEnrollment('deviceenrollmenttype.userenrollment'))

request_body.activation_lock_bypass_code = 'Activation Lock Bypass Code value'

request_body.email_address = 'Email Address value'

request_body.azure_a_d_device_id = 'Azure ADDevice Id value'

request_body.deviceregistrationstate(DeviceRegistrationState.Registered('deviceregistrationstate.registered'))

request_body.device_category_display_name = 'Device Category Display Name value'

request_body.is_supervised = True

request_body.exchangeLastSuccessfulSyncDateTime = DateTime('2017-01-01T00:00:45.8803083-08:00')

request_body.exchangeaccessstate(DeviceManagementExchangeAccessState.Unknown('devicemanagementexchangeaccessstate.unknown'))

request_body.exchangeaccessstatereason(DeviceManagementExchangeAccessStateReason.Unknown('devicemanagementexchangeaccessstatereason.unknown'))

request_body.remote_assistance_session_url = 'https://example.com/remoteAssistanceSessionUrl/'

request_body.remote_assistance_session_error_details = 'Remote Assistance Session Error Details value'

request_body.is_encrypted = True

request_body.user_principal_name = 'User Principal Name value'

request_body.model = 'Model value'

request_body.manufacturer = 'Manufacturer value'

request_body.imei = 'Imei value'

request_body.complianceGracePeriodExpirationDateTime = DateTime('2016-12-31T23:56:44.951111-08:00')

request_body.serial_number = 'Serial Number value'

request_body.phone_number = 'Phone Number value'

request_body.android_security_patch_level = 'Android Security Patch Level value'

request_body.user_display_name = 'User Display Name value'

configuration_manager_client_enabled_features = ConfigurationManagerClientEnabledFeatures()
configuration_manager_client_enabled_features.@odata_type = 'microsoft.graph.configurationManagerClientEnabledFeatures'

configuration_manager_client_enabled_features.inventory = True

configuration_manager_client_enabled_features.modern_apps = True

configuration_manager_client_enabled_features.resource_access = True

configuration_manager_client_enabled_features.device_configuration = True

configuration_manager_client_enabled_features.compliance_policy = True

configuration_manager_client_enabled_features.windows_update_for_business = True


request_body.configuration_manager_client_enabled_features = configuration_manager_client_enabled_features
request_body.wi_fi_mac_address = 'Wi Fi Mac Address value'

device_health_attestation_state = DeviceHealthAttestationState()
device_health_attestation_state.@odata_type = 'microsoft.graph.deviceHealthAttestationState'

device_health_attestation_state.last_update_date_time = 'Last Update Date Time value'

device_health_attestation_state.content_namespace_url = 'https://example.com/contentNamespaceUrl/'

device_health_attestation_state.device_health_attestation_status = 'Device Health Attestation Status value'

device_health_attestation_state.content_version = 'Content Version value'

device_health_attestation_state.issuedDateTime = DateTime('2016-12-31T23:58:22.1231038-08:00')

device_health_attestation_state.attestation_identity_key = 'Attestation Identity Key value'

device_health_attestation_state.ResetCount = 10

device_health_attestation_state.RestartCount = 12

device_health_attestation_state.data_excution_policy = 'Data Excution Policy value'

device_health_attestation_state.bit_locker_status = 'Bit Locker Status value'

device_health_attestation_state.boot_manager_version = 'Boot Manager Version value'

device_health_attestation_state.code_integrity_check_version = 'Code Integrity Check Version value'

device_health_attestation_state.secure_boot = 'Secure Boot value'

device_health_attestation_state.boot_debugging = 'Boot Debugging value'

device_health_attestation_state.operating_system_kernel_debugging = 'Operating System Kernel Debugging value'

device_health_attestation_state.code_integrity = 'Code Integrity value'

device_health_attestation_state.test_signing = 'Test Signing value'

device_health_attestation_state.safe_mode = 'Safe Mode value'

device_health_attestation_state.windows_p_e = 'Windows PE value'

device_health_attestation_state.early_launch_anti_malware_driver_protection = 'Early Launch Anti Malware Driver Protection value'

device_health_attestation_state.virtual_secure_mode = 'Virtual Secure Mode value'

device_health_attestation_state.pcr_hash_algorithm = 'Pcr Hash Algorithm value'

device_health_attestation_state.boot_app_security_version = 'Boot App Security Version value'

device_health_attestation_state.boot_manager_security_version = 'Boot Manager Security Version value'

device_health_attestation_state.tpm_version = 'Tpm Version value'

device_health_attestation_state.pcr0 = 'Pcr0 value'

device_health_attestation_state.secure_boot_configuration_policy_finger_print = 'Secure Boot Configuration Policy Finger Print value'

device_health_attestation_state.code_integrity_policy = 'Code Integrity Policy value'

device_health_attestation_state.boot_revision_list_info = 'Boot Revision List Info value'

device_health_attestation_state.operating_system_rev_list_info = 'Operating System Rev List Info value'

device_health_attestation_state.health_status_mismatch_info = 'Health Status Mismatch Info value'

device_health_attestation_state.health_attestation_supported_status = 'Health Attestation Supported Status value'


request_body.device_health_attestation_state = device_health_attestation_state
request_body.subscriber_carrier = 'Subscriber Carrier value'

request_body.meid = 'Meid value'

request_body.TotalStorageSpaceInBytes = 8

request_body.FreeStorageSpaceInBytes = 7

request_body.managed_device_name = 'Managed Device Name value'

request_body.partnerreportedthreatstate(ManagedDevicePartnerReportedHealthState.Activated('manageddevicepartnerreportedhealthstate.activated'))

request_body.require_user_enrollment_approval = True

request_body.managementCertificateExpirationDate = DateTime('2016-12-31T23:57:59.9789653-08:00')

request_body.iccid = 'Iccid value'

request_body.udid = 'Udid value'

request_body.notes = 'Notes value'

request_body.ethernet_mac_address = 'Ethernet Mac Address value'

request_body.PhysicalMemoryInBytes = 5




result = await client.device_management.managed_devices.post(request_body = request_body)


```