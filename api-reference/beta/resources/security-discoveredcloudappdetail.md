---
title: "discoveredCloudAppDetail resource type"
description: "Represents the details about a discovered cloud app."
author: "nechamam"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# discoveredCloudAppDetail resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details about a discovered cloud app. 

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/security-discoveredcloudappdetail-get.md)|[microsoft.graph.security.discoveredCloudAppDetail](../resources/security-discoveredcloudappdetail.md)|Get an overview of the [usage of discovered cloud apps](../resources/security-discoveredcloudappdetail.md).|
|[Get discovered cloud app info](../api/security-discoveredcloudappinfo-get.md)|[microsoft.graph.security.discoveredCloudAppInfo](../resources/security-discoveredcloudappinfo.md) |Get the [details](../resources/security-discoveredcloudappinfo.md) of the security, legal, and compliance risk attributes of the discovered cloud apps.|
|[List IP addresses](../api/security-discoveredcloudappdetail-list-ipaddresses.md)|[microsoft.graph.security.discoveredCloudAppIPAddress](../resources/security-discoveredcloudappipaddress.md) collection|Get the list of [IP addresses](../resources/security-discoveredcloudappipaddress.md) associated with a discovered cloud app.|
|[List users](../api/security-discoveredcloudappdetail-list-users.md)|[microsoft.graph.security.discoveredCloudAppUser](../resources/security-discoveredcloudappuser.md) collection|Get a list of [users](../resources/security-discoveredcloudappuser.md) who accessed a discovered cloud app.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|category|microsoft.graph.security.appCategory|The category of the discovered app. Possible values include: `security`, `collaboration`, `hostingServices`, `onlineMeetings`, `newsAndEntertainment`, `eCommerce`, `education`, `cloudStorage`, `marketing`, `operationsManagement`, `health`, `advertising`, `productivity`, `accountingAndFinance`, `contentManagement`, `contentSharing`, `businessManagement`, `communications`, `dataAnalytics`, `businessIntelligence`, `webemail`, `codeHosting`, `webAnalytics`, `socialNetwork`, `crm`, `forums`, `humanResourceManagement`, `transportationAndTravel`, `productDesign`, `sales`, `cloudComputingPlatform`, `projectManagement`, `personalInstantMessaging`, `developmentTools`, `itServices`, `supplyChainAndLogistics`, `propertyManagement`, `customerSupport`, `internetOfThings`, `vendorManagementSystems`, `websiteMonitoring`, `generativeAi`, `unknown`, `unknownFutureValue`.|
|displayName|String|The app name.|
|domains|String collection|The domain.|
|downloadNetworkTrafficInBytes|Int64|The download traffic size.|
|id|String|The SaaSDB ID of the app. Inherited from [entity](../resources/entity.md).|
|ipAddressCount|Int64|The IP address.|
|lastSeenDateTime|DateTimeOffset|The last seen date of the discovered app. The Timestamp represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|riskScore|Int64|The risk score of the app.|
|tags|String collection|The tags applied to an app. Possible values include `Unsanctioned`, `Sanctioned`, `Monitored`, or a custom value.|
|transactionCount|Int64|The app transaction count.|
|uploadNetworkTrafficInBytes|Int64|The app upload traffic size, in bytes.|
|userCount|Int64|The count of users who use the app.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|appInfo|[microsoft.graph.security.discoveredCloudAppInfo](../resources/security-discoveredcloudappinfo.md)|The application information.|
|ipAddresses|[microsoft.graph.security.discoveredCloudAppIPAddress](../resources/security-discoveredcloudappipaddress.md) collection|The list of IP addresses accessed by the app.|
|users|[microsoft.graph.security.discoveredCloudAppUser](../resources/security-discoveredcloudappuser.md) collection|The list of users who access the app.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.discoveredCloudAppDetail",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.discoveredCloudAppDetail",
  "category": "String",
  "displayName": "String",
  "domains": ["String"],
  "downloadNetworkTrafficInBytes": "Int64",
  "id": "String (identifier)",
  "ipAddressCount": "Int64",
  "lastSeenDateTime": "String (timestamp)",
  "riskScore": "Int64",
  "tags": ["String"],
  "transactionCount": "Int64",
  "uploadNetworkTrafficInBytes": "Int64",
  "userCount": "Int64"
}
```
