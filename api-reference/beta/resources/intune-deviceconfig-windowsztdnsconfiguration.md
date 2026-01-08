---
title: "windowsZtdnsConfiguration resource type"
description: "Windows Zero Trust DNS configuration profile"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# windowsZtdnsConfiguration resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Windows Zero Trust DNS configuration profile


Inherits from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List windowsZtdnsConfigurations](../api/intune-deviceconfig-windowsztdnsconfiguration-list.md)|[windowsZtdnsConfiguration](../resources/intune-deviceconfig-windowsztdnsconfiguration.md) collection|List properties and relationships of the [windowsZtdnsConfiguration](../resources/intune-deviceconfig-windowsztdnsconfiguration.md) objects.|
|[Get windowsZtdnsConfiguration](../api/intune-deviceconfig-windowsztdnsconfiguration-get.md)|[windowsZtdnsConfiguration](../resources/intune-deviceconfig-windowsztdnsconfiguration.md)|Read properties and relationships of the [windowsZtdnsConfiguration](../resources/intune-deviceconfig-windowsztdnsconfiguration.md) object.|
|[Create windowsZtdnsConfiguration](../api/intune-deviceconfig-windowsztdnsconfiguration-create.md)|[windowsZtdnsConfiguration](../resources/intune-deviceconfig-windowsztdnsconfiguration.md)|Create a new [windowsZtdnsConfiguration](../resources/intune-deviceconfig-windowsztdnsconfiguration.md) object.|
|[Delete windowsZtdnsConfiguration](../api/intune-deviceconfig-windowsztdnsconfiguration-delete.md)|None|Deletes a [windowsZtdnsConfiguration](../resources/intune-deviceconfig-windowsztdnsconfiguration.md).|
|[Update windowsZtdnsConfiguration](../api/intune-deviceconfig-windowsztdnsconfiguration-update.md)|[windowsZtdnsConfiguration](../resources/intune-deviceconfig-windowsztdnsconfiguration.md)|Update the properties of a [windowsZtdnsConfiguration](../resources/intune-deviceconfig-windowsztdnsconfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|roleScopeTagIds|String collection|List of Scope Tags for this Entity instance. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|supportsScopeTags|Boolean|Indicates whether or not the underlying Device Configuration supports the assignment of scope tags. Assigning to the ScopeTags property is not allowed when this value is false and entities will not be visible to scoped users. This occurs for Legacy policies created in Silverlight and can be resolved by deleting and recreating the policy in the Azure Portal. This property is read-only. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|deviceManagementApplicabilityRuleOsEdition|[deviceManagementApplicabilityRuleOsEdition](../resources/intune-deviceconfig-devicemanagementapplicabilityruleosedition.md)|The OS edition applicability for this Policy. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|deviceManagementApplicabilityRuleOsVersion|[deviceManagementApplicabilityRuleOsVersion](../resources/intune-deviceconfig-devicemanagementapplicabilityruleosversion.md)|The OS version applicability rule for this Policy. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|deviceManagementApplicabilityRuleDeviceMode|[deviceManagementApplicabilityRuleDeviceMode](../resources/intune-deviceconfig-devicemanagementapplicabilityruledevicemode.md)|The device mode applicability rule for this Policy. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|auditModeEnabled|Boolean|Indicates the audit operational mode. When true, unsecured traffic will be logged but not blocked. When false, unsecured DNS traffic will be blocked unless specifically exempted.|
|exemptionRules|[windowsZtdnsExemptionRule](../resources/intune-deviceconfig-windowsztdnsexemptionrule.md) collection|Exemptions to the ZTDNS rules, allowing access to specific addresses or subnets via unsecured lookup. This collection can contain a maximum of 500 elements.|
|extendedKeyUsagesForClientAuthentication|[extendedKeyUsage](../resources/intune-deviceconfig-extendedkeyusage.md) collection|Extended key usage definitions for client authentication with secure DNS servers. This collection can contain a maximum of 500 elements.|
|hostsFileResolutionEnabled|Boolean|Indicates whether the DNS Client can resolve queries using the hosts file.|
|loopbackDnsForwarderEnabled|Boolean|Creates a localhost DNS server for securely forwarding plaintext queries to trusted DNS servers.|
|loopbackTrafficBlocked|Boolean|Indicates whether traffic to loopback addresses should be blocked.|
|maximumConnectionTimeInSeconds|Int32|Maximum time in seconds for which connections to an IP address will be allowed after successful name resolution. Valid values 30 to 604800|
|secureDnsServers|[windowsZtdnsSecureDnsServer](../resources/intune-deviceconfig-windowsztdnssecurednsserver.md) collection|Collection of secure DNS servers used to resolve ZTDNS queries. Must contain at least one item. This collection can contain a maximum of 500 elements.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/intune-deviceconfig-deviceconfigurationgroupassignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|assignments|[deviceConfigurationAssignment](../resources/intune-deviceconfig-deviceconfigurationassignment.md) collection|The list of assignments for the device configuration profile. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune-deviceconfig-deviceconfigurationdevicestatus.md) collection|Device configuration installation status by device. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune-deviceconfig-deviceconfigurationuserstatus.md) collection|Device configuration installation status by user. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|deviceStatusOverview|[deviceConfigurationDeviceOverview](../resources/intune-deviceconfig-deviceconfigurationdeviceoverview.md)|Device Configuration devices status overview Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|userStatusOverview|[deviceConfigurationUserOverview](../resources/intune-deviceconfig-deviceconfigurationuseroverview.md)|Device Configuration users status overview Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|deviceSettingStateSummaries|[settingStateDeviceSummary](../resources/intune-deviceconfig-settingstatedevicesummary.md) collection|Device Configuration Setting State Device Summary Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|rootCertificatesForClientAuthentication|[windowsCertificateProfileBase](../resources/intune-deviceconfig-windowscertificateprofilebase.md) collection|Root certificates for client authentication. This collection can contain a maximum of 500 elements.|
|rootCertificatesForServerValidation|[windowsCertificateProfileBase](../resources/intune-deviceconfig-windowscertificateprofilebase.md) collection|Root certificates for server validation. This collection can contain a maximum of 500 elements.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsZtdnsConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsZtdnsConfiguration",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "roleScopeTagIds": [
    "String"
  ],
  "supportsScopeTags": true,
  "deviceManagementApplicabilityRuleOsEdition": {
    "@odata.type": "microsoft.graph.deviceManagementApplicabilityRuleOsEdition",
    "osEditionTypes": [
      "String"
    ],
    "name": "String",
    "ruleType": "String"
  },
  "deviceManagementApplicabilityRuleOsVersion": {
    "@odata.type": "microsoft.graph.deviceManagementApplicabilityRuleOsVersion",
    "minOSVersion": "String",
    "maxOSVersion": "String",
    "name": "String",
    "ruleType": "String"
  },
  "deviceManagementApplicabilityRuleDeviceMode": {
    "@odata.type": "microsoft.graph.deviceManagementApplicabilityRuleDeviceMode",
    "deviceMode": "String",
    "name": "String",
    "ruleType": "String"
  },
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024,
  "auditModeEnabled": true,
  "exemptionRules": [
    {
      "@odata.type": "microsoft.graph.windowsZtdnsExemptionRule",
      "description": "String",
      "displayName": "String",
      "ipAddresses": [
        "String"
      ]
    }
  ],
  "extendedKeyUsagesForClientAuthentication": [
    {
      "@odata.type": "microsoft.graph.extendedKeyUsage",
      "name": "String",
      "objectIdentifier": "String"
    }
  ],
  "hostsFileResolutionEnabled": true,
  "loopbackDnsForwarderEnabled": true,
  "loopbackTrafficBlocked": true,
  "maximumConnectionTimeInSeconds": 1024,
  "secureDnsServers": [
    {
      "@odata.type": "microsoft.graph.windowsZtdnsSecureDnsServer",
      "displayName": "String",
      "dnsOverHttpsConfiguration": {
        "@odata.type": "microsoft.graph.windowsZtdnsSecureDnsServerDnsOverHttpsConfiguration",
        "httpsPort": 1024,
        "queryUrl": "String"
      },
      "dnsOverTlsConfiguration": {
        "@odata.type": "microsoft.graph.windowsZtdnsSecureDnsServerDnsOverTlsConfiguration",
        "certificateSubjectName": "String",
        "tlsPort": 1024
      },
      "ipAddress": "String"
    }
  ]
}
```