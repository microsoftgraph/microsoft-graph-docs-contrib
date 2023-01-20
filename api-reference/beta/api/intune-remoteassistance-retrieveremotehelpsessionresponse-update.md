---
title: "Update retrieveRemoteHelpSessionResponse"
description: "Update the properties of a retrieveRemoteHelpSessionResponse object."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Update retrieveRemoteHelpSessionResponse

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [retrieveRemoteHelpSessionResponse](../resources/intune-remoteassistance-retrieveremotehelpsessionresponse.md) object.

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
PATCH /RemoteHelpSessionRetrieveResponse/{RemoteHelpSessionRetrieveResponseId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [retrieveRemoteHelpSessionResponse](../resources/intune-remoteassistance-retrieveremotehelpsessionresponse.md) object.

The following table shows the properties that are required when you create the [retrieveRemoteHelpSessionResponse](../resources/intune-remoteassistance-retrieveremotehelpsessionresponse.md).

|Property|Type|Description|
|:---|:---|:---|
|sessionKey|String|The unique identifier for a session|
|acsHelperUserToken|String|Helper ACS User Token|
|acsHelperUserId|String|Helper ACS User Id|
|acsSharerUserId|String|Sharer ACS User Id|
|acsGroupId|String|ACS Group Id|
|sessionType|[allowedRemoteAssistanceActions](../resources/intune-remoteassistance-allowedremoteassistanceactions.md)|Remote Help Session Type. Possible values are: `viewScreen`, `takeFullControl`, `elevation`, `unattended`, `unknownFutureValue`.|
|deviceName|String|Android Device Name|
|pubSubGroupId|String|Azure Pubsub Group Id|
|pubSubHelperAccessUri|String|Azure Pubsub Group Id|
|sessionExpirationDateTime|DateTimeOffset|Azure Pubsub Session Expiration Date Time.|



## Response
If successful, this method returns a `200 OK` response code and an updated [retrieveRemoteHelpSessionResponse](../resources/intune-remoteassistance-retrieveremotehelpsessionresponse.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/RemoteHelpSessionRetrieveResponse/{RemoteHelpSessionRetrieveResponseId}
Content-type: application/json
Content-length: 561

{
  "@odata.type": "#microsoft.graph.retrieveRemoteHelpSessionResponse",
  "sessionKey": "Session Key value",
  "acsHelperUserToken": "Acs Helper User Token value",
  "acsHelperUserId": "Acs Helper User Id value",
  "acsSharerUserId": "Acs Sharer User Id value",
  "acsGroupId": "Acs Group Id value",
  "sessionType": "takeFullControl",
  "deviceName": "Device Name value",
  "pubSubGroupId": "Pub Sub Group Id value",
  "pubSubHelperAccessUri": "Pub Sub Helper Access Uri value",
  "sessionExpirationDateTime": "2016-12-31T23:59:57.5564522-08:00"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 561

{
  "@odata.type": "#microsoft.graph.retrieveRemoteHelpSessionResponse",
  "sessionKey": "Session Key value",
  "acsHelperUserToken": "Acs Helper User Token value",
  "acsHelperUserId": "Acs Helper User Id value",
  "acsSharerUserId": "Acs Sharer User Id value",
  "acsGroupId": "Acs Group Id value",
  "sessionType": "takeFullControl",
  "deviceName": "Device Name value",
  "pubSubGroupId": "Pub Sub Group Id value",
  "pubSubHelperAccessUri": "Pub Sub Helper Access Uri value",
  "sessionExpirationDateTime": "2016-12-31T23:59:57.5564522-08:00"
}
```
