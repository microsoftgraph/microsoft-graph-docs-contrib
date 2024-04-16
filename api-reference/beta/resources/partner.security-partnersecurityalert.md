---
title: "partnerSecurityAlert resource type"
description: "Represents a security vulnerability alert of a CSP partner's customer."
author: "manusidd"
ms.localizationpriority: medium
ms.subservice: "partner-customer-administration"
doc_type: resourcePageType
---

# partnerSecurityAlert resource type

Namespace: microsoft.graph.partner.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This resource represents a security alert or a vulnerability of a CSP partner's customer that the partner has to be made aware of for further action.


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/partner.security-partnersecurityalert-list.md)|[microsoft.graph.partner.security.partnerSecurityAlert](../resources/partner.security-partnersecurityalert.md) collection|Get a list of the [microsoft.graph.partner.security.partnerSecurityAlert](../resources/partner.security-partnersecurityalert.md) objects and their properties.|
|[Get](../api/partner.security-partnersecurityalert-get.md)|[microsoft.graph.partner.security.partnerSecurityAlert](../resources/partner.security-partnersecurityalert.md)|Read the properties of a [microsoft.graph.partner.security.partnerSecurityAlert](../resources/partner.security-partnersecurityalert.md) object.|
|[Update](../api/partner.security-partnersecurityalert-update.md)|[microsoft.graph.partner.security.partnerSecurityAlert](../resources/partner.security-partnersecurityalert.md)|Update the properties of a [microsoft.graph.partner.security.partnerSecurityAlert](../resources/partner.security-partnersecurityalert.md) object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|activityLogs|[microsoft.graph.partner.security.activityLog](../resources/partner.security-activitylog.md) collection|Represents the activity by a partner and contains details of the state transitions, by whom and when.|
|additionalDetails|[microsoft.graph.partner.security.additionalDataDictionary](../resources/partner.security-additionaldatadictionary.md)|A bag of name-value pairs value pairs which contain additional details about the alert.|
|affectedResources|[microsoft.graph.partner.security.affectedResource](../resources/partner.security-affectedresource.md) collection|Contains details of the resources affected by the security alert.|
|alertType|String|The type of vulnerability impacting the customer due to this alert.|
|catalogOfferId|String|The modern offer category ID of the subscription.|
|confidenceLevel|microsoft.graph.partner.security.securityAlertConfidence|Specifies the confidence in the alert. The possible values are: `low`, `medium`, `high`, `unknownFutureValue`.|
|customerTenantId|String|The impacted customer tenant associated with the alert.|
|description|String|String value describing each alert.|
|detectedDateTime|DateTimeOffset|Time when the alert was detected or created.|
|displayName|String|Brief identifying string value describing the alert.|
|firstObservedDateTime|DateTimeOffset|Time when the alert was detected or created.  subscription.|
|id|String|Unique identifier to represent the alert. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|isTest|Boolean|An alert is test alert. It's true or false.|
|lastObservedDateTime|DateTimeOffset|The latest activity associated with the alert.|
|resolvedBy|String|The upn of the partner user who resolved the alert.|
|resolvedOnDateTime|DateTimeOffset|Time when the alert was resolved.|
|resolvedReason|microsoft.graph.partner.security.securityAlertResolvedReason|The reason provided by the partner for addressing the alert. The possible values are: `legitimate`, `ignore`, `fraud`, `unknownFutureValue`.|
|severity|microsoft.graph.partner.security.securityAlertSeverity|Indicates the possible impact on assets. The higher the severity the bigger the impact. Typically higher severity items require the most immediate attention. The possible values are: `informational`, `high`, `medium`, `low`, `unknownFutureValue`.|
|status|microsoft.graph.partner.security.securityAlertStatus|The status of the alert. The possible values are: `active`, `resolved`, `investigating`, `unknownFutureValue`.|
|subscriptionId|String|The subscription associated with the alert for the customer.|
|valueAddedResellerTenantId|String|The  value added reseller tenant associated with the partner tenant and customer tenant.|

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
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "alertType": "String",
  "status": "String",
  "severity": "String",
  "confidenceLevel": "String",
  "customerTenantId": "String",
  "subscriptionId": "String",
  "valueAddedResellerTenantId": "String",
  "catalogOfferId": "String",
  "detectedDateTime": "String (timestamp)",
  "firstObservedDateTime": "String (timestamp)",
  "lastObservedDateTime": "String (timestamp)",
  "resolvedReason": "String",
  "resolvedOnDateTime": "String (timestamp)",
  "resolvedBy": "String",
  "isTest": "Boolean",
  "affectedResources": [
    {
      "@odata.type": "microsoft.graph.partner.security.affectedResource"
    }
  ],
  "activityLogs": [
    {
      "@odata.type": "microsoft.graph.partner.security.activityLog"
    }
  ],
  "additionalDetails": {
    "@odata.type": "microsoft.graph.partner.security.additionalDataDictionary"
  }
}
```

