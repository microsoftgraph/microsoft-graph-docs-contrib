---
title: "Update windowsUniversalAppX"
description: "Update the properties of a windowsUniversalAppX object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# Update windowsUniversalAppX

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [windowsUniversalAppX](../resources/intune-apps-windowsuniversalappx.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementApps.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementApps.ReadWrite.All|

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
In the request body, supply a JSON representation for the [windowsUniversalAppX](../resources/intune-apps-windowsuniversalappx.md) object.

The following table shows the properties that are required when you create the [windowsUniversalAppX](../resources/intune-apps-windowsuniversalappx.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|displayName|String|The admin provided or imported title of the app. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|description|String|The description of the app. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|publisher|String|The publisher of the app. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|largeIcon|[mimeContent](../resources/intune-shared-mimecontent.md)|The large icon, to be displayed in the app details and used for upload of the icon. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|createdDateTime|DateTimeOffset|The date and time the app was created. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|lastModifiedDateTime|DateTimeOffset|The date and time the app was last modified. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|isFeatured|Boolean|The value indicating whether the app is marked as featured by the admin. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|privacyInformationUrl|String|The privacy statement Url. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|informationUrl|String|The more information Url. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|owner|String|The owner of the app. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|developer|String|The developer of the app. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|notes|String|Notes for the app. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|publishingState|[mobileAppPublishingState](../resources/intune-apps-mobileapppublishingstate.md)|The publishing state for the app. The app cannot be assigned unless the app is published. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md). Possible values are: `notPublished`, `processing`, `published`.|
|committedContentVersion|String|The internal committed content version. Inherited from [mobileLobApp](../resources/intune-apps-mobilelobapp.md)|
|fileName|String|The name of the main Lob application file. Inherited from [mobileLobApp](../resources/intune-apps-mobilelobapp.md)|
|size|Int64|The total size, including all uploaded files. Inherited from [mobileLobApp](../resources/intune-apps-mobilelobapp.md)|
|applicableArchitectures|[windowsArchitecture](../resources/intune-apps-windowsarchitecture.md)|The Windows architecture(s) for which this app can run on. Possible values are: `none`, `x86`, `x64`, `arm`, `neutral`.|
|applicableDeviceTypes|[windowsDeviceType](../resources/intune-apps-windowsdevicetype.md)|The Windows device type(s) for which this app can run on. Possible values are: `none`, `desktop`, `mobile`, `holographic`, `team`.|
|identityName|String|The Identity Name.|
|identityPublisherHash|String|The Identity Publisher Hash.|
|identityResourceIdentifier|String|The Identity Resource Identifier.|
|isBundle|Boolean|Whether or not the app is a bundle.|
|minimumSupportedOperatingSystem|[windowsMinimumOperatingSystem](../resources/intune-apps-windowsminimumoperatingsystem.md)|The value for the minimum applicable operating system.|
|identityVersion|String|The identity version.|



## Response
If successful, this method returns a `200 OK` response code and an updated [windowsUniversalAppX](../resources/intune-apps-windowsuniversalappx.md) object in the response body.

## Example

### Request
Here is an example of the request.

# [HTTP](#tab/http)
<!-- { "blockType": "request" , "name" : "intune_apps_windowsuniversalappx_update_update_windowsuniversalappx" }-->
``` http
PATCH https://graph.microsoft.com/v1.0/deviceAppManagement/mobileApps/{mobileAppId}
Content-type: application/json
Content-length: 1189

{
  "@odata.type": "#microsoft.graph.windowsUniversalAppX",
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
  "publishingState": "processing",
  "committedContentVersion": "Committed Content Version value",
  "fileName": "File Name value",
  "size": 4,
  "applicableArchitectures": "x86",
  "applicableDeviceTypes": "desktop",
  "identityName": "Identity Name value",
  "identityPublisherHash": "Identity Publisher Hash value",
  "identityResourceIdentifier": "Identity Resource Identifier value",
  "isBundle": true,
  "minimumSupportedOperatingSystem": {
    "@odata.type": "microsoft.graph.windowsMinimumOperatingSystem",
    "v8_0": true,
    "v8_1": true,
    "v10_0": true
  },
  "identityVersion": "Identity Version value"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/intune-apps-windowsuniversalappx-update-update-windowsuniversalappx-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/intune-apps-windowsuniversalappx-update-update-windowsuniversalappx-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/intune-apps-windowsuniversalappx-update-update-windowsuniversalappx-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/intune-apps-windowsuniversalappx-update-update-windowsuniversalappx-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/intune-apps-windowsuniversalappx-update-update-windowsuniversalappx-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/intune-apps-windowsuniversalappx-update-update-windowsuniversalappx-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/intune-apps-windowsuniversalappx-update-update-windowsuniversalappx-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/intune-apps-windowsuniversalappx-update-update-windowsuniversalappx-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

<!-- { "blockType": "response" , "@odata.type" : "microsoft.graph.windowsUniversalAppX" }-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 1361

{
  "@odata.type": "#microsoft.graph.windowsUniversalAppX",
  "id": "4bc47eba-7eba-4bc4-ba7e-c44bba7ec44b",
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
  "publishingState": "processing",
  "committedContentVersion": "Committed Content Version value",
  "fileName": "File Name value",
  "size": 4,
  "applicableArchitectures": "x86",
  "applicableDeviceTypes": "desktop",
  "identityName": "Identity Name value",
  "identityPublisherHash": "Identity Publisher Hash value",
  "identityResourceIdentifier": "Identity Resource Identifier value",
  "isBundle": true,
  "minimumSupportedOperatingSystem": {
    "@odata.type": "microsoft.graph.windowsMinimumOperatingSystem",
    "v8_0": true,
    "v8_1": true,
    "v10_0": true
  },
  "identityVersion": "Identity Version value"
}
```
