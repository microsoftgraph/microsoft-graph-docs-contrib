---
title: "deviceHealthAttestationState resource type"
description: "Intune Devices Devicehealthattestationstate Resources ."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceHealthAttestationState resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.



## Properties
|Property|Type|Description|
|:---|:---|:---|
|lastUpdateDateTime|String|The Timestamp of the last update.|
|contentNamespaceUrl|String|The DHA report version. (Namespace version)|
|deviceHealthAttestationStatus|String|The DHA report version. (Namespace version)|
|contentVersion|String|The HealthAttestation state schema version|
|issuedDateTime|DateTimeOffset|The DateTime when device was evaluated or issued to MDM|
|attestationIdentityKey|String|TWhen an Attestation Identity Key (AIK) is present on a device, it indicates that the device has an endorsement key (EK) certificate.|
|resetCount|Int64|The number of times a PC device has hibernated or resumed|
|restartCount|Int64|The number of times a PC device has rebooted|
|dataExcutionPolicy|String|DEP Policy defines a set of hardware and software technologies that perform additional checks on memory |
|bitLockerStatus|String|On or Off of BitLocker Drive Encryption|
|bootManagerVersion|String|The version of the Boot Manager|
|codeIntegrityCheckVersion|String|The version of the Boot Manager|
|secureBoot|String|When Secure Boot is enabled, the core components must have the correct cryptographic signatures|
|bootDebugging|String|When bootDebugging is enabled, the device is used in development and testing|
|operatingSystemKernelDebugging|String|When operatingSystemKernelDebugging is enabled, the device is used in development and testing|
|codeIntegrity|String| When code integrity is enabled, code execution is restricted to integrity verified code|
|testSigning|String|When test signing is allowed, the device does not enforce signature validation during boot|
|safeMode|String|Safe mode is a troubleshooting option for Windows that starts your computer in a limited state|
|windowsPE|String|Operating system running with limited services that is used to prepare a computer for Windows|
|earlyLaunchAntiMalwareDriverProtection|String|ELAM provides protection for the computers in your network when they start up|
|virtualSecureMode|String|Indicates whether the device has Virtual Secure Mode (VSM) enabled. Virtual Secure Mode (VSM) is a container that protects high value assets from a compromised kernel. This property will be deprecated in beta from August 2023. Support for this property will end in August 2025 for v1.0 API. A new property virtualizationBasedSecurity is added and used instead. The value used for virtualSecureMode will be passed by virtualizationBasedSecurity during the deprecation process. Possible values are "enabled", "disabled" and "notApplicable". "enabled" indicates Virtual Secure Mode (VSM) is enabled. "disabled" indicates Virtual Secure Mode (VSM) is disabled. "notApplicable" indicates the device is not a Windows 11 device. Default value is "notApplicable".|
|pcrHashAlgorithm|String|Informational attribute that identifies the HASH algorithm that was used by TPM|
|bootAppSecurityVersion|String|The security version number of the Boot Application|
|bootManagerSecurityVersion|String|The security version number of the Boot Application|
|tpmVersion|String|The security version number of the Boot Application|
|pcr0|String|The measurement that is captured in PCR\[0\]|
|secureBootConfigurationPolicyFingerPrint|String|Fingerprint of the Custom Secure Boot Configuration Policy|
|codeIntegrityPolicy|String|The Code Integrity policy that is controlling the security of the boot environment|
|bootRevisionListInfo|String|The Boot Revision List that was loaded during initial boot on the attested device|
|operatingSystemRevListInfo|String|The Operating System Revision List that was loaded during initial boot on the attested device|
|healthStatusMismatchInfo|String|This attribute appears if DHA-Service detects an integrity issue|
|healthAttestationSupportedStatus|String|This attribute indicates if DHA is supported for the device|
|memoryIntegrityProtection|[azureAttestationSettingStatus](../resources/intune-devices-azureattestationsettingstatus.md)|Indicates whether the device has Memory Integrity protection enabled. Memory Integrity is a feature of Virtualization-based security, also known as Hypervisor-protected code integrity (HVCI). It improves the threat mode of Windows and provides stronger protections against malware trying to exploit the Windows kernel. Possible values are "enabled", "disabled" and "notApplicable". "enabled" indicates Memory Integrity protection is enabled. "disabled" indicates Memory Integrity protection is disabled. "notApplicable" indicates the device is not a Windows 11 device. Default value is "notApplicable". Possible values are: `notApplicable`, `enabled`, `disabled`, `unknownFutureValue`.|
|memoryAccessProtection|[azureAttestationSettingStatus](../resources/intune-devices-azureattestationsettingstatus.md)|Indicates whether the device has Memory access protection enabled. A Windows security feature that protects against external peripherals from gaining unauthorized access to memory. Possible values are "enabled", "disabled" and "notApplicable". "enabled" indicates Memory access protection is enabled. "disabled" indicates Memory access protection is disabled. "notApplicable" indicates the device is not a Windows 11 device. Default value is "notApplicable". Possible values are: `notApplicable`, `enabled`, `disabled`, `unknownFutureValue`.|
|virtualizationBasedSecurity|[azureAttestationSettingStatus](../resources/intune-devices-azureattestationsettingstatus.md)|Indicates whether the device has Virtualization-based security (VBS) enabled. Virtualization-based security (VBS) uses hardware virtualization and the Windows hypervisor to create an isolated virtual environment that becomes the root of trust of the OS that assumes the kernel can be compromised. Possible values are "enabled", "disabled" and "notApplicable". "enabled" indicates Virtualization-based security (VBS) is enabled. "disabled" indicates Virtualization-based security (VBS) is disabled. "notApplicable" indicates the device is not a Windows 11 device. Default value is "notApplicable". Possible values are: `notApplicable`, `enabled`, `disabled`, `unknownFutureValue`.|
|firmwareProtection|[firmwareProtectionType](../resources/intune-devices-firmwareprotectiontype.md)|Indicates whether the device has Firmware protection enabled. Firmware protection is a set of features that helps to ensure attackers can't get your device to start with untrusted or malicious firmware. Possible values are "systemGuardSecureLaunch", "firmwareAttackSurfaceReduction", "disabled" and "notApplicable". "systemGuardSecureLaunch" indicates System Guard Secure Launch is enabled for Firmware protection. "firmwareAttackSurfaceReduction" indicates Firmware Attack Surface Reduction is enabled for Firmware protection. "disabled" indicates Firmware protection is disabled. "notApplicable" indicates the device is not a Windows 11 device. Default value is "notApplicable". Possible values are: `notApplicable`, `systemGuardSecureLaunch`, `firmwareAttackSurfaceReduction`, `disabled`, `unknownFutureValue`.|
|systemManagementMode|[systemManagementModeLevel](../resources/intune-devices-systemmanagementmodelevel.md)|Indicates the device meets enhanced hardware security. Possible values are "level1", "level2", "level3" and "notApplicable". "level1" indicates that deny System Management Mode (SMM) read/write access to OS and Virtualization-based security (VBS) memory. "level2" indicates that in addition to the System Management Mode (SMM) Level 1 protections, this level prevents System Management Mode (SMM) from tampering with Input-Output Memory Management Unit (IOMMU) config. "level3" indicates that in addition to the System Management Mode (SMM) Level 2 protections, this level reduces System Management Mode (SMM) save state capabilities. "notApplicable" indicates that the device does not have Firmware protection (System Management Mode) enabled. Default value is "notApplicable". Possible values are: `notApplicable`, `level1`, `level2`, `level3`, `unknownFutureValue`.|
|securedCorePC|[azureAttestationSettingStatus](../resources/intune-devices-azureattestationsettingstatus.md)|Indicates whether the device has Secured-core PC enabled. Secured-core PCs provide protections that are useful against sophisticated attacks and provide increased assurance when handling mission-critical data. Possible values are "enabled", "disabled" and "notApplicable". "enabled" indicates Secured-core PC is enabled. "disabled" indicates Secured-core PC is disabled. "notApplicable" indicates the device is not a Windows 11 device. Default value is "notApplicable". Possible values are: `notApplicable`, `enabled`, `disabled`, `unknownFutureValue`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceHealthAttestationState"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceHealthAttestationState",
  "lastUpdateDateTime": "String",
  "contentNamespaceUrl": "String",
  "deviceHealthAttestationStatus": "String",
  "contentVersion": "String",
  "issuedDateTime": "String (timestamp)",
  "attestationIdentityKey": "String",
  "resetCount": 1024,
  "restartCount": 1024,
  "dataExcutionPolicy": "String",
  "bitLockerStatus": "String",
  "bootManagerVersion": "String",
  "codeIntegrityCheckVersion": "String",
  "secureBoot": "String",
  "bootDebugging": "String",
  "operatingSystemKernelDebugging": "String",
  "codeIntegrity": "String",
  "testSigning": "String",
  "safeMode": "String",
  "windowsPE": "String",
  "earlyLaunchAntiMalwareDriverProtection": "String",
  "virtualSecureMode": "String",
  "pcrHashAlgorithm": "String",
  "bootAppSecurityVersion": "String",
  "bootManagerSecurityVersion": "String",
  "tpmVersion": "String",
  "pcr0": "String",
  "secureBootConfigurationPolicyFingerPrint": "String",
  "codeIntegrityPolicy": "String",
  "bootRevisionListInfo": "String",
  "operatingSystemRevListInfo": "String",
  "healthStatusMismatchInfo": "String",
  "healthAttestationSupportedStatus": "String",
  "memoryIntegrityProtection": "String",
  "memoryAccessProtection": "String",
  "virtualizationBasedSecurity": "String",
  "firmwareProtection": "String",
  "systemManagementMode": "String",
  "securedCorePC": "String"
}
```
