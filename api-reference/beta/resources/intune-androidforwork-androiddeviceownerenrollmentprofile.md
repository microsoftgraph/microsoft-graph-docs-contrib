---
title: "androidDeviceOwnerEnrollmentProfile resource type"
description: "Enrollment Profile used to enroll Android Enterprise devices using Google's Cloud Management."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# androidDeviceOwnerEnrollmentProfile resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Enrollment Profile used to enroll Android Enterprise devices using Google's Cloud Management.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List androidDeviceOwnerEnrollmentProfiles](../api/intune-androidforwork-androiddeviceownerenrollmentprofile-list.md)|[androidDeviceOwnerEnrollmentProfile](../resources/intune-androidforwork-androiddeviceownerenrollmentprofile.md) collection|List properties and relationships of the [androidDeviceOwnerEnrollmentProfile](../resources/intune-androidforwork-androiddeviceownerenrollmentprofile.md) objects.|
|[Get androidDeviceOwnerEnrollmentProfile](../api/intune-androidforwork-androiddeviceownerenrollmentprofile-get.md)|[androidDeviceOwnerEnrollmentProfile](../resources/intune-androidforwork-androiddeviceownerenrollmentprofile.md)|Read properties and relationships of the [androidDeviceOwnerEnrollmentProfile](../resources/intune-androidforwork-androiddeviceownerenrollmentprofile.md) object.|
|[Create androidDeviceOwnerEnrollmentProfile](../api/intune-androidforwork-androiddeviceownerenrollmentprofile-create.md)|[androidDeviceOwnerEnrollmentProfile](../resources/intune-androidforwork-androiddeviceownerenrollmentprofile.md)|Create a new [androidDeviceOwnerEnrollmentProfile](../resources/intune-androidforwork-androiddeviceownerenrollmentprofile.md) object.|
|[Delete androidDeviceOwnerEnrollmentProfile](../api/intune-androidforwork-androiddeviceownerenrollmentprofile-delete.md)|None|Deletes a [androidDeviceOwnerEnrollmentProfile](../resources/intune-androidforwork-androiddeviceownerenrollmentprofile.md).|
|[Update androidDeviceOwnerEnrollmentProfile](../api/intune-androidforwork-androiddeviceownerenrollmentprofile-update.md)|[androidDeviceOwnerEnrollmentProfile](../resources/intune-androidforwork-androiddeviceownerenrollmentprofile.md)|Update the properties of a [androidDeviceOwnerEnrollmentProfile](../resources/intune-androidforwork-androiddeviceownerenrollmentprofile.md) object.|
|[revokeToken action](../api/intune-androidforwork-androiddeviceownerenrollmentprofile-revoketoken.md)|None||
|[createToken action](../api/intune-androidforwork-androiddeviceownerenrollmentprofile-createtoken.md)|None||
|[getDefaultTeamsDeviceNonGmsEnrollmentProfile action](../api/intune-androidforwork-androiddeviceownerenrollmentprofile-getdefaultteamsdevicenongmsenrollmentprofile.md)|[enrollmentProfileForNonGmsTeamsDevice](../resources/intune-androidforwork-enrollmentprofilefornongmsteamsdevice.md)||
|[setEnrollmentTimeDeviceMembershipTarget action](../api/intune-androidforwork-androiddeviceownerenrollmentprofile-setenrollmenttimedevicemembershiptarget.md)|[enrollmentTimeDeviceMembershipTargetResult](../resources/intune-shared-enrollmenttimedevicemembershiptargetresult.md)||
|[retrieveEnrollmentTimeDeviceMembershipTarget action](../api/intune-androidforwork-androiddeviceownerenrollmentprofile-retrieveenrollmenttimedevicemembershiptarget.md)|[enrollmentTimeDeviceMembershipTargetResult](../resources/intune-shared-enrollmenttimedevicemembershiptargetresult.md)||
|[clearEnrollmentTimeDeviceMembershipTarget action](../api/intune-androidforwork-androiddeviceownerenrollmentprofile-clearenrollmenttimedevicemembershiptarget.md)|None||

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accountId|String|Tenant GUID the enrollment profile belongs to.|
|id|String|Unique GUID for the enrollment profile.|
|displayName|String|Display name for the enrollment profile.|
|description|String|Description for the enrollment profile.|
|enrollmentMode|[androidDeviceOwnerEnrollmentMode](../resources/intune-androidforwork-androiddeviceownerenrollmentmode.md)|The enrollment mode of devices that use this enrollment profile. Possible values are: `corporateOwnedDedicatedDevice`, `corporateOwnedFullyManaged`, `corporateOwnedWorkProfile`, `corporateOwnedAOSPUserlessDevice`, `corporateOwnedAOSPUserAssociatedDevice`.|
|enrollmentTokenType|[androidDeviceOwnerEnrollmentTokenType](../resources/intune-androidforwork-androiddeviceownerenrollmenttokentype.md)|The enrollment token type for an enrollment profile. Possible values are: `default`, `corporateOwnedDedicatedDeviceWithAzureADSharedMode`, `deviceStaging`.|
|createdDateTime|DateTimeOffset|Date time the enrollment profile was created.|
|lastModifiedDateTime|DateTimeOffset|Date time the enrollment profile was last modified.|
|tokenValue|String|Value of the most recently created token for this enrollment profile.|
|tokenCreationDateTime|DateTimeOffset|Date time the most recently created token was created.|
|tokenExpirationDateTime|DateTimeOffset|Date time the most recently created token will expire.|
|enrolledDeviceCount|Int32|Total number of Android devices that have enrolled using this enrollment profile.|
|enrollmentTokenUsageCount|Int32|Total number of AOSP devices that have enrolled using the current token. Valid values 0 to 20000|
|qrCodeContent|String|String used to generate a QR code for the token.|
|qrCodeImage|[mimeContent](../resources/intune-shared-mimecontent.md)|String used to generate a QR code for the token.|
|roleScopeTagIds|String collection|List of Scope Tags for this Entity instance.|
|configureWifi|Boolean|Boolean that indicates that the Wi-Fi network should be configured during device provisioning. When set to TRUE, device provisioning will use Wi-Fi related properties to automatically connect to Wi-Fi networks. When set to FALSE or undefined, other Wi-Fi related properties will be ignored. Default value is TRUE. Returned by default.|
|wifiSsid|String|String that contains the wi-fi login ssid|
|wifiPassword|String|String that contains the wi-fi login password|
|wifiSecurityType|[aospWifiSecurityType](../resources/intune-androidforwork-aospwifisecuritytype.md)|String that contains the wi-fi security type. Possible values are: `none`, `wpa`, `wep`.|
|wifiHidden|Boolean|Boolean that indicates if hidden wifi networks are enabled|
|isTeamsDeviceProfile|Boolean|Boolean indicating if this profile is an Android AOSP for Teams device profile.|
|deviceNameTemplate|String|Indicates the device name template used for the enrolled Android devices. The maximum length allowed for this property is 63 characters. The template expression contains normal text and tokens, including the serial number of the device, user name, device type, upn prefix, or a randomly generated number. Supported Tokens for device name templates are: (for device naming template expression): {{SERIAL}}, {{SERIALLAST4DIGITS}}, {{ENROLLMENTDATETIME}}, {{USERNAME}}, {{DEVICETYPE}}, {{UPNPREFIX}}, {{rand:x}}. Supports: $select, $top, $skip. $Search, $orderBy and $filter are not supported.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.androidDeviceOwnerEnrollmentProfile"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.androidDeviceOwnerEnrollmentProfile",
  "accountId": "String",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "enrollmentMode": "String",
  "enrollmentTokenType": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "tokenValue": "String",
  "tokenCreationDateTime": "String (timestamp)",
  "tokenExpirationDateTime": "String (timestamp)",
  "enrolledDeviceCount": 1024,
  "enrollmentTokenUsageCount": 1024,
  "qrCodeContent": "String",
  "qrCodeImage": {
    "@odata.type": "microsoft.graph.mimeContent",
    "type": "String",
    "value": "binary"
  },
  "roleScopeTagIds": [
    "String"
  ],
  "configureWifi": true,
  "wifiSsid": "String",
  "wifiPassword": "String",
  "wifiSecurityType": "String",
  "wifiHidden": true,
  "isTeamsDeviceProfile": true,
  "deviceNameTemplate": "String"
}
```