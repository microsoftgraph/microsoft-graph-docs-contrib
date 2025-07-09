---
title: "Create androidDeviceOwnerCompliancePolicy"
description: "Create a new androidDeviceOwnerCompliancePolicy object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# Create androidDeviceOwnerCompliancePolicy

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [androidDeviceOwnerCompliancePolicy](../resources/intune-deviceconfig-androiddeviceownercompliancepolicy.md) object.

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
POST /deviceManagement/deviceCompliancePolicies
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the androidDeviceOwnerCompliancePolicy object.

The following table shows the properties that are required when you create the androidDeviceOwnerCompliancePolicy.

|Property|Type|Description|
|:---|:---|:---|
|roleScopeTagIds|String collection|List of Scope Tags for this Entity instance. Inherited from [deviceCompliancePolicy](../resources/intune-shared-devicecompliancepolicy.md)|
|id|String|Key of the entity. Inherited from [deviceCompliancePolicy](../resources/intune-shared-devicecompliancepolicy.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceCompliancePolicy](../resources/intune-shared-devicecompliancepolicy.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceCompliancePolicy](../resources/intune-shared-devicecompliancepolicy.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceCompliancePolicy](../resources/intune-shared-devicecompliancepolicy.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceCompliancePolicy](../resources/intune-shared-devicecompliancepolicy.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceCompliancePolicy](../resources/intune-shared-devicecompliancepolicy.md)|
|deviceThreatProtectionEnabled|Boolean|Indicates whether the policy requires devices have device threat protection enabled.  When TRUE, threat protection is enabled.  When FALSE, threat protection is not enabled.  Default is FALSE.|
|deviceThreatProtectionRequiredSecurityLevel|[deviceThreatProtectionLevel](../resources/intune-deviceconfig-devicethreatprotectionlevel.md)|Indicates the minimum mobile threat protection risk level to that results in Intune reporting device noncompliance. Possible values are: `unavailable`, `secured`, `low`, `medium`, `high`, `notSet`. Possible values are: `unavailable`, `secured`, `low`, `medium`, `high`, `notSet`.|
|advancedThreatProtectionRequiredSecurityLevel|[deviceThreatProtectionLevel](../resources/intune-deviceconfig-devicethreatprotectionlevel.md)|Indicates the Microsoft Defender for Endpoint (also referred to Microsoft Defender Advanced Threat Protection (MDATP)) minimum risk level to report noncompliance. Possible values are: `unavailable`, `secured`, `low`, `medium`, `high`, `notSet`. Possible values are: `unavailable`, `secured`, `low`, `medium`, `high`, `notSet`.|
|securityBlockJailbrokenDevices|Boolean|Indicates the device should not be rooted. When TRUE, if the device is detected as rooted it will be reported non-compliant. When FALSE, the device is not reported as non-compliant regardless of device rooted state. Default is FALSE.|
|securityRequireSafetyNetAttestationBasicIntegrity|Boolean|Indicates whether the compliance check will validate the Google Play Integrity check. When TRUE, the Google Play integrity basic check must pass to consider the device compliant.  When FALSE, the Google Play integrity basic check can pass or fail and the device will be considered compliant.  Default is FALSE.|
|securityRequireSafetyNetAttestationCertifiedDevice|Boolean|Indicates whether the compliance check will validate the Google Play Integrity check. When TRUE, the Google Play integrity device check must pass to consider the device compliant.  When FALSE, the Google Play integrity device check can pass or fail and the device will be considered compliant.  Default is FALSE.|
|osMinimumVersion|String|Indicates the minimum Android version required to mark the device as compliant. For example: "14"|
|osMaximumVersion|String|Indicates the maximum Android version required to mark the device as compliant.  For example: "15"|
|minAndroidSecurityPatchLevel|String|Indicates the minimum Android security patch level required to mark the device as compliant.  For example: "February 1, 2025"|
|passwordRequired|Boolean|Indicates whether a password is required to unlock the device. When TRUE, there must be a password set that unlocks the device for the device to be marked as compliant.  When FALSE, a device is marked as compliant whether or not a password is set as required to unlock the device.  Default is FALSE.|
|passwordMinimumLength|Int32|Indicates the minimum password length required to mark the device as compliant. Valid values are 4 to 16, inclusive. Valid values 4 to 16|
|passwordMinimumLetterCharacters|Int32|Indicates the minimum number of letter characters required for device password for the device to be marked compliant. Valid values 1 to 16.|
|passwordMinimumLowerCaseCharacters|Int32|Indicates the minimum number of lower case characters required for device password for the device to be marked compliant. Valid values 1 to 16.|
|passwordMinimumNonLetterCharacters|Int32|Indicates the minimum number of non-letter characters required for device password for the device to be marked compliant. Valid values 1 to 16.|
|passwordMinimumNumericCharacters|Int32|Indicates the minimum number of numeric characters required for device password for the device to be marked compliant. Valid values 1 to 16.|
|passwordMinimumSymbolCharacters|Int32|Indicates the minimum number of symbol characters required for device password for the device to be marked compliant. Valid values 1 to 16.|
|passwordMinimumUpperCaseCharacters|Int32|Indicates the minimum number of upper case letter characters required for device password for the device to be marked compliant. Valid values 1 to 16.|
|passwordRequiredType|[androidDeviceOwnerRequiredPasswordType](../resources/intune-deviceconfig-androiddeviceownerrequiredpasswordtype.md)|Indicates the password complexity requirement for the device to be marked compliant. Possible values are: `deviceDefault`, `required`, `numeric`, `numericComplex`, `alphabetic`, `alphanumeric`, `alphanumericWithSymbols`, `lowSecurityBiometric`, `customPassword`. Possible values are: `deviceDefault`, `required`, `numeric`, `numericComplex`, `alphabetic`, `alphanumeric`, `alphanumericWithSymbols`, `lowSecurityBiometric`, `customPassword`.|
|passwordMinutesOfInactivityBeforeLock|Int32|Indicates the number of minutes of inactivity before a password is required.|
|passwordExpirationDays|Int32|Indicates the number of days before the password expires. Valid values 1 to 365.|
|passwordPreviousPasswordCountToBlock|Int32|Indicates the number of previous passwords to block. Valid values 1 to 24.|
|storageRequireEncryption|Boolean|Indicates whether encryption on Android devices is required to mark the device as compliant.|
|securityRequireIntuneAppIntegrity|Boolean|Indicates whether Intune application integrity is required to mark the device as compliant.  When TRUE, Intune checks that the Intune app installed on fully managed, dedicated, or corporate-owned work profile Android Enterprise enrolled devices, is the one provided by Microsoft from the Managed Google Play store. If the check fails, the device will be reported as non-compliant. Default is FALSE.|
|requireNoPendingSystemUpdates|Boolean|Indicates whether the device has pending security or OS updates and sets the compliance state accordingly.  When TRUE, checks if there are any pending system updates on each check in and if there are any pending security or OS version updates (System Updates), the device will be reported as non-compliant. If set to FALSE, then checks for any pending security or OS version updates (System Updates) are done without impact to device compliance state. Default is FALSE.|
|securityRequiredAndroidSafetyNetEvaluationType|[androidSafetyNetEvaluationType](../resources/intune-deviceconfig-androidsafetynetevaluationtype.md)|Indicates the types of measurements and reference data used to evaluate the device SafetyNet evaluation. Evaluation is completed on the device to assess device integrity based on checks defined by Android and built into the device hardware, for example, compromised OS version or root detection. Possible values are: `basic`, `hardwareBacked`, with default value of `basic`. Possible values are: `basic`, `hardwareBacked`.|



## Response
If successful, this method returns a `201 Created` response code and a [androidDeviceOwnerCompliancePolicy](../resources/intune-deviceconfig-androiddeviceownercompliancepolicy.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceManagement/deviceCompliancePolicies
Content-type: application/json
Content-length: 1425

{
  "@odata.type": "#microsoft.graph.androidDeviceOwnerCompliancePolicy",
  "roleScopeTagIds": [
    "Role Scope Tag Ids value"
  ],
  "description": "Description value",
  "displayName": "Display Name value",
  "version": 7,
  "deviceThreatProtectionEnabled": true,
  "deviceThreatProtectionRequiredSecurityLevel": "secured",
  "advancedThreatProtectionRequiredSecurityLevel": "secured",
  "securityBlockJailbrokenDevices": true,
  "securityRequireSafetyNetAttestationBasicIntegrity": true,
  "securityRequireSafetyNetAttestationCertifiedDevice": true,
  "osMinimumVersion": "Os Minimum Version value",
  "osMaximumVersion": "Os Maximum Version value",
  "minAndroidSecurityPatchLevel": "Min Android Security Patch Level value",
  "passwordRequired": true,
  "passwordMinimumLength": 5,
  "passwordMinimumLetterCharacters": 15,
  "passwordMinimumLowerCaseCharacters": 2,
  "passwordMinimumNonLetterCharacters": 2,
  "passwordMinimumNumericCharacters": 0,
  "passwordMinimumSymbolCharacters": 15,
  "passwordMinimumUpperCaseCharacters": 2,
  "passwordRequiredType": "required",
  "passwordMinutesOfInactivityBeforeLock": 5,
  "passwordExpirationDays": 6,
  "passwordPreviousPasswordCountToBlock": 4,
  "storageRequireEncryption": true,
  "securityRequireIntuneAppIntegrity": true,
  "requireNoPendingSystemUpdates": true,
  "securityRequiredAndroidSafetyNetEvaluationType": "hardwareBacked"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 1597

{
  "@odata.type": "#microsoft.graph.androidDeviceOwnerCompliancePolicy",
  "roleScopeTagIds": [
    "Role Scope Tag Ids value"
  ],
  "id": "be2464b4-64b4-be24-b464-24beb46424be",
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "description": "Description value",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "displayName": "Display Name value",
  "version": 7,
  "deviceThreatProtectionEnabled": true,
  "deviceThreatProtectionRequiredSecurityLevel": "secured",
  "advancedThreatProtectionRequiredSecurityLevel": "secured",
  "securityBlockJailbrokenDevices": true,
  "securityRequireSafetyNetAttestationBasicIntegrity": true,
  "securityRequireSafetyNetAttestationCertifiedDevice": true,
  "osMinimumVersion": "Os Minimum Version value",
  "osMaximumVersion": "Os Maximum Version value",
  "minAndroidSecurityPatchLevel": "Min Android Security Patch Level value",
  "passwordRequired": true,
  "passwordMinimumLength": 5,
  "passwordMinimumLetterCharacters": 15,
  "passwordMinimumLowerCaseCharacters": 2,
  "passwordMinimumNonLetterCharacters": 2,
  "passwordMinimumNumericCharacters": 0,
  "passwordMinimumSymbolCharacters": 15,
  "passwordMinimumUpperCaseCharacters": 2,
  "passwordRequiredType": "required",
  "passwordMinutesOfInactivityBeforeLock": 5,
  "passwordExpirationDays": 6,
  "passwordPreviousPasswordCountToBlock": 4,
  "storageRequireEncryption": true,
  "securityRequireIntuneAppIntegrity": true,
  "requireNoPendingSystemUpdates": true,
  "securityRequiredAndroidSafetyNetEvaluationType": "hardwareBacked"
}
```