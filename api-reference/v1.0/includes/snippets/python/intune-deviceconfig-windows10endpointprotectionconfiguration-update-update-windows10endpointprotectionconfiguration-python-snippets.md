---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Windows10EndpointProtectionConfiguration()
request_body.@odata_type = '#microsoft.graph.windows10EndpointProtectionConfiguration'

request_body.description = 'Description value'

request_body.display_name = 'Display Name value'

request_body.Version = 7

request_body.firewall_block_stateful_f_t_p = True

request_body.FirewallIdleTimeoutForSecurityAssociationInSeconds = 2

request_body.firewallpresharedkeyencodingmethod(FirewallPreSharedKeyEncodingMethodType.None('firewallpresharedkeyencodingmethodtype.none'))

request_body.firewall_i_p_sec_exemptions_allow_neighbor_discovery = True

request_body.firewall_i_p_sec_exemptions_allow_i_c_m_p = True

request_body.firewall_i_p_sec_exemptions_allow_router_discovery = True

request_body.firewall_i_p_sec_exemptions_allow_d_h_c_p = True

request_body.firewallcertificaterevocationlistcheckmethod(FirewallCertificateRevocationListCheckMethodType.None('firewallcertificaterevocationlistcheckmethodtype.none'))

request_body.firewall_merge_keying_module_settings = True

request_body.firewallpacketqueueingmethod(FirewallPacketQueueingMethodType.Disabled('firewallpacketqueueingmethodtype.disabled'))

firewall_profile_domain = WindowsFirewallNetworkProfile()
firewall_profile_domain.@odata_type = 'microsoft.graph.windowsFirewallNetworkProfile'

firewall_profile_domain.firewallenabled(StateManagementSetting.Blocked('statemanagementsetting.blocked'))

firewall_profile_domain.stealth_mode_blocked = True

firewall_profile_domain.incoming_traffic_blocked = True

firewall_profile_domain.unicast_responses_to_multicast_broadcasts_blocked = True

firewall_profile_domain.inbound_notifications_blocked = True

firewall_profile_domain.authorized_application_rules_from_group_policy_merged = True

firewall_profile_domain.global_port_rules_from_group_policy_merged = True

firewall_profile_domain.connection_security_rules_from_group_policy_merged = True

firewall_profile_domain.outbound_connections_blocked = True

firewall_profile_domain.inbound_connections_blocked = True

firewall_profile_domain.secured_packet_exemption_allowed = True

firewall_profile_domain.policy_rules_from_group_policy_merged = True


request_body.firewall_profile_domain = firewall_profile_domain
firewall_profile_public = WindowsFirewallNetworkProfile()
firewall_profile_public.@odata_type = 'microsoft.graph.windowsFirewallNetworkProfile'

firewall_profile_public.firewallenabled(StateManagementSetting.Blocked('statemanagementsetting.blocked'))

firewall_profile_public.stealth_mode_blocked = True

firewall_profile_public.incoming_traffic_blocked = True

firewall_profile_public.unicast_responses_to_multicast_broadcasts_blocked = True

firewall_profile_public.inbound_notifications_blocked = True

firewall_profile_public.authorized_application_rules_from_group_policy_merged = True

firewall_profile_public.global_port_rules_from_group_policy_merged = True

firewall_profile_public.connection_security_rules_from_group_policy_merged = True

firewall_profile_public.outbound_connections_blocked = True

firewall_profile_public.inbound_connections_blocked = True

firewall_profile_public.secured_packet_exemption_allowed = True

firewall_profile_public.policy_rules_from_group_policy_merged = True


request_body.firewall_profile_public = firewall_profile_public
firewall_profile_private = WindowsFirewallNetworkProfile()
firewall_profile_private.@odata_type = 'microsoft.graph.windowsFirewallNetworkProfile'

firewall_profile_private.firewallenabled(StateManagementSetting.Blocked('statemanagementsetting.blocked'))

firewall_profile_private.stealth_mode_blocked = True

firewall_profile_private.incoming_traffic_blocked = True

firewall_profile_private.unicast_responses_to_multicast_broadcasts_blocked = True

firewall_profile_private.inbound_notifications_blocked = True

firewall_profile_private.authorized_application_rules_from_group_policy_merged = True

firewall_profile_private.global_port_rules_from_group_policy_merged = True

firewall_profile_private.connection_security_rules_from_group_policy_merged = True

firewall_profile_private.outbound_connections_blocked = True

firewall_profile_private.inbound_connections_blocked = True

firewall_profile_private.secured_packet_exemption_allowed = True

firewall_profile_private.policy_rules_from_group_policy_merged = True


request_body.firewall_profile_private = firewall_profile_private
request_body.DefenderAttackSurfaceReductionExcludedPaths(['Defender Attack Surface Reduction Excluded Paths value', ])

request_body.DefenderGuardedFoldersAllowedAppPaths(['Defender Guarded Folders Allowed App Paths value', ])

request_body.DefenderAdditionalGuardedFolders(['Defender Additional Guarded Folders value', ])

request_body.DefenderExploitProtectionXml(base64_decode('ZGVmZW5kZXJFeHBsb2l0UHJvdGVjdGlvblhtbA=='))

request_body.defender_exploit_protection_xml_file_name = 'Defender Exploit Protection Xml File Name value'

request_body.defender_security_center_block_exploit_protection_override = True

request_body.applockerapplicationcontrol(AppLockerApplicationControlType.EnforceComponentsAndStoreApps('applockerapplicationcontroltype.enforcecomponentsandstoreapps'))

request_body.smart_screen_enable_in_shell = True

request_body.smart_screen_block_override_for_files = True

request_body.application_guard_enabled = True

request_body.applicationguardblockfiletransfer(ApplicationGuardBlockFileTransferType.BlockImageAndTextFile('applicationguardblockfiletransfertype.blockimageandtextfile'))

request_body.application_guard_block_non_enterprise_content = True

request_body.application_guard_allow_persistence = True

request_body.application_guard_force_auditing = True

request_body.applicationguardblockclipboardsharing(ApplicationGuardBlockClipboardSharingType.BlockBoth('applicationguardblockclipboardsharingtype.blockboth'))

request_body.application_guard_allow_print_to_p_d_f = True

request_body.application_guard_allow_print_to_x_p_s = True

request_body.application_guard_allow_print_to_local_printers = True

request_body.application_guard_allow_print_to_network_printers = True

request_body.bit_locker_disable_warning_for_other_disk_encryption = True

request_body.bit_locker_enable_storage_card_encryption_on_mobile = True

request_body.bit_locker_encrypt_device = True

bit_locker_removable_drive_policy = BitLockerRemovableDrivePolicy()
bit_locker_removable_drive_policy.@odata_type = 'microsoft.graph.bitLockerRemovableDrivePolicy'

bit_locker_removable_drive_policy.encryptionmethod(BitLockerEncryptionMethod.AesCbc256('bitlockerencryptionmethod.aescbc256'))

bit_locker_removable_drive_policy.require_encryption_for_write_access = True

bit_locker_removable_drive_policy.block_cross_organization_write_access = True


request_body.bit_locker_removable_drive_policy = bit_locker_removable_drive_policy



result = await client.device_management.device_configurations.by_device_configuration_id('deviceConfiguration-id').patch(request_body = request_body)


```