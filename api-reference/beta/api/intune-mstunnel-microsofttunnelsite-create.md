---
title: "Create microsoftTunnelSite"
description: "Create a new microsoftTunnelSite object."
author: "dougeby"
ms.localizationpriority: medium
ms.prod: "intune"
doc_type: apiPageType
---

# Create microsoftTunnelSite

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [microsoftTunnelSite](../resources/intune-mstunnel-microsofttunnelsite.md) object.

## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementServiceConfig.ReadWrite.All, DeviceManagementConfiguration.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/microsoftTunnelSites
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the microsoftTunnelSite object.

The following table shows the properties that are required when you create the microsoftTunnelSite.

|Property|Type|Description|
|:---|:---|:---|
|id|String|The MicrosoftTunnelSite's Id|
|displayName|String|The MicrosoftTunnelSite's display name|
|description|String|The MicrosoftTunnelSite's description|
|publicAddress|String|The MicrosoftTunnelSite's public domain name or IP address|
|upgradeWindowUtcOffsetInMinutes|Int32|The site's timezone represented as a minute offset from UTC|
|upgradeWindowStartTime|TimeOfDay|The site's upgrade window start time of day|
|upgradeWindowEndTime|TimeOfDay|The site's upgrade window end time of day|
|upgradeAutomatically|Boolean|The site's automatic upgrade setting. True for automatic upgrades, false for manual control|
|upgradeAvailable|Boolean|True if an upgrade is available|
|internalNetworkProbeUrl|String|The MicrosoftTunnelSite's Internal Network Access Probe URL|
|roleScopeTagIds|String collection|List of Scope Tags for this Entity instance.|



## Response
If successful, this method returns a `201 Created` response code and a [microsoftTunnelSite](../resources/intune-mstunnel-microsofttunnelsite.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceManagement/microsoftTunnelSites
Content-type: application/json
Content-length: 524

{
  "@odata.type": "#microsoft.graph.microsoftTunnelSite",
  "displayName": "Display Name value",
  "description": "Description value",
  "publicAddress": "Public Address value",
  "upgradeWindowUtcOffsetInMinutes": 15,
  "upgradeWindowStartTime": "12:01:27.3030000",
  "upgradeWindowEndTime": "11:57:17.9830000",
  "upgradeAutomatically": true,
  "upgradeAvailable": true,
  "internalNetworkProbeUrl": "https://example.com/internalNetworkProbeUrl/",
  "roleScopeTagIds": [
    "Role Scope Tag Ids value"
  ]
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 573

{
  "@odata.type": "#microsoft.graph.microsoftTunnelSite",
  "id": "b2f7dc3e-dc3e-b2f7-3edc-f7b23edcf7b2",
  "displayName": "Display Name value",
  "description": "Description value",
  "publicAddress": "Public Address value",
  "upgradeWindowUtcOffsetInMinutes": 15,
  "upgradeWindowStartTime": "12:01:27.3030000",
  "upgradeWindowEndTime": "11:57:17.9830000",
  "upgradeAutomatically": true,
  "upgradeAvailable": true,
  "internalNetworkProbeUrl": "https://example.com/internalNetworkProbeUrl/",
  "roleScopeTagIds": [
    "Role Scope Tag Ids value"
  ]
}
```



