---
title: "Update serviceNowConnection"
description: "Update the properties of a serviceNowConnection object."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: apiPageType
---

# Update serviceNowConnection

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [serviceNowConnection](../resources/intune-servicenowconnectorservice-servicenowconnection.md) object.

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
PATCH /deviceManagement/serviceNowConnections/{serviceNowConnectionId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [serviceNowConnection](../resources/intune-servicenowconnectorservice-servicenowconnection.md) object.

The following table shows the properties that are required when you create the [serviceNowConnection](../resources/intune-servicenowconnectorservice-servicenowconnection.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier of ServiceNow connection|
|instanceUrl|String|Indicates the ServiceNow instance URL that Intune will connect to. Saved in the format of https://<instance>.service-now.com|
|incidentApiUrl|String|Indicates the ServiceNow incident API URL that Intune will use the fetch incidents. Saved in the format of /api/now/table/incident|
|authenticationMethod|[serviceNowAuthenticationMethod](../resources/intune-servicenowconnectorservice-servicenowauthenticationmethod.md)|Indicates the method used by Intune to authenticate with ServiceNow. Currently supports only web authentication with ServiceNow using the specified app id.|
|serviceNowConnectionStatus|[serviceNowConnectionStatus](../resources/intune-servicenowconnectorservice-servicenowconnectionstatus.md)|Status of the ServiceNow Connection based on user's selection. Possible value could be disabled or enabled. Possible values are: `disabled`, `enabled`, `unknownFutureValue`.|
|createdDateTime|DateTimeOffset|Date Time when connection properties were created. The value cannot be modified and is automatically populated when the connection properties were entered.|
|lastModifiedDateTime|DateTimeOffset|Date Time when connection properties were last updated. The value cannot be modified and is automatically populated when the connection properties were updated.|
|lastQueriedDateTime|DateTimeOffset|Date Time when incidents from ServiceNow were last queried|



## Response
If successful, this method returns a `200 OK` response code and an updated [serviceNowConnection](../resources/intune-servicenowconnectorservice-servicenowconnection.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/serviceNowConnections/{serviceNowConnectionId}
Content-type: application/json
Content-length: 422

{
  "@odata.type": "#microsoft.graph.serviceNowConnection",
  "instanceUrl": "https://example.com/instanceUrl/",
  "incidentApiUrl": "https://example.com/incidentApiUrl/",
  "authenticationMethod": {
    "@odata.type": "microsoft.graph.serviceNowOauthSecretAuthentication",
    "appId": "App Id value"
  },
  "serviceNowConnectionStatus": "enabled",
  "lastQueriedDateTime": "2017-01-01T00:00:30.0527314-08:00"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 594

{
  "@odata.type": "#microsoft.graph.serviceNowConnection",
  "id": "315bc12c-c12c-315b-2cc1-5b312cc15b31",
  "instanceUrl": "https://example.com/instanceUrl/",
  "incidentApiUrl": "https://example.com/incidentApiUrl/",
  "authenticationMethod": {
    "@odata.type": "microsoft.graph.serviceNowOauthSecretAuthentication",
    "appId": "App Id value"
  },
  "serviceNowConnectionStatus": "enabled",
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "lastQueriedDateTime": "2017-01-01T00:00:30.0527314-08:00"
}
```
