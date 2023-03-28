---
title: "Create microsoftTunnelConfiguration"
description: "Create a new microsoftTunnelConfiguration object."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Create microsoftTunnelConfiguration

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [microsoftTunnelConfiguration](../resources/intune-mstunnel-microsofttunnelconfiguration.md) object.

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
POST /deviceManagement/microsoftTunnelConfigurations
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the microsoftTunnelConfiguration object.

The following table shows the properties that are required when you create the microsoftTunnelConfiguration.

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the configuration id. Supports: $delete, $update. $Insert, $skip, $top is not supported. Read-only.|
|displayName|String|The display name for the server configuration. This property is required when a server is created.|
|description|String|The configuration's description (optional)|
|network|String|The subnet that will be used to allocate virtual address for the clients|
|dnsServers|String collection|The DNS servers that will be used by the clients|
|defaultDomainSuffix|String|The Default Domain appendix that will be used by the clients|
|routesInclude|String collection|The routes that will be routed by the server. This property is going to be deprecated with the option of using the new property, 'RouteIncludes'.|
|routesExclude|String collection|Subsets of the routes that will not be routed by the server. This property is going to be deprecated with the option of using the new property, 'RouteExcludes'.|
|routeIncludes|String collection|The routes that will be routed by the server|
|routeExcludes|String collection|Subsets of the routes that will not be routed by the server|
|splitDNS|String collection|The domains that will be resolved using the provided dns servers|
|listenPort|Int32|The port that both TCP and UPD will listen over on the server|
|advancedSettings|[keyValuePair](../resources/intune-shared-keyvaluepair.md) collection|Additional settings that may be applied to the server|
|lastUpdateDateTime|DateTimeOffset|When the configuration was last updated|
|roleScopeTagIds|String collection|List of Scope Tags for this Entity instance|
|disableUdpConnections|Boolean|When DisableUdpConnections is set, the clients and VPN server will not use DTLS connections to transfer data.|



## Response
If successful, this method returns a `201 Created` response code and a [microsoftTunnelConfiguration](../resources/intune-mstunnel-microsofttunnelconfiguration.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceManagement/microsoftTunnelConfigurations
Content-type: application/json
Content-length: 894

{
  "@odata.type": "#microsoft.graph.microsoftTunnelConfiguration",
  "displayName": "Display Name value",
  "description": "Description value",
  "network": "Network value",
  "dnsServers": [
    "Dns Servers value"
  ],
  "defaultDomainSuffix": "Default Domain Suffix value",
  "routesInclude": [
    "Routes Include value"
  ],
  "routesExclude": [
    "Routes Exclude value"
  ],
  "routeIncludes": [
    "Route Includes value"
  ],
  "routeExcludes": [
    "Route Excludes value"
  ],
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
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 943

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
  "routesInclude": [
    "Routes Include value"
  ],
  "routesExclude": [
    "Routes Exclude value"
  ],
  "routeIncludes": [
    "Route Includes value"
  ],
  "routeExcludes": [
    "Route Excludes value"
  ],
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
