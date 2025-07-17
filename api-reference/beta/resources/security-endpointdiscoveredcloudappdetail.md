---
title: "endpointDiscoveredCloudAppDetail resource type"
description: "Represents the resources available for endpoints that access discovered apps."
author: "nechamam"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 11/15/2024
---

# endpointDiscoveredCloudAppDetail resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the resources available for endpoints that access discovered apps.

Inherits from [discoveredCloudAppDetail](../resources/security-discoveredcloudappdetail.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/security-endpointdiscoveredcloudappdetail-get.md)|[microsoft.graph.security.endpointDiscoveredCloudAppDetail](../resources/security-endpointdiscoveredcloudappdetail.md)|Get the details of all [the discovered apps](../resources/security-endpointdiscoveredcloudappdetail.md) for a specific stream or endpoint.|
|[List devices](../api/security-endpointdiscoveredcloudappdetail-list-devices.md)|[microsoft.graph.security.discoveredCloudAppDevice](../resources/security-discoveredcloudappdevice.md) collection|Get a list of [devices](../resources/security-discoveredcloudappdevice.md) that access a discovered cloud app.|

For more API operations about discovered cloud app details, see [discoveredCloudAppDetail](../resources/security-discoveredcloudappdetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|category|microsoft.graph.security.appCategory|The list of category of discovered apps. The possible values are: `security`, `collaboration`, `hostingServices`, `onlineMeetings`, `newsAndEntertainment`, `eCommerce`, `education`, `cloudStorage`, `marketing`, `operationsManagement`, `health`, `advertising`, `productivity`, `accountingAndFinance`, `contentManagement`, `contentSharing`, `businessManagement`, `communications`, `dataAnalytics`, `businessIntelligence`, `webemail`, `codeHosting`, `webAnalytics`, `socialNetwork`, `crm`, `forums`, `humanResourceManagement`, `transportationAndTravel`, `productDesign`, `sales`, `cloudComputingPlatform`, `projectManagement`, `personalInstantMessaging`, `developmentTools`, `itServices`, `supplyChainAndLogistics`, `propertyManagement`, `customerSupport`, `internetOfThings`, `vendorManagementSystems`, `websiteMonitoring`, `generativeAi`, `unknown`, `unknownFutureValue`, `aiModelProvider`, `mcpServer`, `clientAiApp`. Use the `Prefer: include-unknown-enum-members` request header to get the following values in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `aiModelProvider`, `mcpServer`, `clientAiApp`. Inherited from [discoveredCloudAppDetail](../resources/security-discoveredcloudappdetail.md). |
|deviceCount|Int64|The number of devices that accessed the discovered app. |
|displayName|String|The name of the discovered cloud app. Inherited from [discoveredCloudAppDetail](../resources/security-discoveredcloudappdetail.md). |
|domains|String collection|The list of domains identified as belonging to the discovered app. Inherited from [discoveredCloudAppDetail](../resources/security-discoveredcloudappdetail.md). |
|downloadNetworkTrafficInBytes|Int64|The amount of download traffic from the app. Inherited from [discoveredCloudAppDetail](../resources/security-discoveredcloudappdetail.md). |
|id|String|The ID of the discovered app. Inherited from [discoveredCloudAppDetail](../resources/security-discoveredcloudappdetail.md). |
|ipAddressCount|Int64|The count of IP addresses that accessed the discovered app. Inherited from [discoveredCloudAppDetail](../resources/security-discoveredcloudappdetail.md). |
|lastSeenDateTime|DateTimeOffset|The date and time when the app was last seen. The Timestamp represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [discoveredCloudAppDetail](../resources/security-discoveredcloudappdetail.md). |
|riskScore|Int64|The risk score of the discovered app. Inherited from [discoveredCloudAppDetail](../resources/security-discoveredcloudappdetail.md). |
|tags|String collection|A list of tags applied to a discovered app. Inherited from [discoveredCloudAppDetail](../resources/security-discoveredcloudappdetail.md). |
|transactionCount|Int64|The total transanctions on the discovered app. Inherited from [discoveredCloudAppDetail](../resources/security-discoveredcloudappdetail.md). |
|uploadNetworkTrafficInBytes|Int64|The upload traffic on the discovered app. Inherited from [discoveredCloudAppDetail](../resources/security-discoveredcloudappdetail.md). |
|userCount|Int64|The count of users who access the discovered app. Inherited from [discoveredCloudAppDetail](../resources/security-discoveredcloudappdetail.md). |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|appInfo|[microsoft.graph.security.discoveredCloudAppInfo](../resources/security-discoveredcloudappinfo.md)|Represents the discovered app details. Inherited from [discoveredCloudAppDetail](../resources/security-discoveredcloudappdetail.md). |
|devices|[microsoft.graph.security.discoveredCloudAppDevice](../resources/security-discoveredcloudappdevice.md) collection|Represents the devices that access the discovered apps.|
|ipAddresses|[microsoft.graph.security.discoveredCloudAppIPAddress](../resources/security-discoveredcloudappipaddress.md) collection|Represents the IP addressses that access the discovered apps. Inherited from [discoveredCloudAppDetail](../resources/security-discoveredcloudappdetail.md). |
|users|[microsoft.graph.security.discoveredCloudAppUser](../resources/security-discoveredcloudappuser.md) collection|Represents the users who access the discovered apps. Inherited from [discoveredCloudAppDetail](../resources/security-discoveredcloudappdetail.md). |

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
  "category": "String",
  "deviceCount": "Int64",
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
