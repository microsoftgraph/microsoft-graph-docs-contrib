---
title: "partnerSecurityAlert resource type"
description: "Represents a security alert or a vulnerability of a CSP partner's customer that the partner must be made aware of for further action."
author: "manusidd"
ms.localizationpriority: medium
ms.subservice: "partner-customer-administration"
doc_type: resourcePageType
---

# partnerSecurityAlert resource type

Namespace: microsoft.graph.partner.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a security alert or a vulnerability of a CSP partner's customer that the partner must be made aware of for further action.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/partner-security-partnersecurityalert-list-securityalerts.md)|[microsoft.graph.partner.security.partnerSecurityAlert](../resources/partner-security-partnersecurityalert.md) collection|Get a list of the [partnerSecurityAlert](../resources/partner-security-partnersecurityalert.md) objects and their properties.|
|[Get](../api/partner-security-partnersecurityalert-get.md)|[microsoft.graph.partner.security.partnerSecurityAlert](../resources/partner-security-partnersecurityalert.md)|Read the properties and relationships of a [partnerSecurityAlert](../resources/partner-security-partnersecurityalert.md) object.|
|[Update](../api/partner-security-partnersecurityalert-update.md)|[microsoft.graph.partner.security.partnerSecurityAlert](../resources/partner-security-partnersecurityalert.md)|Update the properties of a [partnerSecurityAlert](../resources/partner-security-partnersecurityalert.md) object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|activityLogs|[microsoft.graph.partner.security.activityLog](../resources/partner-security-activitylog.md) collection|Represents the activity by a partner and includes details of state transitions, who performed them, and when they occurred.|
|additionalDetails|[microsoft.graph.partner.security.additionalDataDictionary](../resources/partner-security-additionaldatadictionary.md)|A bag of name-value pairs that contain additional details about an alert.|
|affectedResources|[microsoft.graph.partner.security.affectedResource](../resources/partner-security-affectedresource.md) collection|Contains details of the resources affected by the security alert.|
|alertType|String|The type of vulnerability that impacts the customer due to this alert.|
|catalogOfferId|String|The modern offer category ID of the subscription.|
|confidenceLevel|microsoft.graph.partner.security.securityAlertConfidence|Specifies the confidence in the alert. The possible values are: `low`, `medium`, `high`, `unknownFutureValue`.|
|customerTenantId|String|The impacted customer tenant associated with the alert.|
|description|String|The description for each alert.|
|detectedDateTime|DateTimeOffset|Time when the alert was detected or created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|displayName|String|Brief identifying string value describing the alert.|
|firstObservedDateTime|DateTimeOffset|Time when the alert was detected or created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.  subscription.|
|id|String|Unique identifier to represent the alert. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|isTest|Boolean|Indicates whehter an alert is a test alert.|
|lastObservedDateTime|DateTimeOffset|The latest activity associated with the alert. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|resolvedBy|String|The UPN of the partner user who resolved the alert.|
|resolvedOnDateTime|DateTimeOffset|Time when the alert was resolved. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|resolvedReason|microsoft.graph.partner.security.securityAlertResolvedReason|The reason provided by the partner for addressing the alert. The possible values are: `legitimate`, `ignore`, `fraud`, `unknownFutureValue`.|
|severity|microsoft.graph.partner.security.securityAlertSeverity|Indicates the possible impact on assets. The higher the severity the bigger the impact. Typically higher severity items require the most immediate attention. The possible values are: `informational`, `high`, `medium`, `low`, `unknownFutureValue`.|
|status|microsoft.graph.partner.security.securityAlertStatus|The status of the alert. The possible values are: `active`, `resolved`, `investigating`, `unknownFutureValue`.|
|subscriptionId|String|The subscription associated with the alert for the customer.|
|valueAddedResellerTenantId|String|The value-added reseller tenant associated with the partner tenant and customer tenant.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.partner.security.partnerSecurityAlert",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.partner.security.partnerSecurityAlert",
  "activityLogs": [{"@odata.type": "microsoft.graph.partner.security.activityLog"}],
  "additionalDetails": {"@odata.type": "microsoft.graph.partner.security.additionalDataDictionary"},
  "affectedResources": [{"@odata.type": "microsoft.graph.partner.security.affectedResource"}],
  "alertType": "String",
  "catalogOfferId": "String",
  "confidenceLevel": "String",
  "customerTenantId": "String",
  "description": "String",
  "detectedDateTime": "String (timestamp)",
  "displayName": "String",
  "firstObservedDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "isTest": "Boolean",
  "lastObservedDateTime": "String (timestamp)",
  "resolvedBy": "String",
  "resolvedOnDateTime": "String (timestamp)",
  "resolvedReason": "String",
  "severity": "String",
  "status": "String",
  "subscriptionId": "String",
  "valueAddedResellerTenantId": "String"
}
```

