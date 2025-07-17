---
title: "List microsoftTunnelConfigurations"
description: "List properties and relationships of the microsoftTunnelConfiguration objects."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# List microsoftTunnelConfigurations

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

List properties and relationships of the [microsoftTunnelConfiguration](../resources/intune-mstunnel-microsofttunnelconfiguration.md) objects.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.Read.All, DeviceManagementConfiguration.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.Read.All, DeviceManagementConfiguration.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement/microsoftTunnelConfigurations
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [microsoftTunnelConfiguration](../resources/intune-mstunnel-microsofttunnelconfiguration.md) objects in the response body.

## Example

### Request
Here is an example of the request.
``` http
GET https://graph.microsoft.com/beta/deviceManagement/microsoftTunnelConfigurations
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 1167

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.microsoftTunnelConfiguration",
      "id": "b8bdb469-b469-b8bd-69b4-bdb869b4bdb8",
      "displayName": "Display Name value",
      "description": "Description value",
      "network": "Network value",
      "ipv6Network": "Ipv6Network value",
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
  ]
}
```