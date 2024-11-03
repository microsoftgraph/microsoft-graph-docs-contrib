---
title: "endpointDiscoveredCloudAppDetail resource type"
description: "Represents the resources available for endpoints accessing discovered apps."
author: "nechamam"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# endpointDiscoveredCloudAppDetail resource type

Namespace: microsoft.graph.security

Represents the resources available for endpoints accessing discovered apps.

Inherits from [microsoft.graph.security.discoveredCloudAppDetail](../resources/security-discoveredcloudappdetail.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/security-endpointdiscoveredcloudappdetail-get.md)|[microsoft.graph.security.endpointDiscoveredCloudAppDetail](../resources/security-endpointdiscoveredcloudappdetail.md)|Get the properties and relationships of a endpoint accessing discovered apps.|
|[Get appInfo](../api/security-discoveredcloudappinfo-get.md)|[microsoft.graph.security.discoveredCloudAppInfo](../resources/security-discoveredcloudappinfo.md)|Get the discoveredCloudAppInfo resource from the appInfo navigation property.|
|[List devices](../api/security-endpointdiscoveredcloudappdetail-list-devices.md)|[microsoft.graph.security.discoveredCloudAppDevice](../resources/security-discoveredcloudappdevice.md) collection|Get the discoveredCloudAppDevice resources from the devices navigation property.|
|[List ipAddresses](../api/security-discoveredcloudappdetail-list-ipaddresses.md)|[microsoft.graph.security.discoveredCloudAppIPAddress](../resources/security-discoveredcloudappipaddress.md) collection|Get the discoveredCloudAppIPAddress resources from the ipAddresses navigation property.|
|[List users](../api/security-discoveredcloudappdetail-list-users.md)|[microsoft.graph.security.discoveredCloudAppUser](../resources/security-discoveredcloudappuser.md) collection|Get the discoveredCloudAppUser resources from the users navigation property.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|category|microsoft.graph.security.appCategory|The list of category of discovered apps.The possible values are: `security`, `collaboration`, `hostingServices`, `onlineMeetings`, `newsAndEntertainment`, `eCommerce`, `education`, `cloudStorage`, `marketing`, `operationsManagement`, `health`, `advertising`, `productivity`, `accountingAndFinance`, `contentManagement`, `contentSharing`, `businessManagement`, `communications`, `dataAnalytics`, `businessIntelligence`, `webemail`, `codeHosting`, `webAnalytics`, `socialNetwork`, `crm`, `forums`, `humanResourceManagement`, `transportationAndTravel`, `productDesign`, `sales`, `cloudComputingPlatform`, `projectManagement`, `personalInstantMessaging`, `developmentTools`, `itServices`, `supplyChainAndLogistics`, `propertyManagement`, `customerSupport`, `internetOfThings`, `vendorManagementSystems`, `websiteMonitoring`, `generativeAi`, `unknown`, `unknownFutureValue`.|
|deviceCount|Int64|The number of devices accessing the discovered app.|
|displayName|String|The name of the discovered cloud app.|
|domains|String collection|The list of domains identified as belonging to the discovered app.|
|downloadNetworkTrafficInBytes|Int64|The amount of download traffic from the app.|
|id|String|The ID of the discovered app.|
|ipAddressCount|Int64|The count of IP addresses that accessed the discovered app.|
|lastSeenDateTime|DateTimeOffset|The date and time that the app was last seen.|
|riskScore|Int64|The risk score of the discovered app.|
|tags|String collection|A list of tags applied to a discovered app..|
|transactionCount|Int64|The total transanctions on the discovered app.|
|uploadNetworkTrafficInBytes|Int64|The upload traffic on the discovered app.|
|userCount|Int64|The count of users accessing the discovered app.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|appInfo|[microsoft.graph.security.discoveredCloudAppInfo](../resources/security-discoveredcloudappinfo.md)|Represents the discovered app details.|
|devices|[microsoft.graph.security.discoveredCloudAppDevice](../resources/security-discoveredcloudappdevice.md) collection|Represents the devices accessing discovered apps.|
|ipAddresses|[microsoft.graph.security.discoveredCloudAppIPAddress](../resources/security-discoveredcloudappipaddress.md) collection|Represents the IPAddressses that access discovered apps.|
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
  "id": "12345",
  "displayName": "Example App",
  "tags": [
    "Sanctioned"
  ],
  "riskScore": 8,
  "uploadNetworkTrafficInBytes": 1024,
  "downloadNetworkTrafficInBytes": 2048,
  "transactionCount": 20,
  "ipAddressCount": 5,
  "userCount": 3,
  "lastSeenDateTime": "2024-06-13T00:00:00Z",
  "domains": [
    "example.com"
  ],
  "category": "health",
  "deviceCount": 234
}
```