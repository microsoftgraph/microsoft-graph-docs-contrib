---
title: "hardwareInformation resource type"
description: "Hardware information of a given device."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# hardwareInformation resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Hardware information of a given device.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|serialNumber|String|Serial number.|
|totalStorageSpace|Int64|Total storage space of the device.|
|freeStorageSpace|Int64|Free storage space of the device.|
|imei|String|IMEI|
|meid|String|MEID|
|manufacturer|String|Manufacturer of the device|
|model|String|Model of the device|
|phoneNumber|String|Phone number of the device|
|subscriberCarrier|String|Subscriber carrier of the device|
|cellularTechnology|String|Cellular technology of the device|
|wifiMac|String|WiFi MAC address of the device|
|operatingSystemLanguage|String|Operating system language of the device|
|isSupervised|Boolean|Supervised mode of the device|
|isEncrypted|Boolean|Encryption status of the device|
|batterySerialNumber|String|The serial number of the device’s current battery|
|batteryHealthPercentage|Int32|The device’s current battery’s health percentage. Valid values 0 to 100|
|batteryChargeCycles|Int32|The number of charge cycles the device’s current battery has gone through. Valid values 0 to 2147483647|
|isSharedDevice|Boolean|Shared iPad|
|sharedDeviceCachedUsers|[sharedAppleDeviceUser](../resources/intune-devices-sharedappledeviceuser.md) collection|All users on the shared Apple device|
|tpmSpecificationVersion|String|String that specifies the specification version.|
|operatingSystemEdition|String|String that specifies the OS edition.|
|deviceFullQualifiedDomainName|String|Returns the fully qualified domain name of the device (if any). If the device is not domain-joined, it returns an empty string. |
|deviceGuardVirtualizationBasedSecurityHardwareRequirementState|[deviceGuardVirtualizationBasedSecurityHardwareRequirementState](../resources/intune-devices-deviceguardvirtualizationbasedsecurityhardwarerequirementstate.md)|Virtualization-based security hardware requirement status. Possible values are: `meetHardwareRequirements`, `secureBootRequired`, `dmaProtectionRequired`, `hyperVNotSupportedForGuestVM`, `hyperVNotAvailable`.|
|deviceGuardVirtualizationBasedSecurityState|[deviceGuardVirtualizationBasedSecurityState](../resources/intune-devices-deviceguardvirtualizationbasedsecuritystate.md)|Virtualization-based security status. . Possible values are: `running`, `rebootRequired`, `require64BitArchitecture`, `notLicensed`, `notConfigured`, `doesNotMeetHardwareRequirements`, `other`.|
|deviceGuardLocalSystemAuthorityCredentialGuardState|[deviceGuardLocalSystemAuthorityCredentialGuardState](../resources/intune-devices-deviceguardlocalsystemauthoritycredentialguardstate.md)|Local System Authority (LSA) credential guard status. . Possible values are: `running`, `rebootRequired`, `notLicensed`, `notConfigured`, `virtualizationBasedSecurityNotRunning`.|
|osBuildNumber|String|Operating System Build Number on Android device|
|operatingSystemProductType|Int32|Int that specifies the Windows Operating System ProductType. More details here https://go.microsoft.com/fwlink/?linkid=2126950. Valid values 0 to 2147483647|
|ipAddressV4|String|IPAddressV4|
|subnetAddress|String|SubnetAddress|
|esimIdentifier|String|eSIM identifier|
|systemManagementBIOSVersion|String|BIOS version as reported by SMBIOS|
|tpmManufacturer|String|The identifying information that uniquely names the TPM manufacturer|
|tpmVersion|String|The version of the TPM, as specified by the manufacturer|
|wiredIPv4Addresses|String collection|A list of wired IPv4 addresses. The update frequency (the maximum delay for the change of property value to be synchronized from the device to the cloud storage) of this property is daily. Note this property is currently supported only on devices running on Windows.|
|batteryLevelPercentage|Double|The battery level, between 0.0 and 100, or null if the battery level cannot be determined. The update frequency of this property is per-checkin. Note this property is currently supported only on devices running iOS 5.0 and later, and is available only when Device Information access right is obtained. Valid values 0 to 100|
|residentUsersCount|Int32|The number of users currently on this device, or null (default) if the value of this property cannot be determined. The update frequency of this property is per-checkin. Note this property is currently supported only on devices running iOS 13.4 and later, and is available only when Device Information access right is obtained. Valid values 0 to 2147483647|
|productName|String|The product name, e.g. iPad8,12 etc. The update frequency of this property is weekly. Note this property is currently supported only on iOS/MacOS devices, and is available only when Device Information access right is obtained.|
|deviceLicensingStatus|[deviceLicensingStatus](../resources/intune-devices-devicelicensingstatus.md)|Device based subscription licensing status. The update frequency of this property is daily. Note this property is currently supported only for Windows based Device based subscription licensing. In case it is not supported, the value will be set to unknown (-1). Possible values are: `licenseRefreshStarted`, `licenseRefreshPending`, `deviceIsNotAzureActiveDirectoryJoined`, `verifyingMicrosoftDeviceIdentity`, `deviceIdentityVerificationFailed`, `verifyingMicrosoftAccountIdentity`, `microsoftAccountVerificationFailed`, `acquiringDeviceLicense`, `refreshingDeviceLicense`, `deviceLicenseRefreshSucceed`, `deviceLicenseRefreshFailed`, `removingDeviceLicense`, `deviceLicenseRemoveSucceed`, `deviceLicenseRemoveFailed`, `unknownFutureValue`, `unknown`.|
|deviceLicensingLastErrorCode|Int32|A standard error code indicating the last error, or 0 indicating no error (default). The update frequency of this property is daily. Note this property is currently supported only for Windows based Device based subscription licensing. Valid values 0 to 2147483647|
|deviceLicensingLastErrorDescription|String|Error text message as a descripition for deviceLicensingLastErrorCode. The update frequency of this property is daily. Note this property is currently supported only for Windows based Device based subscription licensing.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.hardwareInformation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.hardwareInformation",
  "serialNumber": "String",
  "totalStorageSpace": 1024,
  "freeStorageSpace": 1024,
  "imei": "String",
  "meid": "String",
  "manufacturer": "String",
  "model": "String",
  "phoneNumber": "String",
  "subscriberCarrier": "String",
  "cellularTechnology": "String",
  "wifiMac": "String",
  "operatingSystemLanguage": "String",
  "isSupervised": true,
  "isEncrypted": true,
  "batterySerialNumber": "String",
  "batteryHealthPercentage": 1024,
  "batteryChargeCycles": 1024,
  "isSharedDevice": true,
  "sharedDeviceCachedUsers": [
    {
      "@odata.type": "microsoft.graph.sharedAppleDeviceUser",
      "userPrincipalName": "String",
      "dataToSync": true,
      "dataQuota": 1024,
      "dataUsed": 1024
    }
  ],
  "tpmSpecificationVersion": "String",
  "operatingSystemEdition": "String",
  "deviceFullQualifiedDomainName": "String",
  "deviceGuardVirtualizationBasedSecurityHardwareRequirementState": "String",
  "deviceGuardVirtualizationBasedSecurityState": "String",
  "deviceGuardLocalSystemAuthorityCredentialGuardState": "String",
  "osBuildNumber": "String",
  "operatingSystemProductType": 1024,
  "ipAddressV4": "String",
  "subnetAddress": "String",
  "esimIdentifier": "String",
  "systemManagementBIOSVersion": "String",
  "tpmManufacturer": "String",
  "tpmVersion": "String",
  "wiredIPv4Addresses": [
    "String"
  ],
  "batteryLevelPercentage": "4.2",
  "residentUsersCount": 1024,
  "productName": "String",
  "deviceLicensingStatus": "String",
  "deviceLicensingLastErrorCode": 1024,
  "deviceLicensingLastErrorDescription": "String"
}
```
