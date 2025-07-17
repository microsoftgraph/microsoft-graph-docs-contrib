---
title: "Create androidDeviceOwnerEnrollmentProfile"
description: "Create a new androidDeviceOwnerEnrollmentProfile object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# Create androidDeviceOwnerEnrollmentProfile

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [androidDeviceOwnerEnrollmentProfile](../resources/intune-androidforwork-androiddeviceownerenrollmentprofile.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/androidDeviceOwnerEnrollmentProfiles
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the androidDeviceOwnerEnrollmentProfile object.

The following table shows the properties that are required when you create the androidDeviceOwnerEnrollmentProfile.

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



## Response
If successful, this method returns a `201 Created` response code and a [androidDeviceOwnerEnrollmentProfile](../resources/intune-androidforwork-androiddeviceownerenrollmentprofile.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceManagement/androidDeviceOwnerEnrollmentProfiles
Content-type: application/json
Content-length: 1036

{
  "@odata.type": "#microsoft.graph.androidDeviceOwnerEnrollmentProfile",
  "accountId": "Account Id value",
  "displayName": "Display Name value",
  "description": "Description value",
  "enrollmentMode": "corporateOwnedFullyManaged",
  "enrollmentTokenType": "corporateOwnedDedicatedDeviceWithAzureADSharedMode",
  "tokenValue": "Token Value value",
  "tokenCreationDateTime": "2017-01-01T00:01:38.5314127-08:00",
  "tokenExpirationDateTime": "2016-12-31T23:59:54.0590989-08:00",
  "enrolledDeviceCount": 3,
  "enrollmentTokenUsageCount": 9,
  "qrCodeContent": "Qr Code Content value",
  "qrCodeImage": {
    "@odata.type": "microsoft.graph.mimeContent",
    "type": "Type value",
    "value": "dmFsdWU="
  },
  "roleScopeTagIds": [
    "Role Scope Tag Ids value"
  ],
  "configureWifi": true,
  "wifiSsid": "Wifi Ssid value",
  "wifiPassword": "Wifi Password value",
  "wifiSecurityType": "wpa",
  "wifiHidden": true,
  "isTeamsDeviceProfile": true,
  "deviceNameTemplate": "Device Name Template value"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 1208

{
  "@odata.type": "#microsoft.graph.androidDeviceOwnerEnrollmentProfile",
  "accountId": "Account Id value",
  "id": "a8d0245e-245e-a8d0-5e24-d0a85e24d0a8",
  "displayName": "Display Name value",
  "description": "Description value",
  "enrollmentMode": "corporateOwnedFullyManaged",
  "enrollmentTokenType": "corporateOwnedDedicatedDeviceWithAzureADSharedMode",
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "tokenValue": "Token Value value",
  "tokenCreationDateTime": "2017-01-01T00:01:38.5314127-08:00",
  "tokenExpirationDateTime": "2016-12-31T23:59:54.0590989-08:00",
  "enrolledDeviceCount": 3,
  "enrollmentTokenUsageCount": 9,
  "qrCodeContent": "Qr Code Content value",
  "qrCodeImage": {
    "@odata.type": "microsoft.graph.mimeContent",
    "type": "Type value",
    "value": "dmFsdWU="
  },
  "roleScopeTagIds": [
    "Role Scope Tag Ids value"
  ],
  "configureWifi": true,
  "wifiSsid": "Wifi Ssid value",
  "wifiPassword": "Wifi Password value",
  "wifiSecurityType": "wpa",
  "wifiHidden": true,
  "isTeamsDeviceProfile": true,
  "deviceNameTemplate": "Device Name Template value"
}
```