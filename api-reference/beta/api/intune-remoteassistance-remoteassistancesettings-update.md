---
title: "Update remoteAssistanceSettings"
description: "Update the properties of a remoteAssistanceSettings object."
author: "dougeby"
ms.localizationpriority: medium
ms.prod: "intune"
doc_type: apiPageType
---

# Update remoteAssistanceSettings

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [remoteAssistanceSettings](../resources/intune-remoteassistance-remoteassistancesettings.md) object.

## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementServiceConfig.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementServiceConfig.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /deviceManagement/remoteAssistanceSettings
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [remoteAssistanceSettings](../resources/intune-remoteassistance-remoteassistancesettings.md) object.

The following table shows the properties that are required when you create the [remoteAssistanceSettings](../resources/intune-remoteassistance-remoteassistancesettings.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|The remote assistance settings identifier|
|remoteAssistanceState|[remoteAssistanceState](../resources/intune-remoteassistance-remoteassistancestate.md)|The current state of remote assistance for the account. Possible values are: notConfigured, disabled, enabled. This setting is configurable by the admin. Remote assistance settings that have not yet been configured by the admin have a notConfigured state. Returned by default. Possible values are: `notConfigured`, `disabled`, `enabled`.|
|allowSessionsToUnenrolledDevices|Boolean| Indicates if sessions to unenrolled devices are allowed for the account. This setting is configurable by the admin. Default value is false.|



## Response
If successful, this method returns a `200 OK` response code and an updated [remoteAssistanceSettings](../resources/intune-remoteassistance-remoteassistancesettings.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/remoteAssistanceSettings
Content-type: application/json
Content-length: 151

{
  "@odata.type": "#microsoft.graph.remoteAssistanceSettings",
  "remoteAssistanceState": "disabled",
  "allowSessionsToUnenrolledDevices": true
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 200

{
  "@odata.type": "#microsoft.graph.remoteAssistanceSettings",
  "id": "cfef360e-360e-cfef-0e36-efcf0e36efcf",
  "remoteAssistanceState": "disabled",
  "allowSessionsToUnenrolledDevices": true
}
```



