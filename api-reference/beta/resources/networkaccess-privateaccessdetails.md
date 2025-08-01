---
title: "privateAccessDetails resource type"
description: "Represents details about private access in a network transaction."
author: "miritsadon"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# privateAccessDetails resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details about private access in a network transaction or connection.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessType|microsoft.graph.networkaccess.accessType|Type of accessed application. Access type options: QuickAccess, PrivateAccess.|
|appSegmentId|String|The unique identifier for Application segment ID from Azure AD.|
|connectionStatus|microsoft.graph.networkaccess.connectionStatus|Status of a connection. Status options: Open, Active, Closed.|
|connectorId|String|Private access connector ID.|
|connectorIp|String|Private access connector IP address.|
|connectorName|String|Private access connector name.|
|processingRegion|String|Region where the request was processed by the backend service.|
|thirdPartyTokenDetails|[microsoft.graph.networkaccess.thirdPartyTokenDetails](../resources/networkaccess-thirdpartytokendetails.md)|Details about third-party tokens used in the transaction.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.privateAccessDetails",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.privateAccessDetails",
  "connectorId": "String",
  "connectorName": "String",
  "connectorIp": "String",
  "connectionStatus": "String",
  "accessType": "String",
  "processingRegion": "String",
  "thirdPartyTokenDetails": {
    "@odata.type": "microsoft.graph.networkaccess.thirdPartyTokenDetails"
  },
  "appSegmentId": "String"
}
```