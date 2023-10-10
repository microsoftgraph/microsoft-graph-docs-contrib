---
title: "networkAccessTraffic resource type"
description: "Represents a network access traffic log entry. It contains comprehensive information regarding network traffic events, offering detailed insights into the nature and characteristics of the traffic through the Global Secure Access services."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# networkAccessTraffic resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a network access traffic log entry. It contains comprehensive information regarding network traffic events, offering detailed insights into the nature and characteristics of the traffic through the Global Secure Access services.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List traffic](../api/networkaccess-logs-list-traffic.md)|[microsoft.graph.networkaccess.networkAccessTraffic](../resources/networkaccess-networkaccesstraffic.md) collection|Get a list of the [microsoft.graph.networkaccess.networkAccessTraffic](../resources/networkaccess-networkaccesstraffic.md) objects and their properties.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|agentVersion|String|Represents the version of the Global Secure Access client agent software. Supports $filter (`eq`) and `$orderby`.|
|connectionId|String|Represents a unique identifier assigned to a connection. Supports $filter (`eq`) and `$orderby`.|
|createdDateTime|DateTimeOffset|Represents the date and time when a network access traffic log entry was created. Supports $filter (`eq`) and `$orderby`.|
|destinationFQDN|String|Represents the Fully Qualified Domain Name (FQDN) of the destination host or server in a network communication. Supports $filter (`eq`) and `$orderby`.|
|destinationIp|String|Represents the IP address of the destination host or server in a network communication. Supports $filter (`eq`) and `$orderby`.|
|destinationPort|Int32|Represents the network port number on the destination host or server in a network communication. Supports $filter (`eq`) and `$orderby`.|
|deviceCategory|microsoft.graph.networkaccess.deviceCategory|Represents the category classification of a device within a network infrastructure. The possible values are: `client`, `branch`, `unknownFutureValue`. Supports $filter (`eq`) and `$orderby`.|
|deviceId|String|Represents a unique identifier assigned to a device within a network infrastructure. Supports $filter (`eq`) and `$orderby`.|
|deviceOperatingSystem|String|Represents the operating system installed on a device within a network infrastructure. Supports $filter (`eq`) and `$orderby`.|
|deviceOperatingSystemVersion|String|Represents the version or release number of the operating system installed on a device within a network infrastructure. Supports $filter (`eq`) and `$orderby`.|
|headers|[microsoft.graph.networkaccess.headers](../resources/networkaccess-headers.md)|Represents the headers included in a network request or response. Supports $filter (`eq`) and `$orderby`.|
|networkProtocol|microsoft.graph.networkaccess.networkingProtocol|Represents the networking protocol used for communication.The possible values are: `ip`, `icmp`, `igmp`, `ggp`, `ipv4`, `tcp`, `pup`, `udp`, `idp`, `ipv6`, `ipv6RoutingHeader`, `ipv6FragmentHeader`, `ipSecEncapsulatingSecurityPayload`, `ipSecAuthenticationHeader`, `icmpV6`, `ipv6NoNextHeader`, `ipv6DestinationOptions`, `nd`, `raw`, `ipx`, `spx`, `spxII`, `unknownFutureValue`. Supports $filter (`eq`) and `$orderby`.|
|policyId|String|Represents a unique identifier assigned to a policy. Supports $filter (`eq`) and `$orderby`.|
|policyRuleId|String|Represents a unique identifier assigned to a policy rule. Supports $filter (`eq`) and `$orderby`.|
|receivedBytes|Int64|Represents the total number of bytes received in a network communication or data transfer. Supports $filter (`eq`) and `$orderby`.|
|sentBytes|Int64| Represents the total number of bytes sent in a network communication or data transfer. Supports $filter (`eq`) and `$orderby`.|
|sessionId|String|Represents a unique identifier assigned to a session or connection within a network infrastructure. Supports $filter (`eq`) and `$orderby`.|
|sourceIp|String|Represents the source IP address in a network communication. Supports $filter (`eq`) and `$orderby`.|
|sourcePort|Int32|Represents the network port number on the source host or device in a network communication. Supports $filter (`eq`) and `$orderby`.|
|tenantId|String|Represents a unique identifier assigned to a tenant within a network infrastructure. Supports $filter (`eq`) and `$orderby`.|
|trafficType|microsoft.graph.networkaccess.trafficType|Represents the type or category of network traffic.The possible values are: `internet`, `private`, `microsoft365`, `all`, `unknownFutureValue`. Supports $filter (`eq`) and `$orderby`.|
|transactionId|String|Represents a unique identifier assigned to a specific transaction or operation. Key. Supports $filter (`eq`) and `$orderby`.|
|transportProtocol|microsoft.graph.networkaccess.networkingProtocol|Represents the transport protocol used for communication.The possible values are: `ip`, `icmp`, `igmp`, `ggp`, `ipv4`, `tcp`, `pup`, `udp`, `idp`, `ipv6`, `ipv6RoutingHeader`, `ipv6FragmentHeader`, `ipSecEncapsulatingSecurityPayload`, `ipSecAuthenticationHeader`, `icmpV6`, `ipv6NoNextHeader`, `ipv6DestinationOptions`, `nd`, `raw`, `ipx`, `spx`, `spxII`, `unknownFutureValue`. Supports $filter (`eq`) and `$orderby`.|
|userId|String|Represents a unique identifier assigned to a user. Supports $filter (`eq`) and `$orderby`.|
|userPrincipalName|String|Represents the user principal name (UPN) associated with a user. Supports $filter (`eq`) and `$orderby`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "transactionId",
  "@odata.type": "microsoft.graph.networkaccess.networkAccessTraffic",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.networkAccessTraffic",
  "transactionId": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "tenantId": "String",
  "connectionId": "String",
  "sessionId": "String",
  "trafficType": "String",
  "deviceCategory": "String",
  "destinationIp": "String",
  "destinationPort": "Integer",
  "destinationFQDN": "String",
  "sourceIp": "String",
  "sourcePort": "Integer",
  "deviceOperatingSystem": "String",
  "deviceOperatingSystemVersion": "String",
  "agentVersion": "String",
  "deviceId": "String",
  "userId": "String",
  "userPrincipalName": "String",
  "transportProtocol": "String",
  "networkProtocol": "String",
  "action": "String",
  "policyRuleId": "String",
  "policyId": "String",
  "sentBytes": "Integer",
  "receivedBytes": "Integer",
  "headers": {
    "@odata.type": "microsoft.graph.networkaccess.headers"
  }
}
```

