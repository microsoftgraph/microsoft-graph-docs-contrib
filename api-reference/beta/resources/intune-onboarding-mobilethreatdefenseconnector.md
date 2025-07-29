---
title: "mobileThreatDefenseConnector resource type"
description: "Entity which represents a connection to Mobile Threat Defense partner."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# mobileThreatDefenseConnector resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Entity which represents a connection to Mobile Threat Defense partner.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List mobileThreatDefenseConnectors](../api/intune-onboarding-mobilethreatdefenseconnector-list.md)|[mobileThreatDefenseConnector](../resources/intune-onboarding-mobilethreatdefenseconnector.md) collection|List properties and relationships of the [mobileThreatDefenseConnector](../resources/intune-onboarding-mobilethreatdefenseconnector.md) objects.|
|[Get mobileThreatDefenseConnector](../api/intune-onboarding-mobilethreatdefenseconnector-get.md)|[mobileThreatDefenseConnector](../resources/intune-onboarding-mobilethreatdefenseconnector.md)|Read properties and relationships of the [mobileThreatDefenseConnector](../resources/intune-onboarding-mobilethreatdefenseconnector.md) object.|
|[Create mobileThreatDefenseConnector](../api/intune-onboarding-mobilethreatdefenseconnector-create.md)|[mobileThreatDefenseConnector](../resources/intune-onboarding-mobilethreatdefenseconnector.md)|Create a new [mobileThreatDefenseConnector](../resources/intune-onboarding-mobilethreatdefenseconnector.md) object.|
|[Delete mobileThreatDefenseConnector](../api/intune-onboarding-mobilethreatdefenseconnector-delete.md)|None|Deletes a [mobileThreatDefenseConnector](../resources/intune-onboarding-mobilethreatdefenseconnector.md).|
|[Update mobileThreatDefenseConnector](../api/intune-onboarding-mobilethreatdefenseconnector-update.md)|[mobileThreatDefenseConnector](../resources/intune-onboarding-mobilethreatdefenseconnector.md)|Update the properties of a [mobileThreatDefenseConnector](../resources/intune-onboarding-mobilethreatdefenseconnector.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String||
|lastHeartbeatDateTime|DateTimeOffset|DateTime of last Heartbeat recieved from the Mobile Threat Defense partner|
|partnerState|[mobileThreatPartnerTenantState](../resources/intune-onboarding-mobilethreatpartnertenantstate.md)|Mobile Threat Defense partner state for this account. Possible values are: `unavailable`, `available`, `enabled`, `unresponsive`, `notSetUp`, `error`, `unknownFutureValue`.|
|androidMobileApplicationManagementEnabled|Boolean|When TRUE, inidicates that data from the Mobile Threat Defense partner can be used during Mobile Application Management (MAM) evaluations for Android devices. When FALSE, inidicates that data from the Mobile Threat Defense partner should not be used during Mobile Application Management (MAM) evaluations for Android devices. Only one partner per platform may be enabled for Mobile Application Management (MAM) evaluation. Default value is FALSE.|
|iosMobileApplicationManagementEnabled|Boolean|When TRUE, inidicates that data from the Mobile Threat Defense partner can be used during Mobile Application Management (MAM) evaluations for iOS devices. When FALSE, inidicates that data from the Mobile Threat Defense partner should not be used during Mobile Application Management (MAM) evaluations for iOS devices. Only one partner per platform may be enabled for Mobile Application Management (MAM) evaluation. Default value is FALSE.|
|windowsMobileApplicationManagementEnabled|Boolean|When TRUE, inidicates that data from the Mobile Threat Defense partner can be used during Mobile Application Management (MAM) evaluations for iOS devices. When FALSE, inidicates that data from the Mobile Threat Defense partner should not be used during Mobile Application Management (MAM) evaluations for iOS devices. Only one partner per platform may be enabled for Mobile Application Management (MAM) evaluation. Default value is FALSE.|
|androidEnabled|Boolean|When TRUE, indicates that data from the Mobile Threat Defense partner will be used during compliance evaluations for Android devices. When FALSE, indicates that data from the Mobile Threat Defense partner will not be used during compliance evaluations for Android devices. Default value is FALSE.|
|iosEnabled|Boolean|When TRUE, indicates that data from the Mobile Threat Defense partner will be used during compliance evaluations for iOS devices. When FALSE, indicates that data from the Mobile Threat Defense partner will not be used during compliance evaluations for iOS devices. Default value is FALSE.|
|windowsEnabled|Boolean|When TRUE, indicates that data from the Mobile Threat Defense partner will be used during compliance evaluations for Windows. When FALSE, indicates that data from the Mobile Threat Defense partner will not be used during compliance evaluations for Windows. Default value is FALSE.|
|macEnabled|Boolean|When TRUE, indicates that data from the Mobile Threat Defense partner will be used during compliance evaluations for Mac devices. When FALSE, indicates that data from the Mobile Threat Defense partner will not be used during compliance evaluations for Mac devices. Default value is FALSE.|
|androidDeviceBlockedOnMissingPartnerData|Boolean|When TRUE, indicates that Intune must receive data from the Mobile Threat Defense partner prior to marking an Android device compliant. When FALSE, indicates that Intune may mark an Android device compliant before receiving data from the Mobile Threat Defense partner.|
|iosDeviceBlockedOnMissingPartnerData|Boolean|When TRUE, indicates that Intune must receive data from the Mobile Threat Defense partner prior to marking a device compliant. When FALSE, indicates that Intune may not recieve data from Mobile Threat Defense partner prior to making device compliant. Default value is FALSE.|
|windowsDeviceBlockedOnMissingPartnerData|Boolean|When TRUE, indicates that Intune must receive data from the data sync partner prior to marking a device compliant for Windows. When FALSE, indicates that Intune may mark a device compliant without receiving data from the data sync partner for Windows. Default value is FALSE.|
|macDeviceBlockedOnMissingPartnerData|Boolean|When TRUE, indicates that Intune must receive data from the Mobile Threat Defense partner prior to marking a Mac device compliant. When FALSE, indicates that Intune may mark a Mac device compliant prior to receiving data from the Mobile Threat Defense partner. Default value is FALSE.|
|partnerUnsupportedOsVersionBlocked|Boolean|When TRUE, indicates that Intune will mark devices noncompliant on enabled platforms that do not meet the minimum version requirements of the Mobile Threat Defense partner. When FALSE, indicates that Intune will not mark devices noncompliant on enabled platforms that do not meet the minimum version requirements of the Mobile Threat Defense partner. Default value is FALSE.|
|partnerUnresponsivenessThresholdInDays|Int32|Indicates the number of days without receiving a heartbeat from a Mobile Threat Defense partner before the partner is marked as unresponsive. Intune will the ignore the data from this Mobile Threat Defense Partner for next compliance calculation.|
|allowPartnerToCollectIOSApplicationMetadata|Boolean|When TRUE, indicates the Mobile Threat Defense partner may collect metadata about installed applications from Intune for iOS devices. When FALSE, indicates the Mobile Threat Defense partner may not collect metadata about installed applications from Intune for iOS devices. Default value is FALSE.|
|allowPartnerToCollectIOSPersonalApplicationMetadata|Boolean|When TRUE, indicates the Mobile Threat Defense partner may collect metadata about personally installed applications from Intune for iOS devices. When FALSE, indicates the Mobile Threat Defense partner may not collect metadata about personally installed applications from Intune for iOS devices. Default value is FALSE.|
|microsoftDefenderForEndpointAttachEnabled|Boolean|When TRUE, inidicates that configuration profile management via Microsoft Defender for Endpoint is enabled. When FALSE, inidicates that configuration profile management via Microsoft Defender for Endpoint is disabled. Default value is FALSE.|
|allowPartnerToCollectIosCertificateMetadata|Boolean|When TRUE, allows the Mobile Threat Defense partner to request a list of installed certificates on iOS/iPadOS devices from Intune to use for threat analysis. This list of installed certificates will be sent from enrolled iOS/iPadOS devices and will include unmanaged certificates (certificates not deployed through Intune). When FALSE, indicates that metadata about installed certificates will not be collected. Default value is FALSE.|
|allowPartnerToCollectIosPersonalCertificateMetadata|Boolean|When TRUE, allows the Mobile Threat Defense partner to request a list of installed certificates on personally owned iOS/iPadOS devices from Intune to use for threat analysis. This list of installed certificates will be sent from enrolled personally owned iOS/iPadOS devices and will include unmanaged certificates (certificates not deployed through Intune). When FALSE, no metadata for installed certificates is sent for personally owned iOS/iPadOS devices. Default value is FALSE.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mobileThreatDefenseConnector"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mobileThreatDefenseConnector",
  "id": "String (identifier)",
  "lastHeartbeatDateTime": "String (timestamp)",
  "partnerState": "String",
  "androidMobileApplicationManagementEnabled": true,
  "iosMobileApplicationManagementEnabled": true,
  "windowsMobileApplicationManagementEnabled": true,
  "androidEnabled": true,
  "iosEnabled": true,
  "windowsEnabled": true,
  "macEnabled": true,
  "androidDeviceBlockedOnMissingPartnerData": true,
  "iosDeviceBlockedOnMissingPartnerData": true,
  "windowsDeviceBlockedOnMissingPartnerData": true,
  "macDeviceBlockedOnMissingPartnerData": true,
  "partnerUnsupportedOsVersionBlocked": true,
  "partnerUnresponsivenessThresholdInDays": 1024,
  "allowPartnerToCollectIOSApplicationMetadata": true,
  "allowPartnerToCollectIOSPersonalApplicationMetadata": true,
  "microsoftDefenderForEndpointAttachEnabled": true,
  "allowPartnerToCollectIosCertificateMetadata": true,
  "allowPartnerToCollectIosPersonalCertificateMetadata": true
}
```