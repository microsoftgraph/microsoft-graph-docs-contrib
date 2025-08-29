---
title: "networkAccessTraffic resource type"
description: "Represents a log of network traffic that passes through Global Secure Access services."
author: "miritsadon"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# networkAccessTraffic resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a network access traffic log entry. It contains comprehensive information regarding network traffic events, offering detailed insights into the nature and characteristics of the traffic through the Global Secure Access (GSA) services.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/networkaccess-logs-list-traffic.md)|[microsoft.graph.networkaccess.networkAccessTraffic](../resources/networkaccess-networkaccesstraffic.md) collection|Get a list of the [microsoft.graph.networkaccess.networkAccessTraffic](../resources/networkaccess-networkaccesstraffic.md) objects and their properties.|
|[Get](../api/networkaccess-networkaccesstraffic-get.md)|[microsoft.graph.networkaccess.networkAccessTraffic](../resources/networkaccess-networkaccesstraffic.md)|Read the properties and relationships of a networkAccessTraffic object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|microsoft.graph.networkaccess.filteringPolicyAction|Indicates the action taken based on filtering policies. The possible values are: `block`, `allow`, `unknownFutureValue`, `bypass`, `alert`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `bypass` , `alert`.|
|agentVersion|String|Represents the version of the Global Secure Access (GSA) client agent software. Supports $filter (`eq`) and `$orderby`.|
|applicationSnapshot|[microsoft.graph.networkaccess.applicationSnapshot](../resources/networkaccess-applicationsnapshot.md)|Destination Application ID accessed in Azure AD during the transaction. Supports $filter (`eq`) and `$orderby`.|
|cloudApplicationMetadata|[microsoft.graph.networkaccess.cloudApplicationMetadata](../resources/networkaccess-cloudapplicationmetadata.md)|Contains metadata about the cloud application involved in the network transaction, such as application name, category, and risk level. Supports `$filter` (`eq`) and `$orderby`.|
|connectionId|String|Represents a unique identifier assigned to a connection. Supports $filter (`eq`) and `$orderby`.|
|createdDateTime|DateTimeOffset|Represents the date and time when a network access traffic log entry was created. Supports $filter (`eq`) and `$orderby`.|
|description|String|Informational error message. For example: "Threat intelligence detected a transaction and triggered an alert." or "The Global Secure Access (GSA) policy blocked the destination and triggered an alert." Supports $filter (`eq`) and `$orderby`.|
|destinationFQDN|String|Represents the Fully Qualified Domain Name (FQDN) of the destination host or server in a network communication. Supports $filter (`eq`) and `$orderby`.|
|destinationIp|String|Represents the IP address of the destination host or server in a network communication. Supports $filter (`eq`) and `$orderby`.|
|destinationPort|Int32|Represents the network port number on the destination host or server in a network communication. Supports $filter (`eq`) and `$orderby`.|
|destinationUrl|String|Represents the URL of the destination in a network communication. Supports $filter (`eq`) and `$orderby`.|
|destinationWebCategory|microsoft.graph.networkaccess.webCategory|The destination FQDN's Web Category (e.g., Gambling). Supports $filter (`eq`) and `$orderby`.|
|deviceCategory|microsoft.graph.networkaccess.deviceCategory|Represents the category classification of a device within a network infrastructure. The possible values are: `client`, `branch`, `unknownFutureValue`. Supports $filter (`eq`) and `$orderby`.|
|deviceId|String|Represents a unique identifier assigned to a device within a network infrastructure. Supports $filter (`eq`) and `$orderby`.|
|deviceOperatingSystem|String|Represents the operating system installed on a device within a network infrastructure. Supports $filter (`eq`) and `$orderby`.|
|deviceOperatingSystemVersion|String|Represents the version or release number of the operating system installed on a device within a network infrastructure. Supports $filter (`eq`) and `$orderby`.|
|filteringProfileId|String|The ID of the Filtering Profile associated with the action performed on traffic. Supports $filter (`eq`) and `$orderby`.|
|filteringProfileName|String|The name of the Filtering Profile associated with the action performed on traffic. Supports $filter (`eq`) and `$orderby`.|
|headers|[microsoft.graph.networkaccess.headers](../resources/networkaccess-headers.md)|Represents the headers included in a network request or response. Supports $filter (`eq`) and `$orderby`.|
|httpMethod|microsoft.graph.networkaccess.httpMethod|The HTTP method inspected in the intercepted HTTP traffic. Supports $filter (`eq`) and `$orderby`.|
|initiatingProcessName|String|The process initiating the traffic transaction. Supports $filter (`eq`) and `$orderby`.|
|networkProtocol|microsoft.graph.networkaccess.networkingProtocol|Represents the networking protocol used for communication. The possible values are: `ip`, `icmp`, `igmp`, `ggp`, `ipv4`, `tcp`, `pup`, `udp`, `idp`, `ipv6`, `ipv6RoutingHeader`, `ipv6FragmentHeader`, `ipSecEncapsulatingSecurityPayload`, `ipSecAuthenticationHeader`, `icmpV6`, `ipv6NoNextHeader`, `ipv6DestinationOptions`, `nd`, `raw`, `ipx`, `spx`, `spxII`, `unknownFutureValue`. Supports $filter (`eq`) and `$orderby`.|
|operationStatus|microsoft.graph.networkaccess.networkTrafficOperationStatus|Indication if traffic was successfully processed. The possible values are: `success`, `failure`, `unknownFutureValue`. Supports $filter (`eq`) and `$orderby`.|
|policyId|String|Represents a unique identifier assigned to a policy. Supports $filter (`eq`) and `$orderby`.|
|policyName|String|The name of the filtering policy associated with the action performed on traffic. Supports $filter (`eq`) and `$orderby`.|
|policyRuleId|String|Represents a unique identifier assigned to a policy rule. Supports $filter (`eq`) and `$orderby`.|
|policyRuleName|String|The name of the rule associated with the action performed on traffic. Supports $filter (`eq`) and `$orderby`.|
|popProcessingRegion|String|The Point-of-Presence processing region of the traffic. Supports $filter (`eq`) and `$orderby`.|
|privateAccessDetails|[microsoft.graph.networkaccess.privateAccessDetails](../resources/networkaccess-privateaccessdetails.md)|Details about private access traffic. Supports $filter (`eq`) and `$orderby`.|
|receivedBytes|Int64|Represents the total number of bytes received in a network communication or data transfer. Supports $filter (`eq`) and `$orderby`.|
|remoteNetworkId|String|The ID from which traffic was sent or received, providing visibility into the origin of the traffic. Supports $filter (`eq`) and `$orderby`.|
|resourceTenantId|String|Tenant ID that owns the resource. Supports $filter (`eq`) and `$orderby`.|
|responseCode|Int32|The HTTP response code inspected in the intercepted HTTP traffic. Supports $filter (`eq`) and `$orderby`.|
|sentBytes|Int64|Represents the total number of bytes sent in a network communication or data transfer. Supports $filter (`eq`) and `$orderby`.|
|sessionId|String|Represents a unique identifier assigned to a session or connection within a network infrastructure. Supports $filter (`eq`) and `$orderby`.|
|sourceIp|String|Represents the source IP address in a network communication. Supports $filter (`eq`) and `$orderby`.|
|sourcePort|Int32|Represents the network port number on the source host or device in a network communication. Supports $filter (`eq`) and `$orderby`.|
|tenantId|String|Represents a unique identifier assigned to a tenant within a network infrastructure. Supports $filter (`eq`) and `$orderby`.|
|threatType|String|The type of threat detected in the traffic. Supports $filter (`eq`) and `$orderby`.|
|trafficType|microsoft.graph.networkaccess.trafficType|Represents the type or category of network traffic. The possible values are: `internet`, `private`, `microsoft365`, `all`, `unknownFutureValue`. Supports $filter (`eq`) and `$orderby`.|
|transactionId|String|Represents a unique identifier assigned to a specific transaction or operation. Key. Supports $filter (`eq`) and `$orderby`.|
|transportProtocol|microsoft.graph.networkaccess.networkingProtocol|Represents the transport protocol used for communication. The possible values are: `ip`, `icmp`, `igmp`, `ggp`, `ipv4`, `tcp`, `pup`, `udp`, `idp`, `ipv6`, `ipv6RoutingHeader`, `ipv6FragmentHeader`, `ipSecEncapsulatingSecurityPayload`, `ipSecAuthenticationHeader`, `icmpV6`, `ipv6NoNextHeader`, `ipv6DestinationOptions`, `nd`, `raw`, `ipx`, `spx`, `spxII`, `unknownFutureValue`. Supports $filter (`eq`) and `$orderby`.|
|userId|String|Represents a unique identifier assigned to a user. Supports $filter (`eq`) and `$orderby`.|
|userPrincipalName|String|Represents the user principal name (UPN) associated with a user. Supports $filter (`eq`) and `$orderby`.|
|vendorNames|Collection(String)|The name of the vendors who detected the threat. Supports $filter (`eq`) and `$orderby`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|device|[device](../resources/device.md)| Represents the device associated with the network traffic, providing details about the hardware or virtual machine involved in the transaction.|
|user|[user](../resources/user.md)| Represents the user associated with the network traffic, providing details about the individual or account initiating the transaction.|

## JSON representation
The following JSON representation shows the resource type.
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
  "destinationUrl": "String",
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
  },
  "destinationWebCategory": {
    "@odata.type": "microsoft.graph.networkaccess.webCategory"
  },
  "filteringProfileId": "String",
  "filteringProfileName": "String",
  "policyName": "String",
  "policyRuleName": "String",
  "initiatingProcessName": "String",
  "resourceTenantId": "String",
  "threatType": "String",
  "applicationSnapshot": {
    "@odata.type": "microsoft.graph.networkaccess.applicationSnapshot"
  },
  "privateAccessDetails": {
    "@odata.type": "microsoft.graph.networkaccess.privateAccessDetails"
  },
  "description": "String",
  "vendorNames": ["String"],
  "remoteNetworkId": "String",
  "httpMethod": "String",
  "responseCode": "Integer",
  "operationStatus": "String",
  "popProcessingRegion": "String",
  "cloudApplicationMetadata": {
    "@odata.type": "microsoft.graph.networkaccess.cloudApplicationMetadata"
  }
}
```

