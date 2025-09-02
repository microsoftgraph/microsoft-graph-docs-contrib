---
title: "enterpriseApplicationReport resource type"
description: "Represents a Global Secure Access report with network traffic data and metadata for an enterprise application."
author: "miritsadon"
ms.date: 08/10/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# enterpriseApplicationReport resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Global Secure Access report with network traffic data and metadata for an enterprise application. This information is returned by the [getEnterpriseApplicationReport](../api/networkaccess-reports-getenterpriseapplicationreport.md) API.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessType|microsoft.graph.networkaccess.accessType|The type of accessed application. The possible values are: `quickAccess`, `privateAccess`, `unknownFutureValue`, `appAccess`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `appAccess`.|
|applicationId|String|The unique identifier for the enterprise application (`appId`) in Microsoft Entra ID.|
|deviceCount|Int32|Number of devices that accessed this application.|
|firstAccessDateTime|DateTimeOffset|Timestamp of the first access to the application.|
|lastAccessDateTime|DateTimeOffset|Timestamp of the last access to the application.|
|totalBytesReceived|Int64|Total bytes received from the application.|
|totalBytesSent|Int64|Total bytes sent to the application.|
|trafficType|microsoft.graph.networkaccess.trafficType|The type of traffic. The possible values are: `internet`, `private`, `microsoft365`, `all`, `unknownFutureValue`.|
|transactionCount|Int32|Number of transactions to this application.|
|userCount|Int32|Number of users that accessed this application.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.enterpriseApplicationReport"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.enterpriseApplicationReport",
  "trafficType": "String",
  "applicationId": "String",
  "firstAccessDateTime": "String (timestamp)",
  "lastAccessDateTime": "String (timestamp)",
  "transactionCount": "Integer",
  "userCount": "Integer",
  "deviceCount": "Integer",
  "totalBytesSent": "Integer",
  "totalBytesReceived": "Integer",
  "accessType": "String"
}
```
