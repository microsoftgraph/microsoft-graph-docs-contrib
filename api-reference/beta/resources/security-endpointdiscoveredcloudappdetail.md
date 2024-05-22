---
title: "endpointDiscoveredCloudAppDetail resource type"
description: "**This is the list of endpoints accessed by discovered apps**"
author: "nechamam"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# endpointDiscoveredCloudAppDetail resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**Please read disclaimer**


Inherits from [microsoft.graph.security.discoveredCloudAppDetail](../resources/security-discoveredcloudappdetail.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-endpointdiscoveredcloudappdetail-list.md)|[microsoft.graph.security.endpointDiscoveredCloudAppDetail](../resources/security-endpointdiscoveredcloudappdetail.md) collection|Get a list of the [microsoft.graph.security.endpointDiscoveredCloudAppDetail](../resources/security-endpointdiscoveredcloudappdetail.md) objects and their properties.|
|[Get](../api/security-endpointdiscoveredcloudappdetail-get.md)|[microsoft.graph.security.endpointDiscoveredCloudAppDetail](../resources/security-endpointdiscoveredcloudappdetail.md)|Read the properties and relationships of a [microsoft.graph.security.endpointDiscoveredCloudAppDetail](../resources/security-endpointdiscoveredcloudappdetail.md) object.|
|[List discoveredCloudAppInfo](../api/security-discoveredcloudappdetail-list-appinfo.md)|[microsoft.graph.security.discoveredCloudAppInfo](../resources/security-discoveredcloudappinfo.md) collection|Get the discoveredCloudAppInfo resources from the appInfo navigation property.|
|[List devices](../api/security-endpointdiscoveredcloudappdetail-list-devices.md)|[microsoft.graph.security.discoveredCloudAppDevice](../resources/security-discoveredcloudappdevice.md) collection|Get the discoveredCloudAppDevice resources from the devices navigation property.|
|[List ipAddresses](../api/security-discoveredcloudappdetail-list-ipaddresses.md)|[microsoft.graph.security.discoveredCloudAppIPAddress](../resources/security-discoveredcloudappipaddress.md) collection|Get the discoveredCloudAppIPAddress resources from the ipAddresses navigation property.|
|[List users](../api/security-discoveredcloudappdetail-list-users.md)|[microsoft.graph.security.discoveredCloudAppUser](../resources/security-discoveredcloudappuser.md) collection|Get the discoveredCloudAppUser resources from the users navigation property.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|category|microsoft.graph.security.appCategory|**These are the list of category of discovered apps** Inherited from [microsoft.graph.security.discoveredCloudAppDetail](../resources/security-discoveredcloudappdetail.md).The possible values are: `security`, `collaboration`, `hostingServices`, `onlineMeetings`, `newsAndEntertainment`, `eCommerce`, `education`, `cloudStorage`, `marketing`, `operationsManagement`, `health`, `advertising`, `productivity`, `accountingAndFinance`, `contentManagement`, `contentSharing`, `businessManagement`, `communications`, `dataAnalytics`, `businessIntelligence`, `webemail`, `codeHosting`, `webAnalytics`, `socialNetwork`, `crm`, `forums`, `humanResourceManagement`, `transportationAndTravel`, `productDesign`, `sales`, `cloudComputingPlatform`, `projectManagement`, `personalInstantMessaging`, `developmentTools`, `itServices`, `supplyChainAndLogistics`, `propertyManagement`, `customerSupport`, `internetOfThings`, `vendorManagementSystems`, `websiteMonitoring`, `generativeAi`, `unknown`, `unknownFutureValue`.|
|deviceCount|Int64|**This is the number of devices accessing discovered apps**|
|displayName|String|**This is the device name** Inherited from [microsoft.graph.security.discoveredCloudAppDetail](../resources/security-discoveredcloudappdetail.md).|
|domains|String collection|**This is the list of domains accessing discovered apps** Inherited from [microsoft.graph.security.discoveredCloudAppDetail](../resources/security-discoveredcloudappdetail.md).|
|downloadNetworkTrafficInBytes|Int64|**This is the amount of download traffic from the devices** Inherited from [microsoft.graph.security.discoveredCloudAppDetail](../resources/security-discoveredcloudappdetail.md).|
|id|String|**This is the ID of the discovered app** Inherited from [microsoft.graph.entity](../resources/entity.md).|
|ipAddressCount|Int64|**This is the IpAddress** Inherited from [microsoft.graph.security.discoveredCloudAppDetail](../resources/security-discoveredcloudappdetail.md).|
|lastSeenDateTime|DateTimeOffset|**This is the App last seen date & time** Inherited from [microsoft.graph.security.discoveredCloudAppDetail](../resources/security-discoveredcloudappdetail.md).|
|riskScore|Int64|**This is the riskscore of the discovered app** Inherited from [microsoft.graph.security.discoveredCloudAppDetail](../resources/security-discoveredcloudappdetail.md).|
|tags|String collection|**This is the discovered app tag** Inherited from [microsoft.graph.security.discoveredCloudAppDetail](../resources/security-discoveredcloudappdetail.md).|
|transactionCount|Int64|**This is the total transanctions on discovered app** Inherited from [microsoft.graph.security.discoveredCloudAppDetail](../resources/security-discoveredcloudappdetail.md).|
|uploadNetworkTrafficInBytes|Int64|**This is the upload traffic on discovered app** Inherited from [microsoft.graph.security.discoveredCloudAppDetail](../resources/security-discoveredcloudappdetail.md).|
|userCount|Int64|**This is the count of users accessing discovered app** Inherited from [microsoft.graph.security.discoveredCloudAppDetail](../resources/security-discoveredcloudappdetail.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|appInfo|[discoveredCloudAppInfo](../resources/security-discoveredcloudappinfo.md)|**This is the available relationships available** Inherited from [microsoft.graph.security.discoveredCloudAppDetail](../resources/security-discoveredcloudappdetail.md)|
|devices|[microsoft.graph.security.discoveredCloudAppDevice](../resources/security-discoveredcloudappdevice.md) collection|**Represents the devices accessing discovered apps**|
|ipAddresses|[microsoft.graph.security.discoveredCloudAppIPAddress](../resources/security-discoveredcloudappipaddress.md) collection|**Represents the IPAddressses accessing discovered apps** Inherited from [microsoft.graph.security.discoveredCloudAppDetail](../resources/security-discoveredcloudappdetail.md)|
|users|[microsoft.graph.security.discoveredCloudAppUser](../resources/security-discoveredcloudappuser.md) collection|**Represents the users accessing discovered apps** Inherited from [microsoft.graph.security.discoveredCloudAppDetail](../resources/security-discoveredcloudappdetail.md)|

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

