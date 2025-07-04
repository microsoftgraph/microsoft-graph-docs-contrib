---
title: "alert resource type (in Global Secure Access)"
description: "Represents an alert detected by Global Secure Access. Each entity is a separate instance of an alert."
author: "miritsadon"
ms.date: 04/07/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# alert resource type (in Global Secure Access)

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an alert detected by Global Secure Access. Each entity is a separate instance of an alert.

Inherits from [entity](../resources/entity.md)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/networkaccess-networkaccessroot-list-alerts.md)|[microsoft.graph.networkaccess.alert](../resources/networkaccess-alert.md) collection|Get a list of the alert objects and their properties.|
|[Get alert severity summaries](../api/networkaccess-alert-getalertseveritysummaries.md)|[microsoft.graph.networkaccess.alertSeveritySummary](../resources/networkaccess-alertseveritysummary.md) collection|Returns a collection containing count tables for all alert severity types in global secure access.|
|[Get alert frequencies](../api/networkaccess-alert-getalertfrequencies.md)|[microsoft.graph.networkaccess.alertFrequencyPoint](../resources/networkaccess-alertfrequencypoint.md) collection|Returns a collection containing count tables for all alert severity type per day in global secure access.|
|[Get alert summaries](../api/networkaccess-alert-getalertsummaries.md)|[microsoft.graph.networkaccess.alertSummary](../resources/networkaccess-alertsummary.md) collection|Returns a collection containing count tables for all alert types and their severities in global secure access.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actions|[microsoft.graph.networkaccess.alertAction](../resources/networkaccess-alertaction.md) collection|List of possible action items to take based on the alert (if applicable).|
|alertType|microsoft.graph.networkaccess.alertType|The type of the alert out of a closed list. Required. The possible values are: `unhealthyRemoteNetworks`, `unhealthyConnectors`, `deviceTokenInconsistency`, `crossTenantAnomaly`, `suspiciousProcess`, `threatIntelligenceTransactions`, `unknownFutureValue`, `webContentBlocked`, `malware`, `patientZero`, `dlp`, `fallback`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `webContentBlocked` , `malware` , `patientZero` , `dlp` , `fallback`.|
|categories|microsoft.graph.networkaccess.intentCategory collection|Categories associated with the alert.|
|componentName|String|Component name related to the alert.|
|creationDateTime|DateTimeOffset|The time the alert was created in the system. Required.|
|description|String|Text description explaining the alert.|
|detectionTechnology|String|Alert detection technology.|
|displayName|String|The display name of the alert. Required.|
|extendedProperties|[microsoft.graph.networkaccess.extendedProperties](../resources/networkaccess-extendedproperties.md)|Extended properties for the alert.|
|firstActivityDateTime|DateTimeOffset|The time of the first activity related to the alert.|
|id|String|Generated identifier for the alert. Required. Inherits from [entity](../resources/entity.md)|
|isPreview|Boolean|Indicates if the alert is a preview.|
|lastActivityDateTime|DateTimeOffset|The time of the last activity related to the alert.|
|productName|String|The name of the product that raised the alert.|
|relatedResources|[microsoft.graph.networkaccess.relatedResource](../resources/networkaccess-relatedresource.md) collection|List of related resources to the alert (if applicable).|
|severity|microsoft.graph.networkaccess.alertSeverity|The severity of the alert as it is reported by the provider. Required. The possible values are: `informational`, `low`, `medium`, `high`, `unknownFutureValue`.|
|subTechniques|String collection|Sub-techniques associated with the alert.|
|techniques|String collection|Techniques associated with the alert.|
|vendorName|String|The name of the vendor that raised the alert.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|policy|[microsoft.graph.networkaccess.filteringPolicy](../resources/networkaccess-filteringpolicy.md)|The filtering policy associated with the alert. This relationship allows you to retrieve or manage the filtering policy that triggered or is related to the alert instance.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.alert",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.alert",
  "id": "6fb54016-77df-4d32-9946-7603af8433e1",
  "alertType": "malware",
  "creationDateTime": "2024-04-01T12:00:00Z",
  "description": "Malware detected on remote network.",
  "actions": [
    {
      "@odata.type": "microsoft.graph.networkaccess.alertAction",
      "actionType": "block",
      "timestamp": "2024-04-01T12:00:00Z",
      "status": "completed"
    }
  ],
  "relatedResources": [
    {
      "@odata.type": "microsoft.graph.networkaccess.relatedRemoteNetwork",
      "id": "remote-network-123",
      "name": "RemoteNetwork1",
      "ipAddress": "192.168.1.1"
    }
  ],
  "vendorName": "Contoso Security",
  "detectionTechnology": "signature-based",
  "severity": "high",
  "displayName": "Malware Alert",
  "productName": "Contoso Defender",
  "componentName": "Network Scanner",
  "categories": [
    "threat"
  ],
  "techniques": [
    "malwareDelivery"
  ],
  "subTechniques": [
    "emailAttachment"
  ],
  "firstActivityDateTime": "2024-04-01T12:05:00Z",
  "lastActivityDateTime": "2024-04-01T13:00:00Z",
  "isPreview": false,
  "extendedProperties": {
    "@odata.type": "microsoft.graph.networkaccess.extendedProperties",
    "property1": "value1",
    "property2": 42,
    "property3": true
  }
}
```
