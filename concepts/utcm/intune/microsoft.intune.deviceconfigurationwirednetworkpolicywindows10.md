---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

Intune Device Configuration Wired Network Policy for Windows10


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| **AuthenticationBlockPeriodInMinutes** | Write | UInt32 | Specify the duration for which automatic authentication attempts will be blocked from occuring after a failed authentication attempt. | |
| **AuthenticationMethod** | Write | String | Specify the authentication method. Possible values are: certificate, usernameAndPassword, derivedCredential. Possible values are: certificate, usernameAndPassword, derivedCredential, unknownFutureValue. | `certificate`, `usernameAndPassword`, `derivedCredential`, `unknownFutureValue` |
| **AuthenticationPeriodInSeconds** | Write | UInt32 | Specify the number of seconds for the client to wait after an authentication attempt before failing. Valid range 1-3600. | |
| **AuthenticationRetryDelayPeriodInSeconds** | Write | UInt32 | Specify the number of seconds between a failed authentication and the next authentication attempt. Valid range 1-3600. | |
| **AuthenticationType** | Write | String | Specify whether to authenticate the user, the device, either, or to use guest authentication (none). If you're using certificate authentication, make sure the certificate type matches the authentication type. Possible values are: none, user, machine, machineOrUser, guest. Possible values are: none, user, machine, machineOrUser, guest, unknownFutureValue. | `none`, `user`, `machine`, `machineOrUser`, `guest`, `unknownFutureValue` |
| **CacheCredentials** | Write | Boolean | When TRUE, caches user credentials on the device so that users don't need to keep entering them each time they connect. When FALSE, do not cache credentials. Default value is FALSE. | |
| **DisableUserPromptForServerValidation** | Write | Boolean | When TRUE, prevents the user from being prompted to authorize new servers for trusted certification authorities when EAP type is selected as PEAP. When FALSE, does not prevent the user from being prompted. Default value is FALSE. | |
| **EapolStartPeriodInSeconds** | Write | UInt32 | Specify the number of seconds to wait before sending an EAPOL (Extensible Authentication Protocol over LAN) Start message. Valid range 1-3600. | |
| **EapType** | Write | String | Extensible Authentication Protocol (EAP). Indicates the type of EAP protocol set on the Wi-Fi endpoint (router). Possible values are: eapTls, leap, eapSim, eapTtls, peap, eapFast, teap. Possible values are: eapTls, leap, eapSim, eapTtls, peap, eapFast, teap. | `eapTls`, `leap`, `eapSim`, `eapTtls`, `peap`, `eapFast`, `teap` |
| **Enforce8021X** | Write | Boolean | When TRUE, the automatic configuration service for wired networks requires the use of 802.1X for port authentication. When FALSE, 802.1X is not required. Default value is FALSE. | |
| **ForceFIPSCompliance** | Write | Boolean | When TRUE, forces FIPS compliance. When FALSE, does not enable FIPS compliance. Default value is FALSE. | |
| **InnerAuthenticationProtocolForEAPTTLS** | Write | String | Specify inner authentication protocol for EAP TTLS. Possible values are: unencryptedPassword, challengeHandshakeAuthenticationProtocol, microsoftChap, microsoftChapVersionTwo. Possible values are: unencryptedPassword, challengeHandshakeAuthenticationProtocol, microsoftChap, microsoftChapVersionTwo. | `unencryptedPassword`, `challengeHandshakeAuthenticationProtocol`, `microsoftChap`, `microsoftChapVersionTwo` |
| **MaximumAuthenticationFailures** | Write | UInt32 | Specify the maximum authentication failures allowed for a set of credentials. Valid range 1-100. | |
| **MaximumEAPOLStartMessages** | Write | UInt32 | Specify the maximum number of EAPOL (Extensible Authentication Protocol over LAN) Start messages to be sent before returning failure. Valid range 1-100. | |
| **OuterIdentityPrivacyTemporaryValue** | Write | String | Specify the string to replace usernames for privacy when using EAP TTLS or PEAP. | |
| **PerformServerValidation** | Write | Boolean | When TRUE, enables verification of server's identity by validating the certificate when EAP type is selected as PEAP. When FALSE, the certificate is not validated. Default value is TRUE. | |
| **RequireCryptographicBinding** | Write | Boolean | When TRUE, enables cryptographic binding when EAP type is selected as PEAP. When FALSE, does not enable cryptogrpahic binding. Default value is TRUE. | |
| **SecondaryAuthenticationMethod** | Write | String | Specify the secondary authentication method. Possible values are: certificate, usernameAndPassword, derivedCredential. Possible values are: certificate, usernameAndPassword, derivedCredential, unknownFutureValue. | `certificate`, `usernameAndPassword`, `derivedCredential`, `unknownFutureValue` |
| **TrustedServerCertificateNames** | Write | StringArray[] | Specify trusted server certificate names. | |
| **RootCertificatesForServerValidationIds** | Write | StringArray[] | Specify root certificates for server validation. This collection can contain a maximum of 500 elements. | |
| **RootCertificatesForServerValidationDisplayNames** | Write | StringArray[] | Specify root certificate display names for server validation. This collection can contain a maximum of 500 elements. | |
| **IdentityCertificateForClientAuthenticationId** | Write | String | Specify identity certificate for client authentication. | |
| **IdentityCertificateForClientAuthenticationDisplayName** | Write | String | Specify identity certificate display name for client authentication. | |
| **SecondaryIdentityCertificateForClientAuthenticationId** | Write | String | Specify root certificate for client validation | |
| **SecondaryIdentityCertificateForClientAuthenticationDisplayName** | Write | String | Specify root certificate display name for client validation | |
| **RootCertificateForClientValidationId** | Write | String | Specify root certificate for client validation. | |
| **RootCertificateForClientValidationDisplayName** | Write | String | Specify root certificate display name for client validation. | |
| **SecondaryRootCertificateForClientValidationId** | Write | String | Specify secondary root certificate for client validation. | |
| **SecondaryRootCertificateForClientValidationDisplayName** | Write | String | Specify secondary root certificate display name for client validation. | |
| **Description** | Write | String | Admin provided description of the Device Configuration. | |
| **DisplayName** | Key | String | Admin provided name of the device configuration. | |
| **Id** | Write | String | The unique identifier for an entity. Read-only. | |
| **Assignments** | Write | MSFT_DeviceManagementConfigurationPolicyAssignments[] | Represents the assignment to the Intune policy. | |
| **Ensure** | Write | String | Present ensures the policy exists, absent ensures it's removed. | `Present`, `Absent` |

### MSFT_DeviceManagementConfigurationPolicyAssignments

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| **dataType** | Write | String | The type of the target assignment. | `#microsoft.graph.groupAssignmentTarget`, `#microsoft.graph.allLicensedUsersAssignmentTarget`, `#microsoft.graph.allDevicesAssignmentTarget`, `#microsoft.graph.exclusionGroupAssignmentTarget`, `#microsoft.graph.configurationManagerCollectionAssignmentTarget` |
| **deviceAndAppManagementAssignmentFilterType** | Write | String | The type of filter of the target assignment i.e. Exclude or Include. Possible values are:none, include, exclude. | `none`, `include`, `exclude` |
| **deviceAndAppManagementAssignmentFilterId** | Write | String | The Id of the filter for the target assignment. | |
| **groupId** | Write | String | The group Id that is the target of the assignment. | |
| **groupDisplayName** | Write | String | The group Display Name that is the target of the assignment. | |
| **collectionId** | Write | String | The collection Id that is the target of the assignment.(ConfigMgr) | |


## Permissions

### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

#### Application permissions

| Operation | Least privileged permissions |
|-----------|------------------------------|
| Read      | Group.Read.All, DeviceManagementConfiguration.Read.All |
| Update    | Group.Read.All, DeviceManagementConfiguration.ReadWrite.All |



