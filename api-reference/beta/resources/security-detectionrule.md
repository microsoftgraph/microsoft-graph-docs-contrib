---
title: "detectionRule resource type"
description: "Represents a custom detection rule written in Advanced hunting to automatically recognize security events when they occur, and to trigger alerts and response actions."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 06/06/2024
---

# detectionRule resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a custom detection rule written in **Advanced hunting** to automatically recognize security events when they occur, and to trigger alerts and response actions.

Custom detection rules are types of protection rules that you can design and tweak by using [advanced hunting](../api/security-security-runhuntingquery.md) queries.
These rules let you proactively monitor various events and system states, including suspected breach activity and misconfigured endpoints.
A custom detection rule automatically recognizes security events when they occur, and triggers alerts and response actions.
You can set them to run at regular intervals, generating alerts and taking response actions whenever matches occur.

Inherits from [microsoft.graph.security.protectionRule](../resources/security-protectionrule.md).

## Methods
| Method                                                                       | Return type                                                                                 | Description                                                                                                                         |
|:-----------------------------------------------------------------------------|:--------------------------------------------------------------------------------------------|:------------------------------------------------------------------------------------------------------------------------------------|
| [List](../api/security-detectionrule-list.md)                 | [microsoft.graph.security.detectionRule](../resources/security-detectionrule.md) collection | Get a list of the [microsoft.graph.security.detectionRule](../resources/security-detectionrule.md) objects and their properties.    |
| [Get](../api/security-detectionrule-get.md)                    | [microsoft.graph.security.detectionRule](../resources/security-detectionrule.md)            | Read the properties and relationships of a [microsoft.graph.security.detectionRule](../resources/security-detectionrule.md) object. |
| [Create](../api/security-detectionrule-post-detectionrules.md) | [microsoft.graph.security.detectionRule](../resources/security-detectionrule.md)            | Create a [microsoft.graph.security.detectionRule](../resources/security-detectionrule.md).                                          |
| [Update](../api/security-detectionrule-update.md)              | [microsoft.graph.security.detectionRule](../resources/security-detectionrule.md)            | Update the properties of a [microsoft.graph.security.detectionRule](../resources/security-detectionrule.md) object.                 |
| [Delete](../api/security-detectionrule-delete.md)              | None                                                                                        | Delete a [microsoft.graph.security.detectionRule](../resources/security-detectionrule.md) object.                                   |

## Properties
| Property             | Type                                                                                 | Description                                                                                                                                               |
|:---------------------|:-------------------------------------------------------------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------|
| createdBy            | String                                                                               | Name of the user or application that created the rule. Inherited from [microsoft.graph.security.protectionRule](../resources/security-protectionrule.md). |
| createdDateTime      | DateTimeOffset                                                                       | Timestamp of rule creation. Inherited from [microsoft.graph.security.protectionRule](../resources/security-protectionrule.md).                            |
| detectionAction      | [microsoft.graph.security.detectionAction](../resources/security-detectionaction.md) | Complex type representing the actions taken when a detection is made by this rule.                                                                        |
| displayName          | String                                                                               | Name of the rule. Inherited from [microsoft.graph.security.protectionRule](../resources/security-protectionrule.md).                                      |
| id                   | String                                                                               | Unique identifier to represent the rule. Inherited from [microsoft.graph.entity](../resources/entity.md).                                                 |
| isEnabled            | Boolean                                                                              | Indicates whether rule is turned on for the tenant. Inherited from [microsoft.graph.security.protectionRule](../resources/security-protectionrule.md).    |
| lastModifiedBy       | String                                                                               | Name of user or application who last updated the rule. Inherited from [microsoft.graph.security.protectionRule](../resources/security-protectionrule.md). |
| lastModifiedDateTime | DateTimeOffset                                                                       | Timestamp of when the rule was last updated. Inherited from [microsoft.graph.security.protectionRule](../resources/security-protectionrule.md).           |
| detectorId           | String                                                                               | The ID of the detector that triggered the alert. Also see the 'detectorId' field in [microsoft.graph.security.alert](../resources/security-alert.md).     |
| lastRunDetails       | [microsoft.graph.security.runDetails](../resources/security-rundetails.md)           | Complex type holding details about the last run of this rule.                                                                                             |
| queryCondition       | [microsoft.graph.security.queryCondition](../resources/security-querycondition.md)   | Complex type holding data about the advanced hunting query of this rule.                                                                                  |
| schedule             | [microsoft.graph.security.ruleSchedule](../resources/security-ruleschedule.md)       | Complex type holding data about the triggering schedule of this rule.                                                                                     |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.detectionRule",
  "baseType": "microsoft.graph.security.protectionRule",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.detectionRule",
  "id": "String (identifier)",
  "displayName": "String",
  "isEnabled": "Boolean",
  "detectorId": "String",
  "createdBy": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": "String",
  "queryCondition": {
    "@odata.type": "microsoft.graph.security.queryCondition"
  },
  "schedule": {
    "@odata.type": "microsoft.graph.security.ruleSchedule"
  },
  "lastRunDetails": {
    "@odata.type": "microsoft.graph.security.runDetails"
  },
  "detectionAction": {
    "@odata.type": "microsoft.graph.security.detectionAction"
  }
}
```

