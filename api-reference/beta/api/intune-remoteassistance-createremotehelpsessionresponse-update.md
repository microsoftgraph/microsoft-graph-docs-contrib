---
title: "Update createRemoteHelpSessionResponse"
description: "Update the properties of a createRemoteHelpSessionResponse object."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Update createRemoteHelpSessionResponse

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [createRemoteHelpSessionResponse](../resources/intune-remoteassistance-createremotehelpsessionresponse.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementServiceConfig.ReadWrite.All, DeviceManagementConfiguration.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementServiceConfig.ReadWrite.All, DeviceManagementConfiguration.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /CreateRemoteHelpSessionResponse/{CreateRemoteHelpSessionResponseId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [createRemoteHelpSessionResponse](../resources/intune-remoteassistance-createremotehelpsessionresponse.md) object.

The following table shows the properties that are required when you create the [createRemoteHelpSessionResponse](../resources/intune-remoteassistance-createremotehelpsessionresponse.md).

|Property|Type|Description|
|:---|:---|:---|
|sessionKey|String|The unique identifier for a session|
|sessionType|[allowedRemoteAssistanceActions](../resources/intune-remoteassistance-allowedremoteassistanceactions.md)|Remote Help Session Type. Possible values are: `viewScreen`, `takeFullControl`, `elevation`, `unattended`, `unknownFutureValue`.|



## Response
If successful, this method returns a `200 OK` response code and an updated [createRemoteHelpSessionResponse](../resources/intune-remoteassistance-createremotehelpsessionresponse.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/CreateRemoteHelpSessionResponse/{CreateRemoteHelpSessionResponseId}
Content-type: application/json
Content-length: 148

{
  "@odata.type": "#microsoft.graph.createRemoteHelpSessionResponse",
  "sessionKey": "Session Key value",
  "sessionType": "takeFullControl"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 148

{
  "@odata.type": "#microsoft.graph.createRemoteHelpSessionResponse",
  "sessionKey": "Session Key value",
  "sessionType": "takeFullControl"
}
```
