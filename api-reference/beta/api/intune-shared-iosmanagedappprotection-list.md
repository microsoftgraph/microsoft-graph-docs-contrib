---
title: "List iosManagedAppProtections"
description: "List properties and relationships of the iosManagedAppProtection objects."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.prod: "Intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# List iosManagedAppProtections

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

List properties and relationships of the [iosManagedAppProtection](../resources/intune-shared-iosmanagedappprotection.md) objects.

        ## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)||
| &nbsp; &nbsp; **Mobile app management (MAM)** | DeviceManagementApps.ReadWrite.All, DeviceManagementApps.Read.All|
| &nbsp; &nbsp; **Policy Set** | DeviceManagementApps.ReadWrite.All, DeviceManagementApps.Read.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application||
| &nbsp; &nbsp; **Mobile app management (MAM)** | DeviceManagementApps.ReadWrite.All, DeviceManagementApps.Read.All|
| &nbsp; &nbsp; **Policy Set** | DeviceManagementApps.ReadWrite.All, DeviceManagementApps.Read.All|

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceAppManagement/iosManagedAppProtections
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [iosManagedAppProtection](../resources/intune-shared-iosmanagedappprotection.md) objects in the response body.

## Example

### Request
Here is an example of the request.
``` http
GET https://graph.microsoft.com/beta/deviceAppManagement/iosManagedAppProtections
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 3088

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.iosManagedAppProtection",
      "displayName": "Display Name value",
      "description": "Description value",
      "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
      "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
      "roleScopeTagIds": [
        "Role Scope Tag Ids value"
      ],
      "id": "5bc789cb-89cb-5bc7-cb89-c75bcb89c75b",
      "version": "Version value",
      "periodOfflineBeforeAccessCheck": "-PT17.1357909S",
      "periodOnlineBeforeAccessCheck": "PT35.0018757S",
      "allowedInboundDataTransferSources": "managedApps",
      "allowedOutboundDataTransferDestinations": "managedApps",
      "organizationalCredentialsRequired": true,
      "allowedOutboundClipboardSharingLevel": "managedAppsWithPasteIn",
      "dataBackupBlocked": true,
      "deviceComplianceRequired": true,
      "managedBrowserToOpenLinksRequired": true,
      "saveAsBlocked": true,
      "periodOfflineBeforeWipeIsEnforced": "-PT3M22.1587532S",
      "pinRequired": true,
      "maximumPinRetries": 1,
      "simplePinBlocked": true,
      "minimumPinLength": 0,
      "pinCharacterSet": "alphanumericAndSymbol",
      "periodBeforePinReset": "PT3M29.6631862S",
      "allowedDataStorageLocations": [
        "sharePoint"
      ],
      "contactSyncBlocked": true,
      "printBlocked": true,
      "fingerprintBlocked": true,
      "disableAppPinIfDevicePinIsSet": true,
      "minimumRequiredOsVersion": "Minimum Required Os Version value",
      "minimumWarningOsVersion": "Minimum Warning Os Version value",
      "minimumRequiredAppVersion": "Minimum Required App Version value",
      "minimumWarningAppVersion": "Minimum Warning App Version value",
      "minimumWipeOsVersion": "Minimum Wipe Os Version value",
      "minimumWipeAppVersion": "Minimum Wipe App Version value",
      "appActionIfDeviceComplianceRequired": "wipe",
      "appActionIfMaximumPinRetriesExceeded": "wipe",
      "pinRequiredInsteadOfBiometricTimeout": "-PT3M9.8396734S",
      "allowedOutboundClipboardSharingExceptionLength": 14,
      "notificationRestriction": "blockOrganizationalData",
      "isAssigned": true,
      "targetedAppManagementLevels": "unmanaged",
      "appDataEncryptionType": "afterDeviceRestart",
      "minimumRequiredSdkVersion": "Minimum Required Sdk Version value",
      "deployedAppCount": 0,
      "faceIdBlocked": true,
      "exemptedAppProtocols": [
        {
          "@odata.type": "microsoft.graph.keyValuePair",
          "name": "Name value",
          "value": "Value value"
        }
      ],
      "minimumWipeSdkVersion": "Minimum Wipe Sdk Version value",
      "allowedIosDeviceModels": "Allowed Ios Device Models value",
      "appActionIfIosDeviceModelNotAllowed": "wipe",
      "filterOpenInToOnlyManagedApps": true,
      "disableProtectionOfManagedOutboundOpenInData": true,
      "protectInboundDataFromUnknownSources": true,
      "customBrowserProtocol": "Custom Browser Protocol value"
    }
  ]
}
```
