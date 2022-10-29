---
title: "Update microsoftTunnelConfiguration"
description: "Update the properties of a microsoftTunnelConfiguration object."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Update microsoftTunnelConfiguration

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [microsoftTunnelConfiguration](../resources/intune-mstunnel-microsofttunnelconfiguration.md) object.

## Prerequisites
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
PATCH /deviceManagement/microsoftTunnelConfigurations/{microsoftTunnelConfigurationId}
PATCH /deviceManagement/microsoftTunnelSites/{microsoftTunnelSiteId}/microsoftTunnelConfiguration
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [microsoftTunnelConfiguration](../resources/intune-mstunnel-microsofttunnelconfiguration.md) object.

The following table shows the properties that are required when you create the [microsoftTunnelConfiguration](../resources/intune-mstunnel-microsofttunnelconfiguration.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the configuration id. Supports: $delete, $update. $Insert, $skip, $top is not supported. Read-only.|
|displayName|String|The display name for the server configuration. This property is required when a server is created.|
|description|String|The configuration's description (optional)|
|network|String|The subnet that will be used to allocate virtual address for the clients|
|dnsServers|String collection|The DNS servers that will be used by the clients|
|defaultDomainSuffix|String|The Default Domain appendix that will be used by the clients|
|splitDNS|String collection|The domains that will be resolved using the provided dns servers|
|listenPort|Int32|The port that both TCP and UPD will listen over on the server|
|advancedSettings|[keyValuePair](../resources/intune-shared-keyvaluepair.md) collection|Additional settings that may be applied to the server|
|lastUpdateDateTime|DateTimeOffset|When the configuration was last updated|
|roleScopeTagIds|String collection|List of Scope Tags for this Entity instance|
|disableUdpConnections|Boolean|When DisableUdpConnections is set, the clients and VPN server will not use DTLS connections to transfer data.|



## Response
If successful, this method returns a `200 OK` response code and an updated [microsoftTunnelConfiguration](../resources/intune-mstunnel-microsofttunnelconfiguration.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/v1.0/deviceManagement/microsoftTunnelConfigurations/{microsoftTunnelConfigurationId}
Content-type: application/json
Content-length: 670

{
  "@odata.type": "#microsoft.graph.microsoftTunnelConfiguration",
  "displayName": "Display Name value",
  "description": "Description value",
  "network": "Network value",
  "dnsServers": [
    "Dns Servers value"
  ],
  "defaultDomainSuffix": "Default Domain Suffix value",
  "splitDNS": [
    "Split DNS value"
  ],
  "listenPort": 10,
  "advancedSettings": [
    {
      "@odata.type": "microsoft.graph.keyValuePair",
      "name": "Name value",
      "value": "Value value"
    }
  ],
  "lastUpdateDateTime": "2016-12-31T23:58:21.6459442-08:00",
  "roleScopeTagIds": [
    "Role Scope Tag Ids value"
  ],
  "disableUdpConnections": true
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 719

{
  "@odata.type": "#microsoft.graph.microsoftTunnelConfiguration",
  "id": "b8bdb469-b469-b8bd-69b4-bdb869b4bdb8",
  "displayName": "Display Name value",
  "description": "Description value",
  "network": "Network value",
  "dnsServers": [
    "Dns Servers value"
  ],
  "defaultDomainSuffix": "Default Domain Suffix value",
  "splitDNS": [
    "Split DNS value"
  ],
  "listenPort": 10,
  "advancedSettings": [
    {
      "@odata.type": "microsoft.graph.keyValuePair",
      "name": "Name value",
      "value": "Value value"
    }
  ],
  "lastUpdateDateTime": "2016-12-31T23:58:21.6459442-08:00",
  "roleScopeTagIds": [
    "Role Scope Tag Ids value"
  ],
  "disableUdpConnections": true
}
```




