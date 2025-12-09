---
title: "deviceManagementExchangeOnPremisesPolicy resource type"
description: "Singleton entity which represents the Exchange OnPremises policy configured for a tenant."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceManagementExchangeOnPremisesPolicy resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Singleton entity which represents the Exchange OnPremises policy configured for a tenant.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceManagementExchangeOnPremisesPolicy](../api/intune-onboarding-devicemanagementexchangeonpremisespolicy-get.md)|[deviceManagementExchangeOnPremisesPolicy](../resources/intune-onboarding-devicemanagementexchangeonpremisespolicy.md)|Read properties and relationships of the [deviceManagementExchangeOnPremisesPolicy](../resources/intune-onboarding-devicemanagementexchangeonpremisespolicy.md) object.|
|[Update deviceManagementExchangeOnPremisesPolicy](../api/intune-onboarding-devicemanagementexchangeonpremisespolicy-update.md)|[deviceManagementExchangeOnPremisesPolicy](../resources/intune-onboarding-devicemanagementexchangeonpremisespolicy.md)|Update the properties of a [deviceManagementExchangeOnPremisesPolicy](../resources/intune-onboarding-devicemanagementexchangeonpremisespolicy.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String||
|notificationContent|Binary|Notification text that will be sent to users quarantined by this policy. This is UTF8 encoded byte array HTML.|
|defaultAccessLevel|[deviceManagementExchangeAccessLevel](../resources/intune-onboarding-devicemanagementexchangeaccesslevel.md)|Default access state in Exchange. This rule applies globally to the entire Exchange organization. The possible values are: `none`, `allow`, `block`, `quarantine`.|
|accessRules|[deviceManagementExchangeAccessRule](../resources/intune-onboarding-devicemanagementexchangeaccessrule.md) collection|The list of device access rules in Exchange. The access rules apply globally to the entire Exchange organization|
|knownDeviceClasses|[deviceManagementExchangeDeviceClass](../resources/intune-onboarding-devicemanagementexchangedeviceclass.md) collection|The list of device classes known to Exchange|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|conditionalAccessSettings|[onPremisesConditionalAccessSettings](../resources/intune-onboarding-onpremisesconditionalaccesssettings.md)|The Exchange on premises conditional access settings. On premises conditional access will require devices to be both enrolled and compliant for mail access|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagementExchangeOnPremisesPolicy"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementExchangeOnPremisesPolicy",
  "id": "String (identifier)",
  "notificationContent": "binary",
  "defaultAccessLevel": "String",
  "accessRules": [
    {
      "@odata.type": "microsoft.graph.deviceManagementExchangeAccessRule",
      "deviceClass": {
        "@odata.type": "microsoft.graph.deviceManagementExchangeDeviceClass",
        "name": "String",
        "type": "String"
      },
      "accessLevel": "String"
    }
  ],
  "knownDeviceClasses": [
    {
      "@odata.type": "microsoft.graph.deviceManagementExchangeDeviceClass",
      "name": "String",
      "type": "String"
    }
  ]
}
```