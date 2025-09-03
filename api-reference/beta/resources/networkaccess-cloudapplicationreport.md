---
title: "cloudApplicationReport resource type"
description: "Represents a Global Secure Access report with network traffic data and metadata of a catalog application. "
author: "miritsadon"
ms.date: 08/10/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# cloudApplicationReport resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Global Secure Access report with network traffic data and metadata of a catalog application. This information is returned by the [getCloudApplicationReport](../api/networkaccess-reports-getcloudapplicationreport.md) API.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|category|microsoft.graph.networkaccess.cloudApplicationCategory|The category of the SaaS application. The possible values are: `hostingServices`, `itServices`, `accountingAndFinance`, `businessManagement`, `productivity`, `eCommerce`, `education`, `marketing`, `humanResourceManagement`, `health`, `security`, `generativeAi`, `newsAndEntertainment`, `operationsManagement`, `contentManagement`, `developmentTools`, `collaboration`, `crm`, `communications`, `dataAnalytics`, `advertising`, `supplyChainAndLogistics`, `projectManagement`, `transportationAndTravel`, `cloudComputingPlatform`, `businessIntelligence`, `cloudStorage`, `propertyManagement`, `contentSharing`, `customerSupport`, `sales`, `productDesign`, `socialNetwork`, `onlineMeetings`, `webmail`, `internetOfThings`, `forums`, `webAnalytics`, `websiteMonitoring`, `vendorManagementSystem`, `personalInstantMessaging`, `codeHosting`, `unknownFutureValue`.|
|cloudApplicationCatalogId|String|The ID of the application in the SaaS application catalog.|
|complianceScore|Int32|The compliance score of the application.|
|deviceCount|Int32|Number of devices under this application.|
|firstAccessDateTime|DateTimeOffset|Timestamp of the first access to the application.|
|generalScore|Int32|The general score of the application.|
|lastAccessDateTime|DateTimeOffset|Timestamp of the last access to the application.|
|legalScore|Int32|The legal score of the application.|
|name|String|The name of the application (e.g., ChatGPT, Salesforce, Bing).|
|riskScore|Int32|The risk score of the application.|
|securityScore|Int32|The security score of the application.|
|totalBytesReceived|Int64|Total bytes received from the application.|
|totalBytesSent|Int64|Total bytes sent to the application.|
|trafficType|microsoft.graph.networkaccess.trafficType|The type of traffic. The possible values are: `internet`, `private`, `microsoft365`, `all`, `unknownFutureValue`.|
|transactionCount|Int32|Number of transactions under this application.|
|userCount|Int32|Number of users under this application.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.cloudApplicationReport"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.cloudApplicationReport",
  "trafficType": "String",
  "firstAccessDateTime": "String (timestamp)",
  "lastAccessDateTime": "String (timestamp)",
  "transactionCount": "Integer",
  "userCount": "Integer",
  "deviceCount": "Integer",
  "totalBytesSent": "Integer",
  "totalBytesReceived": "Integer",
  "cloudApplicationCatalogId": "String",
  "name": "String",
  "generalScore": "Integer",
  "riskScore": "Integer",
  "complianceScore": "Integer",
  "legalScore": "Integer",
  "category": "String",
  "securityScore": "Integer"
}
```
