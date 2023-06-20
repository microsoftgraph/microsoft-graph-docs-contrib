---
title: "networkAccessTraffic resource type"
description: "The networkAccessTrafficLogEntry object represents a log entry in the network access traffic log. It contains comprehensive information regarding network traffic events, offering detailed insights into the nature and characteristics of the traffic."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# networkAccessTraffic resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The networkAccessTrafficLogEntry object represents a log entry in the network access traffic log. It contains comprehensive information regarding network traffic events, offering detailed insights into the nature and characteristics of the traffic.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List networkAccessTraffics](../api/networkaccess-logs-list-traffic.md)|[microsoft.graph.networkaccess.networkAccessTraffic](../resources/networkaccess-networkaccesstraffic.md) collection|Get a list of the [microsoft.graph.networkaccess.networkAccessTraffic](../resources/networkaccess-networkaccesstraffic.md) objects and their properties.|
|[Get networkAccessTraffic](../api/networkaccess-networkaccesstraffic-get.md)|[microsoft.graph.networkaccess.networkAccessTraffic](../resources/networkaccess-networkaccesstraffic.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.networkAccessTraffic](../resources/networkaccess-networkaccesstraffic.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|microsoft.graph.networkaccess.filteringPolicyAction|Represents an action applied within a filtering policy.The possible values are: `block`, `allow`.|
|agentVersion|String|Represents the version of an agent software.|
|connectionId|String|Represents a unique identifier assigned to a connection.|
|createdDateTime|DateTimeOffset|Represents the date and time when a network access traffic log entry was created.|
|destinationFQDN|String|Represents the Fully Qualified Domain Name (FQDN) of the destination host or server in a network communication|
|destinationIp|String|Represents the IP address of the destination host or server in a network communication.|
|destinationPort|Int32|Represents the network port number on the destination host or server in a network communication.|
|deviceCategory|microsoft.graph.networkaccess.deviceCategory|Represents the category classification of a device within a network infrastructure.The possible values are: `client`, `branch`.|
|deviceId|String|Represents a unique identifier assigned to a device within a network infrastructure.|
|deviceOperatingSystem|String|Represents the operating system installed on a device within a network infrastructure.|
|deviceOperatingSystemVersion|String|Represents the version or release number of the operating system installed on a device within a network infrastructure.|
|headers|[microsoft.graph.networkaccess.headers](../resources/networkaccess-headers.md)|Represents the headers included in a network request or response.|
|networkProtocol|microsoft.graph.networkaccess.networkingProtocol|Represents the networking protocol used for communication.The possible values are: `ip`, `icmp`, `igmp`, `ggp`, `ipv4`, `tcp`, `pup`, `udp`, `idp`, `ipv6`, `ipv6RoutingHeader`, `ipv6FragmentHeader`, `ipSecEncapsulatingSecurityPayload`, `ipSecAuthenticationHeader`, `icmpV6`, `ipv6NoNextHeader`, `ipv6DestinationOptions`, `nd`, `raw`, `ipx`, `spx`, `spxII`.|
|policyId|String|Represents a unique identifier assigned to a policy.|
|policyRuleId|String|Represents a unique identifier assigned to a policy rule.|
|receivedBytes|Int64|Represents the total number of bytes received in a network communication or data transfer.|
|sentBytes|Int64| Represents the total number of bytes sent in a network communication or data transfer.|
|sessionId|String|Represents a unique identifier assigned to a session or connection within a network infrastructure.|
|sourceIp|String|Represents the source IP address in a network communication.|
|sourcePort|Int32|Represents the network port number on the source host or device in a network communication.|
|tenantId|String|Represents a unique identifier assigned to a tenant within a network infrastructure.|
|trafficType|microsoft.graph.networkaccess.trafficType|Represents the type or category of network traffic.The possible values are: `internet`, `private`, `microsoft365`, `all`.|
|transactionId|String|Represents a unique identifier assigned to a specific transaction or operation.|
|transportProtocol|microsoft.graph.networkaccess.networkingProtocol|Represents the transport protocol used for communication.The possible values are: `ip`, `icmp`, `igmp`, `ggp`, `ipv4`, `tcp`, `pup`, `udp`, `idp`, `ipv6`, `ipv6RoutingHeader`, `ipv6FragmentHeader`, `ipSecEncapsulatingSecurityPayload`, `ipSecAuthenticationHeader`, `icmpV6`, `ipv6NoNextHeader`, `ipv6DestinationOptions`, `nd`, `raw`, `ipx`, `spx`, `spxII`.|
|userId|String|Represents a unique identifier assigned to a user.|
|userPrincipalName|String|Represents the user principal name (UPN) associated with a user.|

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

