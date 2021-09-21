---
title: "deviceManagementConfigurationPolicyPolicySetItem resource type"
description: "A class containing the properties used for DeviceManagementConfiguration PolicySetItem."
author: "dougeby"
ms.localizationpriority: medium
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagementConfigurationPolicyPolicySetItem resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A class containing the properties used for DeviceManagementConfiguration PolicySetItem.


Inherits from [policySetItem](../resources/intune-policyset-policysetitem.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceManagementConfigurationPolicyPolicySetItems](../api/intune-policyset-devicemanagementconfigurationpolicypolicysetitem-list.md)|[deviceManagementConfigurationPolicyPolicySetItem](../resources/intune-policyset-devicemanagementconfigurationpolicypolicysetitem.md) collection|List properties and relationships of the [deviceManagementConfigurationPolicyPolicySetItem](../resources/intune-policyset-devicemanagementconfigurationpolicypolicysetitem.md) objects.|
|[Get deviceManagementConfigurationPolicyPolicySetItem](../api/intune-policyset-devicemanagementconfigurationpolicypolicysetitem-get.md)|[deviceManagementConfigurationPolicyPolicySetItem](../resources/intune-policyset-devicemanagementconfigurationpolicypolicysetitem.md)|Read properties and relationships of the [deviceManagementConfigurationPolicyPolicySetItem](../resources/intune-policyset-devicemanagementconfigurationpolicypolicysetitem.md) object.|
|[Create deviceManagementConfigurationPolicyPolicySetItem](../api/intune-policyset-devicemanagementconfigurationpolicypolicysetitem-create.md)|[deviceManagementConfigurationPolicyPolicySetItem](../resources/intune-policyset-devicemanagementconfigurationpolicypolicysetitem.md)|Create a new [deviceManagementConfigurationPolicyPolicySetItem](../resources/intune-policyset-devicemanagementconfigurationpolicypolicysetitem.md) object.|
|[Delete deviceManagementConfigurationPolicyPolicySetItem](../api/intune-policyset-devicemanagementconfigurationpolicypolicysetitem-delete.md)|None|Deletes a [deviceManagementConfigurationPolicyPolicySetItem](../resources/intune-policyset-devicemanagementconfigurationpolicypolicysetitem.md).|
|[Update deviceManagementConfigurationPolicyPolicySetItem](../api/intune-policyset-devicemanagementconfigurationpolicypolicysetitem-update.md)|[deviceManagementConfigurationPolicyPolicySetItem](../resources/intune-policyset-devicemanagementconfigurationpolicypolicysetitem.md)|Update the properties of a [deviceManagementConfigurationPolicyPolicySetItem](../resources/intune-policyset-devicemanagementconfigurationpolicypolicysetitem.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the PolicySetItem. Inherited from [policySetItem](../resources/intune-policyset-policysetitem.md)|
|createdDateTime|DateTimeOffset|Creation time of the PolicySetItem. Inherited from [policySetItem](../resources/intune-policyset-policysetitem.md)|
|lastModifiedDateTime|DateTimeOffset|Last modified time of the PolicySetItem. Inherited from [policySetItem](../resources/intune-policyset-policysetitem.md)|
|payloadId|String|PayloadId of the PolicySetItem. Inherited from [policySetItem](../resources/intune-policyset-policysetitem.md)|
|itemType|String|policySetType of the PolicySetItem. Inherited from [policySetItem](../resources/intune-policyset-policysetitem.md)|
|displayName|String|DisplayName of the PolicySetItem. Inherited from [policySetItem](../resources/intune-policyset-policysetitem.md)|
|status|[policySetStatus](../resources/intune-policyset-policysetstatus.md)|Status of the PolicySetItem. Inherited from [policySetItem](../resources/intune-policyset-policysetitem.md). Possible values are: `unknown`, `validating`, `partialSuccess`, `success`, `error`, `notAssigned`.|
|errorCode|[errorCode](../resources/intune-policyset-errorcode.md)|Error code if any occured. Inherited from [policySetItem](../resources/intune-policyset-policysetitem.md). Possible values are: `noError`, `unauthorized`, `notFound`, `deleted`.|
|guidedDeploymentTags|String collection|Tags of the guided deployment Inherited from [policySetItem](../resources/intune-policyset-policysetitem.md)|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagementConfigurationPolicyPolicySetItem"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementConfigurationPolicyPolicySetItem",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "payloadId": "String",
  "itemType": "String",
  "displayName": "String",
  "status": "String",
  "errorCode": "String",
  "guidedDeploymentTags": [
    "String"
  ]
}
```



