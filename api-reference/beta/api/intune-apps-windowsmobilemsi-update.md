---
title: "Update windowsMobileMSI"
description: "Update the properties of a windowsMobileMSI object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# Update windowsMobileMSI

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [windowsMobileMSI](../resources/intune-apps-windowsmobilemsi.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementApps.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementApps.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /deviceAppManagement/mobileApps/{mobileAppId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [windowsMobileMSI](../resources/intune-apps-windowsmobilemsi.md) object.

The following table shows the properties that are required when you create the [windowsMobileMSI](../resources/intune-apps-windowsmobilemsi.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. This property is read-only. Inherited from [mobileApp](../resources/intune-shared-mobileapp.md)|
|displayName|String|The admin provided or imported title of the app. Inherited from [mobileApp](../resources/intune-shared-mobileapp.md)|
|description|String|The description of the app. Inherited from [mobileApp](../resources/intune-shared-mobileapp.md)|
|publisher|String|The publisher of the app. Inherited from [mobileApp](../resources/intune-shared-mobileapp.md)|
|largeIcon|[mimeContent](../resources/intune-shared-mimecontent.md)|The large icon, to be displayed in the app details and used for upload of the icon. Inherited from [mobileApp](../resources/intune-shared-mobileapp.md)|
|createdDateTime|DateTimeOffset|The date and time the app was created. This property is read-only. Inherited from [mobileApp](../resources/intune-shared-mobileapp.md)|
|lastModifiedDateTime|DateTimeOffset|The date and time the app was last modified. This property is read-only. Inherited from [mobileApp](../resources/intune-shared-mobileapp.md)|
|isFeatured|Boolean|The value indicating whether the app is marked as featured by the admin. Inherited from [mobileApp](../resources/intune-shared-mobileapp.md)|
|privacyInformationUrl|String|The privacy statement Url. Inherited from [mobileApp](../resources/intune-shared-mobileapp.md)|
|informationUrl|String|The more information Url. Inherited from [mobileApp](../resources/intune-shared-mobileapp.md)|
|owner|String|The owner of the app. Inherited from [mobileApp](../resources/intune-shared-mobileapp.md)|
|developer|String|The developer of the app. Inherited from [mobileApp](../resources/intune-shared-mobileapp.md)|
|notes|String|Notes for the app. Inherited from [mobileApp](../resources/intune-shared-mobileapp.md)|
|uploadState|Int32|The upload state. Possible values are: 0 - `Not Ready`, 1 - `Ready`, 2 - `Processing`. This property is read-only. Inherited from [mobileApp](../resources/intune-shared-mobileapp.md)|
|publishingState|[mobileAppPublishingState](../resources/intune-apps-mobileapppublishingstate.md)|The publishing state for the app. The app cannot be assigned unless the app is published. This property is read-only. Inherited from [mobileApp](../resources/intune-shared-mobileapp.md). Possible values are: `notPublished`, `processing`, `published`.|
|isAssigned|Boolean|The value indicating whether the app is assigned to at least one group. This property is read-only. Inherited from [mobileApp](../resources/intune-shared-mobileapp.md)|
|roleScopeTagIds|String collection|List of scope tag ids for this mobile app. Inherited from [mobileApp](../resources/intune-shared-mobileapp.md)|
|dependentAppCount|Int32|The total number of dependencies the child app has. This property is read-only. Inherited from [mobileApp](../resources/intune-shared-mobileapp.md)|
|supersedingAppCount|Int32|The total number of apps this app directly or indirectly supersedes. This property is read-only. Inherited from [mobileApp](../resources/intune-shared-mobileapp.md)|
|supersededAppCount|Int32|The total number of apps this app is directly or indirectly superseded by. This property is read-only. Inherited from [mobileApp](../resources/intune-shared-mobileapp.md)|
|committedContentVersion|String|The internal committed content version. Inherited from [mobileLobApp](../resources/intune-apps-mobilelobapp.md)|
|fileName|String|The name of the main Lob application file. Inherited from [mobileLobApp](../resources/intune-apps-mobilelobapp.md)|
|size|Int64|The total size, including all uploaded files. This property is read-only. Inherited from [mobileLobApp](../resources/intune-apps-mobilelobapp.md)|
|commandLine|String|The command line.|
|productCode|String|The product code.|
|productVersion|String|The product version of Windows Mobile MSI Line of Business (LoB) app.|
|ignoreVersionDetection|Boolean|A boolean to control whether the app's version will be used to detect the app after it is installed on a device. Set this to true for Windows Mobile MSI Line of Business (LoB) apps that use a self update feature.|
|identityVersion|String|The identity version.|
|useDeviceContext|Boolean|Indicates whether to install a dual-mode MSI in the device context. If true, app will be installed for all users. If false, app will be installed per-user. If null, service will use the MSI package's default install context. In case of dual-mode MSI, this default will be per-user.  Cannot be set for non-dual-mode apps.  Cannot be changed after initial creation of the application.|



## Response
If successful, this method returns a `200 OK` response code and an updated [windowsMobileMSI](../resources/intune-apps-windowsmobilemsi.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceAppManagement/mobileApps/{mobileAppId}
Content-type: application/json
Content-length: 1123

{
  "@odata.type": "#microsoft.graph.windowsMobileMSI",
  "displayName": "Display Name value",
  "description": "Description value",
  "publisher": "Publisher value",
  "largeIcon": {
    "@odata.type": "microsoft.graph.mimeContent",
    "type": "Type value",
    "value": "dmFsdWU="
  },
  "isFeatured": true,
  "privacyInformationUrl": "https://example.com/privacyInformationUrl/",
  "informationUrl": "https://example.com/informationUrl/",
  "owner": "Owner value",
  "developer": "Developer value",
  "notes": "Notes value",
  "uploadState": 11,
  "publishingState": "processing",
  "isAssigned": true,
  "roleScopeTagIds": [
    "Role Scope Tag Ids value"
  ],
  "dependentAppCount": 1,
  "supersedingAppCount": 3,
  "supersededAppCount": 2,
  "committedContentVersion": "Committed Content Version value",
  "fileName": "File Name value",
  "size": 4,
  "commandLine": "Command Line value",
  "productCode": "Product Code value",
  "productVersion": "Product Version value",
  "ignoreVersionDetection": true,
  "identityVersion": "Identity Version value",
  "useDeviceContext": true
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 1295

{
  "@odata.type": "#microsoft.graph.windowsMobileMSI",
  "id": "aa453e5d-3e5d-aa45-5d3e-45aa5d3e45aa",
  "displayName": "Display Name value",
  "description": "Description value",
  "publisher": "Publisher value",
  "largeIcon": {
    "@odata.type": "microsoft.graph.mimeContent",
    "type": "Type value",
    "value": "dmFsdWU="
  },
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "isFeatured": true,
  "privacyInformationUrl": "https://example.com/privacyInformationUrl/",
  "informationUrl": "https://example.com/informationUrl/",
  "owner": "Owner value",
  "developer": "Developer value",
  "notes": "Notes value",
  "uploadState": 11,
  "publishingState": "processing",
  "isAssigned": true,
  "roleScopeTagIds": [
    "Role Scope Tag Ids value"
  ],
  "dependentAppCount": 1,
  "supersedingAppCount": 3,
  "supersededAppCount": 2,
  "committedContentVersion": "Committed Content Version value",
  "fileName": "File Name value",
  "size": 4,
  "commandLine": "Command Line value",
  "productCode": "Product Code value",
  "productVersion": "Product Version value",
  "ignoreVersionDetection": true,
  "identityVersion": "Identity Version value",
  "useDeviceContext": true
}
```