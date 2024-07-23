---
title: "endpointDiscoveredCloudAppDetail resource type"
description: "Get the list of endpoints accessing discovered apps."
author: "nechamam"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# endpointDiscoveredCloudAppDetail resource type

Namespace: microsoft.graph.security

Get the list of endpoints accessing discovered apps.

Inherits from [microsoft.graph.security.discoveredCloudAppDetail](../resources/security-discoveredcloudappdetail.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-endpointdiscoveredcloudappdetail-list.md)|[microsoft.graph.security.endpointDiscoveredCloudAppDetail](../resources/security-endpointdiscoveredcloudappdetail.md) collection|Get a list of endpoints accessing discovered apps.|
|[Get](../api/security-endpointdiscoveredcloudappdetail-get.md)|[microsoft.graph.security.endpointDiscoveredCloudAppDetail](../resources/security-endpointdiscoveredcloudappdetail.md)|Get the properties and relationships of a endpoint accessing discovered apps.|
|[List discoveredCloudAppInfo](../api/security-discoveredcloudappdetail-list-appinfo.md)|[microsoft.graph.security.discoveredCloudAppInfo](../resources/security-discoveredcloudappinfo.md) collection|Get the discoveredCloudAppInfo resources from the appInfo navigation property.|
|[List devices](../api/security-endpointdiscoveredcloudappdetail-list-devices.md)|[microsoft.graph.security.discoveredCloudAppDevice](../resources/security-discoveredcloudappdevice.md) collection|Get the discoveredCloudAppDevice resources from the devices navigation property.|
|[List ipAddresses](../api/security-discoveredcloudappdetail-list-ipaddresses.md)|[microsoft.graph.security.discoveredCloudAppIPAddress](../resources/security-discoveredcloudappipaddress.md) collection|Get the discoveredCloudAppIPAddress resources from the ipAddresses navigation property.|
|[List users](../api/security-discoveredcloudappdetail-list-users.md)|[microsoft.graph.security.discoveredCloudAppUser](../resources/security-discoveredcloudappuser.md) collection|Get the discoveredCloudAppUser resources from the users navigation property.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|category|microsoft.graph.security.appCategory|The list of category of discovered apps.The possible values are: `security`, `collaboration`, `hostingServices`, `onlineMeetings`, `newsAndEntertainment`, `eCommerce`, `education`, `cloudStorage`, `marketing`, `operationsManagement`, `health`, `advertising`, `productivity`, `accountingAndFinance`, `contentManagement`, `contentSharing`, `businessManagement`, `communications`, `dataAnalytics`, `businessIntelligence`, `webemail`, `codeHosting`, `webAnalytics`, `socialNetwork`, `crm`, `forums`, `humanResourceManagement`, `transportationAndTravel`, `productDesign`, `sales`, `cloudComputingPlatform`, `projectManagement`, `personalInstantMessaging`, `developmentTools`, `itServices`, `supplyChainAndLogistics`, `propertyManagement`, `customerSupport`, `internetOfThings`, `vendorManagementSystems`, `websiteMonitoring`, `generativeAi`, `unknown`, `unknownFutureValue`.|
|deviceCount|Int64|The number of devices accessing discovered apps.|
|displayName|String|The device name.|
|domains|String collection|The list of domains accessing discovered apps.|
|downloadNetworkTrafficInBytes|Int64|The amount of download traffic from the devices.|
|id|String|The ID of the discovered app.|
|ipAddressCount|Int64|The IpAddress.|
|lastSeenDateTime|DateTimeOffset|The App last seen date & time.|
|riskScore|Int64|The riskscore of the discovered app.|
|tags|String collection|The discovered app tag.|
|transactionCount|Int64|The total transanctions on discovered app.|
|uploadNetworkTrafficInBytes|Int64|The upload traffic on discovered app.|
|userCount|Int64|The count of users accessing discovered app.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|appInfo|[microsoft.graph.security.discoveredCloudAppInfo](../resources/security-discoveredcloudappinfo.md)|Represents the discovered app details.|
|devices|[microsoft.graph.security.discoveredCloudAppDevice](../resources/security-discoveredcloudappdevice.md) collection|Represents the devices accessing discovered apps.|
|ipAddresses|[microsoft.graph.security.discoveredCloudAppIPAddress](../resources/security-discoveredcloudappipaddress.md) collection|Represents the IPAddressses accessing discovered apps.|
|users|[microsoft.graph.security.discoveredCloudAppUser](../resources/security-discoveredcloudappuser.md) collection|Represents the users accessing discovered apps.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.endpointDiscoveredCloudAppDetail",
  "baseType": "microsoft.graph.security.discoveredCloudAppDetail",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.endpointDiscoveredCloudAppDetail",
  "id": "String (identifier)",
  "displayName": "String",
  "tags": [
    "String"
  ],
  "riskScore": "Integer",
  "uploadNetworkTrafficInBytes": "Integer",
  "downloadNetworkTrafficInBytes": "Integer",
  "transactionCount": "Integer",
  "ipAddressCount": "Integer",
  "userCount": "Integer",
  "lastSeenDateTime": "String (timestamp)",
  "domains": [
    "String"
  ],
  "category": "String",
  "deviceCount": "Integer"
}
```

