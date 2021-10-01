---
title: "hardwareInformation resource type"
description: "Hardware information of a given device."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# hardwareInformation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Hardware information of a given device.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|batteryChargeCycles|Int32|The number of charge cycles the device’s current battery has gone through. Valid values 0 to 2147483647|
|batteryHealthPercentage|Int32|The device’s current battery’s health percentage. Valid values 0 to 100|
|batterySerialNumber|String|The serial number of the device’s current battery|
|cellularTechnology|String|Cellular technology of the device|
|deviceFullQualifiedDomainName|String|Returns the fully qualified domain name of the device (if any). If the device is not domain-joined, it returns an empty string. |
|deviceGuardLocalSystemAuthorityCredentialGuardState|deviceGuardLocalSystemAuthorityCredentialGuardState|Local System Authority (LSA) credential guard status. . The possible values are: `running`, `rebootRequired`, `notLicensed`, `notConfigured`, `virtualizationBasedSecurityNotRunning`.|
|deviceGuardVirtualizationBasedSecurityHardwareRequirementState|deviceGuardVirtualizationBasedSecurityHardwareRequirementState|Virtualization-based security hardware requirement status. The possible values are: `meetHardwareRequirements`, `secureBootRequired`, `dmaProtectionRequired`, `hyperVNotSupportedForGuestVM`, `hyperVNotAvailable`.|
|deviceGuardVirtualizationBasedSecurityState|deviceGuardVirtualizationBasedSecurityState|Virtualization-based security status. . The possible values are: `running`, `rebootRequired`, `require64BitArchitecture`, `notLicensed`, `notConfigured`, `doesNotMeetHardwareRequirements`, `other`.|
|esimIdentifier|String|eSIM identifier|
|freeStorageSpace|Int64|Free storage space of the device.|
|imei|String|IMEI|
|ipAddressV4|String|IPAddressV4|
|isEncrypted|Boolean|Encryption status of the device|
|isSharedDevice|Boolean|Shared iPad|
|isSupervised|Boolean|Supervised mode of the device|
|manufacturer|String|Manufacturer of the device|
|meid|String|MEID|
|model|String|Model of the device|
|operatingSystemEdition|String|String that specifies the OS edition.|
|operatingSystemLanguage|String|Operating system language of the device|
|operatingSystemProductType|Int32|Int that specifies the Windows Operating System ProductType. More details here https://go.microsoft.com/fwlink/?linkid=2126950. Valid values 0 to 2147483647|
|osBuildNumber|String|Operating System Build Number on Android device|
|phoneNumber|String|Phone number of the device|
|serialNumber|String|Serial number.|
|sharedDeviceCachedUsers|[sharedAppleDeviceUser](../resources/sharedappledeviceuser.md) collection|All users on the shared Apple device|
|subnetAddress|String|SubnetAddress|
|subscriberCarrier|String|Subscriber carrier of the device|
|systemManagementBIOSVersion|String|BIOS version as reported by SMBIOS|
|totalStorageSpace|Int64|Total storage space of the device.|
|tpmManufacturer|String|The identifying information that uniquely names the TPM manufacturer|
|tpmSpecificationVersion|String|String that specifies the specification version.|
|tpmVersion|String|The version of the TPM, as specified by the manufacturer|
|wifiMac|String|WiFi MAC address of the device|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.hardwareInformation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.hardwareInformation",
  "batteryChargeCycles": "Integer",
  "batteryHealthPercentage": "Integer",
  "batterySerialNumber": "String",
  "cellularTechnology": "String",
  "deviceFullQualifiedDomainName": "String",
  "deviceGuardLocalSystemAuthorityCredentialGuardState": "String",
  "deviceGuardVirtualizationBasedSecurityHardwareRequirementState": "String",
  "deviceGuardVirtualizationBasedSecurityState": "String",
  "esimIdentifier": "String",
  "freeStorageSpace": "Integer",
  "imei": "String",
  "ipAddressV4": "String",
  "isEncrypted": "Boolean",
  "isSharedDevice": "Boolean",
  "isSupervised": "Boolean",
  "manufacturer": "String",
  "meid": "String",
  "model": "String",
  "operatingSystemEdition": "String",
  "operatingSystemLanguage": "String",
  "operatingSystemProductType": "Integer",
  "osBuildNumber": "String",
  "phoneNumber": "String",
  "serialNumber": "String",
  "sharedDeviceCachedUsers": [
    {
      "@odata.type": "microsoft.graph.sharedAppleDeviceUser"
    }
  ],
  "subnetAddress": "String",
  "subscriberCarrier": "String",
  "systemManagementBIOSVersion": "String",
  "totalStorageSpace": "Integer",
  "tpmManufacturer": "String",
  "tpmSpecificationVersion": "String",
  "tpmVersion": "String",
  "wifiMac": "String"
}
```

