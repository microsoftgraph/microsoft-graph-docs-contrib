---
title: "Create win32LobAppUninstallPowerShellScript"
description: "Create a new win32LobAppUninstallPowerShellScript object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# Create win32LobAppUninstallPowerShellScript

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [win32LobAppUninstallPowerShellScript](../resources/intune-apps-win32lobappuninstallpowershellscript.md) object.

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
POST /deviceAppManagement/mobileApps/{mobileAppId}/contentVersions/{mobileAppContentId}/scripts
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the win32LobAppUninstallPowerShellScript object.

The following table shows the properties that are required when you create the win32LobAppUninstallPowerShellScript.

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the script associated with a mobileLobApp entity. This property is read-only. Inherited from [mobileAppContentScript](../resources/intune-apps-mobileappcontentscript.md)|
|displayName|String|The display name for the script. Inherited from [mobileAppContentScript](../resources/intune-apps-mobileappcontentscript.md)|
|content|String|The content of the script. This is a Base64-encoded representation of the script's original content. The content has a maximum size limit of 100KB. Inherited from [mobileAppContentScript](../resources/intune-apps-mobileappcontentscript.md)|
|state|[mobileAppContentScriptState](../resources/intune-apps-mobileappcontentscriptstate.md)|Indicates the state of the script upload. Possible values are commitPending, commitSuccess, and commitFailed. This property is read-only. Inherited from [mobileAppContentScript](../resources/intune-apps-mobileappcontentscript.md). Possible values are: `commitPending`, `commitSuccess`, `commitFailed`, `unknownFutureValue`.|
|enforceSignatureCheck|Boolean|Indicates whether or not to enforce a signature check when running the script. When TRUE, the script cannot be run without enforcing a signature check. When FALSE, no signature check will be enforced when running the script. Default value is FALSE. Inherited from [win32LobAppScript](../resources/intune-apps-win32lobappscript.md)|
|runAs32Bit|Boolean|Indicates whether the script will run as 32-bit or 64-bit. When TRUE, the script will run as 32-bit. When FALSE, the script will run as 64-bit. Default value is FALSE. Inherited from [win32LobAppScript](../resources/intune-apps-win32lobappscript.md)|



## Response
If successful, this method returns a `201 Created` response code and a [win32LobAppUninstallPowerShellScript](../resources/intune-apps-win32lobappuninstallpowershellscript.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceAppManagement/mobileApps/{mobileAppId}/contentVersions/{mobileAppContentId}/scripts
Content-type: application/json
Content-length: 235

{
  "@odata.type": "#microsoft.graph.win32LobAppUninstallPowerShellScript",
  "displayName": "Display Name value",
  "content": "Content value",
  "state": "commitSuccess",
  "enforceSignatureCheck": true,
  "runAs32Bit": true
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 284

{
  "@odata.type": "#microsoft.graph.win32LobAppUninstallPowerShellScript",
  "id": "292707a4-07a4-2927-a407-2729a4072729",
  "displayName": "Display Name value",
  "content": "Content value",
  "state": "commitSuccess",
  "enforceSignatureCheck": true,
  "runAs32Bit": true
}
```