---
title: "partnerSecurityAlert resource type"
description: "TRepresents a security vulnerability alert of a CSP partner's customer."
author: "masidd"
ms.localizationpriority: medium
ms.prod: partner-customer-administration
doc_type: resourcePageType
---

# partnerSecurityAlert resource type

Namespace: microsoft.graph.partner.security

This resource represents a security alert or a vulnerability of a CSP partner's customer that the partner has to be made aware of for further action.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get partnerSecurityAlert](../api/partnerSecurityAlert-get.md)|[partnerSecurityAlert](partnerSecurityAlert.md)|Read the properties and relationships of a **partnerSecurityAlert** object.|
|[List partnerSecurityAlert](../api/partnerSecurityAlert-list.md)|[partnerSecurityAlert](partnerSecurityAlert.md) collection|Get a list of the **partnerSecurityAlert** objects and their properties.|
|[Update partnerSecurityAlert](../api/partnerSecurityAlert-update.md)|[partnerSecurityAlert](partnerSecurityAlert.md)|Update the properties of a **partnerSecurityAlert** object.|



## Properties
|Property|Type|Description|
|:---|:---|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|id|String| Unique identifier to represent the alert.|
|displayName|String| rief identifying string value describing the alert.|
|description|String| String value describing each alert.|
|status|[microsoft.graph.security.securityAlertStatus](#securityalertstatus-values)| The status of the alert. Possible values are: `active`, `resolved`, `investigating`, `unknownFutureValue`.|
|severity|[microsoft.graph.partner.security.securityAlertSeverity](#securityalertseverity-values)| Indicates the possible impact on assets. The higher the severity the bigger the impact. Typically higher severity items require the most immediate attention. Possible values are: `informational`, `high`, `medium`, `low`,`unknownFutureValue`.|
|confidenceLevel|[microsoft.graph.partner.security.securityAlertConfidence](#securityalertseverity-values)| Specifies the confidence in the alert. Possible values are: `low`, `medium`, `high`, `unknownFutureValue`.|
|customerTenantId|String| The impacted customer tenant associated with the alert.|
|valueAddedResellerTenantId|String| The  value added reseller tenant associated with the partner tenant and customer tenant.|
|subscriptionId|String| The subscription associated with the alert for the customer.|
|catalogOfferId|String| The modern offer category ID of the subscription.|
|detectedDateTime|DateTimeOffset| Time when the alert was detected or created.|
|firstObservedDateTime|DateTimeOffset| Time of earliest activity associated with the alert.|
|lastObservedDateTime|DateTimeOffset| Time of latest activity associated with the alert.|
|resolvedOnDateTime|DateTimeOffset| Time when the alert was resolved.|
|resolvedReason|[microsoft.graph.partner.security.securityAlertResolvedReason](#securityalertresolvedreason-values)| The reason provided by the partner for addressing the alert. Possible values are: `legitimate`, `ignore`, `fraud`,`unknownFutureValue`.|
|resolvedBy|String| The upn of the partner user who resolved the alert.|
|alertType|String| The type of vulnerability impacting the customer due to this alert. |
|isTest|Boolean| Indicates whether an alert is test alert or not.|
|affectedResources|[microsoft.graph.partner.security.affectedResource](#affectedresource) collection| The list of resources affected. Affected resources might be empty for different service source.|
|activityLogs|[microsoft.graph.partner.security.activityLog](#activitylog) collection| The activity logs of alert status transitions by partner user.|
|additionalDetails|[microsoft.graph.partner.security.additionalDataDictionary](#additionaldatadictionary) collection| A bag of custom fields that should be part of the alert that provide more context about the vulnerability to the user.|


### affectedResource

Contains details of the resources affected by the security alert.

##### Properties

| Property      | Type     | Description                                                                                               |
| ------------- | -------- | --------------------------------------------------------------------------------------------------------- |
| resourceId | string | A string representing the resource path of the affected by the security alert. |
| resourceType | string | A string representing the type of resource. |

### additionalDataDictionary

A bag of name-value pairs value pairs which contain additional details about the alert.

### activityLog

Represents the activity by a partner and contains details of the state transitions, by whom and when.

##### Properties

| Property       | Type                                                                      | Description                             |
| -------------- | ------------------------------------------------------------------------- | --------------------------------------- |
| statusFrom | [`microsoft.graph.partner.security.securityAlertStatus)`](#securityalertstatus-values) | The status of the alert before the status update activity by partner. |
| statusTo | [`microsoft.graph.partner.security.securityAlertStatus)`](#securityalertstatus-values) | The status of the alert after the status update activity by partner. |
| updatedBy | String | The upn of the partner user who did the status update activity. This is set by the system and cannot be set by the caller. |
| updatedDateTime | DateTimeOffset | The date and time for the status update activity. This is set by the system and cannot be set by the caller. |


### securityAlertResolvedReason values

The reason provided by partner user why a security alert was resolved.

| Value             | Description                                                                                                      |
| ----------------- | ---------------------------------------------------------------------------------------------------------------- |
| legitimate | Set by the partner to indicate that the reason to resolve the security alert is that the alert does not indicate threat and the activity was legitimate.  |
| ignore        | Set by the partner to indicate that the reason to resolve the security alert is that the alert threat can be ignored. |
| fraud       | Set by the partner to indicate that the reason to resolve the security alert is a threat but it is mitigated.                                          |

### securityAlertStatus values

The status of the alert.

| Value             | Description                                                                                                      |
| ----------------- | ---------------------------------------------------------------------------------------------------------------- |
| active | The alert is active and ongoing.  |
| resolved         | The alert is mitigated and resolved by partner. |
| investigating       | The alert is being investigated by partner.
| unknownFutureValue       | Evolvable enumeration sentinel value. Don't use. |

### securityAlertSeverity values

Specifies the possible scale of impact on assets. The higher the severity the bigger the impact.

| Value             | Description                                                                                                      |
| ----------------- | ---------------------------------------------------------------------------------------------------------------- |
| informational | Advisory or notification.  |
| high       | High.
| medium       | Medium.
| low       | Low.
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |

## Relationships
None.

## JSON representation
Here's a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.partner.security",
  "openType": false
}
-->
``` json
{
    "@odata.type": "#microsoft.graph.partner.security.partnerSecurityAlert",
    "id": "String (identifier)",
    "status": "String",
    "severity": "String",
    "confidenceLevel": "String",
    "displayName": "String",
    "description": "String",
    "detectedDateTime": "String (timestamp)",
    "firstObservedDateTime": "String (timestamp)",
    "lastObservedDateTime": "String (timestamp)",
    "resolvedOnDateTime": "String (timestamp)",
    "alertType": "String",
    "resolvedReason": "String",
    "resolvedBy": "String",
    "customerTenantId": "String",
    "subscriptionId": "String",
    "valueAddedResellerTenantId": "String",
    "additionalDetails": {
       "@odata.type": "microsoft.graph.partner.security.additionalDataDictionary"  
    },
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
    "catalogOfferId": "String" ,     
    "isTest": "Boolean"
}
```
