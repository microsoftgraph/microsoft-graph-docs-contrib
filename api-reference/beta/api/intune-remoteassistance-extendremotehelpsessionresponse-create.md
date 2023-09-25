---
title: "Create extendRemoteHelpSessionResponse"
description: "Create a new extendRemoteHelpSessionResponse object."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Create extendRemoteHelpSessionResponse

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [extendRemoteHelpSessionResponse](../resources/intune-remoteassistance-extendremotehelpsessionresponse.md) object.

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
POST /ExtendRemoteHelpSessionResponse
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the extendRemoteHelpSessionResponse object.

The following table shows the properties that are required when you create the extendRemoteHelpSessionResponse.

|Property|Type|Description|
|:---|:---|:---|
|sessionKey|String|The unique identifier for a session|
|acsHelperUserToken|String|Helper ACS User Token|
|pubSubHelperAccessUri|String|Azure Pubsub Group Id|
|sessionExpirationDateTime|DateTimeOffset|Azure Pubsub Session Expiration Date Time.|



## Response
If successful, this method returns a `201 Created` response code and a [extendRemoteHelpSessionResponse](../resources/intune-remoteassistance-extendremotehelpsessionresponse.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/ExtendRemoteHelpSessionResponse
Content-type: application/json
Content-length: 299

{
  "@odata.type": "#microsoft.graph.extendRemoteHelpSessionResponse",
  "sessionKey": "Session Key value",
  "acsHelperUserToken": "Acs Helper User Token value",
  "pubSubHelperAccessUri": "Pub Sub Helper Access Uri value",
  "sessionExpirationDateTime": "2016-12-31T23:59:57.5564522-08:00"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 299

{
  "@odata.type": "#microsoft.graph.extendRemoteHelpSessionResponse",
  "sessionKey": "Session Key value",
  "acsHelperUserToken": "Acs Helper User Token value",
  "pubSubHelperAccessUri": "Pub Sub Helper Access Uri value",
  "sessionExpirationDateTime": "2016-12-31T23:59:57.5564522-08:00"
}
```
