---
title: "discoveredCloudAppDetail resource type"
description: "**This is the resource type for discovered apps**"
author: "nechamam"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# discoveredCloudAppDetail resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**Please read disclaimer**


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-discoveredcloudappdetail-list.md)|[microsoft.graph.security.discoveredCloudAppDetail](../resources/security-discoveredcloudappdetail.md) collection|Get a list of the [microsoft.graph.security.discoveredCloudAppDetail](../resources/security-discoveredcloudappdetail.md) objects and their properties.|
|[Get](../api/security-discoveredcloudappdetail-get.md)|[microsoft.graph.security.discoveredCloudAppDetail](../resources/security-discoveredcloudappdetail.md)|Read the properties and relationships of a [microsoft.graph.security.discoveredCloudAppDetail](../resources/security-discoveredcloudappdetail.md) object.|
|[List discoveredCloudAppInfo](../api/security-discoveredcloudappdetail-list-appinfo.md)|[microsoft.graph.security.discoveredCloudAppInfo](../resources/security-discoveredcloudappinfo.md) collection|Get the discoveredCloudAppInfo resources from the appInfo navigation property.|
|[List ipAddresses](../api/security-discoveredcloudappdetail-list-ipaddresses.md)|[microsoft.graph.security.discoveredCloudAppIPAddress](../resources/security-discoveredcloudappipaddress.md) collection|Get the discoveredCloudAppIPAddress resources from the ipAddresses navigation property.|
|[List users](../api/security-discoveredcloudappdetail-list-users.md)|[microsoft.graph.security.discoveredCloudAppUser](../resources/security-discoveredcloudappuser.md) collection|Get the discoveredCloudAppUser resources from the users navigation property.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|category|microsoft.graph.security.appCategory|**This is the category of discovered app**.The possible values are: `security`, `collaboration`, `hostingServices`, `onlineMeetings`, `newsAndEntertainment`, `eCommerce`, `education`, `cloudStorage`, `marketing`, `operationsManagement`, `health`, `advertising`, `productivity`, `accountingAndFinance`, `contentManagement`, `contentSharing`, `businessManagement`, `communications`, `dataAnalytics`, `businessIntelligence`, `webemail`, `codeHosting`, `webAnalytics`, `socialNetwork`, `crm`, `forums`, `humanResourceManagement`, `transportationAndTravel`, `productDesign`, `sales`, `cloudComputingPlatform`, `projectManagement`, `personalInstantMessaging`, `developmentTools`, `itServices`, `supplyChainAndLogistics`, `propertyManagement`, `customerSupport`, `internetOfThings`, `vendorManagementSystems`, `websiteMonitoring`, `generativeAi`, `unknown`, `unknownFutureValue`.|
|displayName|String|**This is the app Name**|
|domains|String collection|**This is the domain**|
|downloadNetworkTrafficInBytes|Int64|**This is download traffic size**|
|id|String|**This is the SaaSDB ID of App** Inherited from [microsoft.graph.entity](../resources/entity.md).|
|ipAddressCount|Int64|**This is the IpAddress**|
|lastSeenDateTime|DateTimeOffset|**This is the lastseendate**|
|riskScore|Int64|**This is App Riskscore**|
|tags|String collection|**This is the App tag. Applicable values can be Unsanctioned or Sanctioned or Monitored or a Customtag**|
|transactionCount|Int64|**This is the App transaction count**|
|uploadNetworkTrafficInBytes|Int64|**This is the app upload traffic size in bytes**|
|userCount|Int64|**This is the count of users using app**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|appInfo|[discoveredCloudAppInfo](../resources/security-discoveredcloudappinfo.md)|**This is the Application Information**|
|ipAddresses|[microsoft.graph.security.discoveredCloudAppIPAddress](../resources/security-discoveredcloudappipaddress.md) collection|**This is the list of IpAddresses that App is accessing**|
|users|[microsoft.graph.security.discoveredCloudAppUser](../resources/security-discoveredcloudappuser.md) collection|**This is the list of users that are acccessing app**|

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
  "category": "String"
}
```

