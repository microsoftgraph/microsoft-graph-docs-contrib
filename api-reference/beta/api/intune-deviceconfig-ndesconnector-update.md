---
title: "Update ndesConnector"
description: "Update the properties of a ndesConnector object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# Update ndesConnector

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [ndesConnector](../resources/intune-deviceconfig-ndesconnector.md) object.

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
PATCH /deviceManagement/ndesConnectors/{ndesConnectorId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [ndesConnector](../resources/intune-deviceconfig-ndesconnector.md) object.

The following table shows the properties that are required when you create the [ndesConnector](../resources/intune-deviceconfig-ndesconnector.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|The key of the NDES Connector.|
|lastConnectionDateTime|DateTimeOffset|Last connection time for the Ndes Connector|
|state|[ndesConnectorState](../resources/intune-deviceconfig-ndesconnectorstate.md)|Ndes Connector Status. Possible values are: `none`, `active`, `inactive`.|
|displayName|String|The friendly name of the Ndes Connector.|
|machineName|String|Name of the machine running on-prem certificate connector service.|
|enrolledDateTime|DateTimeOffset|Timestamp when on-prem certificate connector was enrolled in Intune.|
|roleScopeTagIds|String collection|List of Scope Tags for this Entity instance.|
|connectorVersion|String|The build version of the Ndes Connector.|



## Response
If successful, this method returns a `200 OK` response code and an updated [ndesConnector](../resources/intune-deviceconfig-ndesconnector.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/ndesConnectors/{ndesConnectorId}
Content-type: application/json
Content-length: 394

{
  "@odata.type": "#microsoft.graph.ndesConnector",
  "lastConnectionDateTime": "2016-12-31T23:58:36.6670033-08:00",
  "state": "active",
  "displayName": "Display Name value",
  "machineName": "Machine Name value",
  "enrolledDateTime": "2016-12-31T23:59:43.797191-08:00",
  "roleScopeTagIds": [
    "Role Scope Tag Ids value"
  ],
  "connectorVersion": "Connector Version value"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 443

{
  "@odata.type": "#microsoft.graph.ndesConnector",
  "id": "e71fa706-a706-e71f-06a7-1fe706a71fe7",
  "lastConnectionDateTime": "2016-12-31T23:58:36.6670033-08:00",
  "state": "active",
  "displayName": "Display Name value",
  "machineName": "Machine Name value",
  "enrolledDateTime": "2016-12-31T23:59:43.797191-08:00",
  "roleScopeTagIds": [
    "Role Scope Tag Ids value"
  ],
  "connectorVersion": "Connector Version value"
}
```