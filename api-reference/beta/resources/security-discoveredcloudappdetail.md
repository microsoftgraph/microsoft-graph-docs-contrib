---
title: "discoveredCloudAppDetail resource type"
description: "Represents the discovered cloud apps."
author: "nechamam"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# discoveredCloudAppDetail resource type

Namespace: microsoft.graph.security

Represents the discovered cloud apps. 

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/security-discoveredcloudappdetail-get.md)|[microsoft.graph.security.discoveredCloudAppDetail](../resources/security-discoveredcloudappdetail.md)|Read the properties and relationships of a discovered cloud app.|
|[Get discovered app info](../api/security-discoveredcloudappinfo-get.md)|[microsoft.graph.security.discoveredCloudAppInfo](../resources/security-discoveredcloudappinfo.md) |Get the details of the security, legal, and compliance risk attributes of the discovered cloud apps.|
|[List IP addresses](../api/security-discoveredcloudappdetail-list-ipaddresses.md)|[microsoft.graph.security.discoveredCloudAppIPAddress](../resources/security-discoveredcloudappipaddress.md) collection|Get the list of IP addresses associated with a discovered cloud app.|
|[List users](../api/security-discoveredcloudappdetail-list-users.md)|[microsoft.graph.security.discoveredCloudAppUser](../resources/security-discoveredcloudappuser.md) collection|Get a list of users who accessed a discovered cloud app.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|category|microsoft.graph.security.appCategory|The discovered app's category. Possible values include: `security`, `collaboration`, `hostingServices`, `onlineMeetings`, `newsAndEntertainment`, `eCommerce`, `education`, `cloudStorage`, `marketing`, `operationsManagement`, `health`, `advertising`, `productivity`, `accountingAndFinance`, `contentManagement`, `contentSharing`, `businessManagement`, `communications`, `dataAnalytics`, `businessIntelligence`, `webemail`, `codeHosting`, `webAnalytics`, `socialNetwork`, `crm`, `forums`, `humanResourceManagement`, `transportationAndTravel`, `productDesign`, `sales`, `cloudComputingPlatform`, `projectManagement`, `personalInstantMessaging`, `developmentTools`, `itServices`, `supplyChainAndLogistics`, `propertyManagement`, `customerSupport`, `internetOfThings`, `vendorManagementSystems`, `websiteMonitoring`, `generativeAi`, `unknown`, `unknownFutureValue`.|
|displayName|String|The app name.|
|domains|String collection|The domain.|
|downloadNetworkTrafficInBytes|Int64|The download traffic size.|
|id|String|The app's SaaSDB ID. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|ipAddressCount|Int64|The IP address.|
|lastSeenDateTime|DateTimeOffset|The last seen date of the discovered app.|
|riskScore|Int64|The app's risk score.|
|tags|String collection|The tags applied to an app. Possible values include `Unsanctioned`,`Sanctioned`,`Monitored`, or a custom values.|
|transactionCount|Int64|The app transaction count.|
|uploadNetworkTrafficInBytes|Int64|The app upload traffic size, in bytes.|
|userCount|Int64|The count of users using the app.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|appInfo|[microsoft.graph.security.discoveredCloudAppInfo](../resources/security-discoveredcloudappinfo.md)|The application information.|
|ipAddresses|[microsoft.graph.security.discoveredCloudAppIPAddress](../resources/security-discoveredcloudappipaddress.md) collection|The list of IP addresses accessed by the app.|
|users|[microsoft.graph.security.discoveredCloudAppUser](../resources/security-discoveredcloudappuser.md) collection|The list of users accessing the app.|

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
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.discoveredCloudAppDetail",
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
      "category": "health"
    }
  ]
}
```