---
title: "Create requestRemoteHelpSessionAccessResponse"
description: "Create a new requestRemoteHelpSessionAccessResponse object."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Create requestRemoteHelpSessionAccessResponse

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [requestRemoteHelpSessionAccessResponse](../resources/intune-remoteassistance-requestremotehelpsessionaccessresponse.md) object.

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
POST /RequestRemoteHelpSessionAccessResponse
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the requestRemoteHelpSessionAccessResponse object.

The following table shows the properties that are required when you create the requestRemoteHelpSessionAccessResponse.

|Property|Type|Description|
|:---|:---|:---|
|sessionKey|String|The unique identifier for a session|
|sessionType|[allowedRemoteAssistanceActions](../resources/intune-remoteassistance-allowedremoteassistanceactions.md)|Remote Help Session Type. Possible values are: `viewScreen`, `takeFullControl`, `elevation`, `unattended`, `unknownFutureValue`.|
|pubSubEncryptionKey|String|The unique identifier for encrypting client messages sent to PubSub|
|pubSubEncryption|String|AES encryption Initialization Vector for encrypting client messages sent to PubSub|



## Response
If successful, this method returns a `201 Created` response code and a [requestRemoteHelpSessionAccessResponse](../resources/intune-remoteassistance-requestremotehelpsessionaccessresponse.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/RequestRemoteHelpSessionAccessResponse
Content-type: application/json
Content-length: 264

{
  "@odata.type": "#microsoft.graph.requestRemoteHelpSessionAccessResponse",
  "sessionKey": "Session Key value",
  "sessionType": "takeFullControl",
  "pubSubEncryptionKey": "Pub Sub Encryption Key value",
  "pubSubEncryption": "Pub Sub Encryption value"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 264

{
  "@odata.type": "#microsoft.graph.requestRemoteHelpSessionAccessResponse",
  "sessionKey": "Session Key value",
  "sessionType": "takeFullControl",
  "pubSubEncryptionKey": "Pub Sub Encryption Key value",
  "pubSubEncryption": "Pub Sub Encryption value"
}
```
