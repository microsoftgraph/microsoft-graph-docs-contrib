---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.windows10_endpoint_protection_configuration import Windows10EndpointProtectionConfiguration
from msgraph.generated.models.firewall_pre_shared_key_encoding_method_type import FirewallPreSharedKeyEncodingMethodType
from msgraph.generated.models.firewall_certificate_revocation_list_check_method_type import FirewallCertificateRevocationListCheckMethodType
from msgraph.generated.models.firewall_packet_queueing_method_type import FirewallPacketQueueingMethodType
from msgraph.generated.models.windows_firewall_network_profile import WindowsFirewallNetworkProfile
from msgraph.generated.models.state_management_setting import StateManagementSetting
from msgraph.generated.models.app_locker_application_control_type import AppLockerApplicationControlType
from msgraph.generated.models.application_guard_block_file_transfer_type import ApplicationGuardBlockFileTransferType
from msgraph.generated.models.application_guard_block_clipboard_sharing_type import ApplicationGuardBlockClipboardSharingType
from msgraph.generated.models.bit_locker_removable_drive_policy import BitLockerRemovableDrivePolicy
from msgraph.generated.models.bit_locker_encryption_method import BitLockerEncryptionMethod
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Windows10EndpointProtectionConfiguration(
	odata_type = "#microsoft.graph.windows10EndpointProtectionConfiguration",
	description = "Description value",
	display_name = "Display Name value",
	version = 7,
	firewall_block_stateful_f_t_p = True,
	firewall_idle_timeout_for_security_association_in_seconds = 2,
	firewall_pre_shared_key_encoding_method = FirewallPreSharedKeyEncodingMethodType.None,
	firewall_i_p_sec_exemptions_allow_neighbor_discovery = True,
	firewall_i_p_sec_exemptions_allow_i_c_m_p = True,
	firewall_i_p_sec_exemptions_allow_router_discovery = True,
	firewall_i_p_sec_exemptions_allow_d_h_c_p = True,
	firewall_certificate_revocation_list_check_method = FirewallCertificateRevocationListCheckMethodType.None,
	firewall_merge_keying_module_settings = True,
	firewall_packet_queueing_method = FirewallPacketQueueingMethodType.Disabled,
	firewall_profile_domain = WindowsFirewallNetworkProfile(
		odata_type = "microsoft.graph.windowsFirewallNetworkProfile",
		firewall_enabled = StateManagementSetting.Blocked,
		stealth_mode_blocked = True,
		incoming_traffic_blocked = True,
		unicast_responses_to_multicast_broadcasts_blocked = True,
		inbound_notifications_blocked = True,
		authorized_application_rules_from_group_policy_merged = True,
		global_port_rules_from_group_policy_merged = True,
		connection_security_rules_from_group_policy_merged = True,
		outbound_connections_blocked = True,
		inbound_connections_blocked = True,
		secured_packet_exemption_allowed = True,
		policy_rules_from_group_policy_merged = True,
	),
	firewall_profile_public = WindowsFirewallNetworkProfile(
		odata_type = "microsoft.graph.windowsFirewallNetworkProfile",
		firewall_enabled = StateManagementSetting.Blocked,
		stealth_mode_blocked = True,
		incoming_traffic_blocked = True,
		unicast_responses_to_multicast_broadcasts_blocked = True,
		inbound_notifications_blocked = True,
		authorized_application_rules_from_group_policy_merged = True,
		global_port_rules_from_group_policy_merged = True,
		connection_security_rules_from_group_policy_merged = True,
		outbound_connections_blocked = True,
		inbound_connections_blocked = True,
		secured_packet_exemption_allowed = True,
		policy_rules_from_group_policy_merged = True,
	),
	firewall_profile_private = WindowsFirewallNetworkProfile(
		odata_type = "microsoft.graph.windowsFirewallNetworkProfile",
		firewall_enabled = StateManagementSetting.Blocked,
		stealth_mode_blocked = True,
		incoming_traffic_blocked = True,
		unicast_responses_to_multicast_broadcasts_blocked = True,
		inbound_notifications_blocked = True,
		authorized_application_rules_from_group_policy_merged = True,
		global_port_rules_from_group_policy_merged = True,
		connection_security_rules_from_group_policy_merged = True,
		outbound_connections_blocked = True,
		inbound_connections_blocked = True,
		secured_packet_exemption_allowed = True,
		policy_rules_from_group_policy_merged = True,
	),
	defender_attack_surface_reduction_excluded_paths = [
		"Defender Attack Surface Reduction Excluded Paths value",
	],
	defender_guarded_folders_allowed_app_paths = [
		"Defender Guarded Folders Allowed App Paths value",
	],
	defender_additional_guarded_folders = [
		"Defender Additional Guarded Folders value",
	],
	defender_exploit_protection_xml = base64.urlsafe_b64decode("ZGVmZW5kZXJFeHBsb2l0UHJvdGVjdGlvblhtbA=="),
	defender_exploit_protection_xml_file_name = "Defender Exploit Protection Xml File Name value",
	defender_security_center_block_exploit_protection_override = True,
	app_locker_application_control = AppLockerApplicationControlType.EnforceComponentsAndStoreApps,
	smart_screen_enable_in_shell = True,
	smart_screen_block_override_for_files = True,
	application_guard_enabled = True,
	application_guard_block_file_transfer = ApplicationGuardBlockFileTransferType.BlockImageAndTextFile,
	application_guard_block_non_enterprise_content = True,
	application_guard_allow_persistence = True,
	application_guard_force_auditing = True,
	application_guard_block_clipboard_sharing = ApplicationGuardBlockClipboardSharingType.BlockBoth,
	application_guard_allow_print_to_p_d_f = True,
	application_guard_allow_print_to_x_p_s = True,
	application_guard_allow_print_to_local_printers = True,
	application_guard_allow_print_to_network_printers = True,
	bit_locker_disable_warning_for_other_disk_encryption = True,
	bit_locker_enable_storage_card_encryption_on_mobile = True,
	bit_locker_encrypt_device = True,
	bit_locker_removable_drive_policy = BitLockerRemovableDrivePolicy(
		odata_type = "microsoft.graph.bitLockerRemovableDrivePolicy",
		encryption_method = BitLockerEncryptionMethod.AesCbc256,
		require_encryption_for_write_access = True,
		block_cross_organization_write_access = True,
	),
)

result = await graph_client.device_management.device_configurations.post(request_body)


```