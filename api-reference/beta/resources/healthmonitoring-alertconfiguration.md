---
title: "alertConfiguration resource type"
description: "Represents the configuration of an alert type defining behavior that occurs when an alert is created in Microsoft Entra Health monitoring."
author: "huatang92"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# alertConfiguration resource type

Namespace: microsoft.graph.healthMonitoring

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the configuration of an alert type defining behavior that occurs when an alert is created in Microsoft Entra Health monitoring. For more information about alert configurations, see [What is Microsoft Entra Health?](/entra/identity/monitoring-health/concept-microsoft-entra-health).

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/healthmonitoring-healthmonitoringroot-list-alertconfigurations.md)|[microsoft.graph.healthMonitoring.alertConfiguration](../resources/healthmonitoring-alertconfiguration.md) collection|Get a list of the [microsoft.graph.healthMonitoring.alertConfiguration](../resources/healthmonitoring-alertconfiguration.md) objects and their properties.|
|[Get](../api/healthmonitoring-alertconfiguration-get.md)|[microsoft.graph.healthMonitoring.alertConfiguration](../resources/healthmonitoring-alertconfiguration.md)|Read the properties and relationships of a [microsoft.graph.healthMonitoring.alertConfiguration](../resources/healthmonitoring-alertconfiguration.md) object.|
|[Update](../api/healthmonitoring-alertconfiguration-update.md)|[microsoft.graph.healthMonitoring.alertConfiguration](../resources/healthmonitoring-alertconfiguration.md)|Update the properties of a [microsoft.graph.healthMonitoring.alertConfiguration](../resources/healthmonitoring-alertconfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|emailNotificationConfigurations|[microsoft.graph.healthMonitoring.emailNotificationConfiguration](../resources/healthmonitoring-emailnotificationconfiguration.md) collection|Defines the recipients of email notifications for an alert type. Currently, only one email notification configuration is supported for an alert configuration, meaning only one group can receive notifications for an alert type.|
|id|String|The unique identifier of this alert configuration under the associated tenant. For example: `mfaSignInFailure`, `managedDeviceSignInFailure`. The possible values correspond to the values of **alertType** for an [alert](../resources/healthmonitoring-alert.md) object. Inherited from [microsoft.graph.entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.healthMonitoring.alertConfiguration",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.healthMonitoring.alertConfiguration",
  "id": "String (identifier)",
  "emailNotificationConfigurations": [
    {
      "@odata.type": "microsoft.graph.healthMonitoring.emailNotificationConfiguration"
    }
  ]
}
```

