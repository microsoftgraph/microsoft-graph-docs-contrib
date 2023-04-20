---
title: "deviceManagementConfigurationSettingGroupCollectionDefinition resource type"
description: "Not yet documented"
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagementConfigurationSettingGroupCollectionDefinition resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Not yet documented


Inherits from [deviceManagementConfigurationSettingGroupDefinition](../resources/intune-shared-devicemanagementconfigurationsettinggroupdefinition.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceManagementConfigurationSettingGroupCollectionDefinitions](../api/intune-mam-devicemanagementconfigurationsettinggroupcollectiondefinition-list.md)|[deviceManagementConfigurationSettingGroupCollectionDefinition](../resources/intune-mam-devicemanagementconfigurationsettinggroupcollectiondefinition.md) collection|List properties and relationships of the [deviceManagementConfigurationSettingGroupCollectionDefinition](../resources/intune-mam-devicemanagementconfigurationsettinggroupcollectiondefinition.md) objects.|
|[Get deviceManagementConfigurationSettingGroupCollectionDefinition](../api/intune-mam-devicemanagementconfigurationsettinggroupcollectiondefinition-get.md)|[deviceManagementConfigurationSettingGroupCollectionDefinition](../resources/intune-mam-devicemanagementconfigurationsettinggroupcollectiondefinition.md)|Read properties and relationships of the [deviceManagementConfigurationSettingGroupCollectionDefinition](../resources/intune-mam-devicemanagementconfigurationsettinggroupcollectiondefinition.md) object.|
|[Create deviceManagementConfigurationSettingGroupCollectionDefinition](../api/intune-mam-devicemanagementconfigurationsettinggroupcollectiondefinition-create.md)|[deviceManagementConfigurationSettingGroupCollectionDefinition](../resources/intune-mam-devicemanagementconfigurationsettinggroupcollectiondefinition.md)|Create a new [deviceManagementConfigurationSettingGroupCollectionDefinition](../resources/intune-mam-devicemanagementconfigurationsettinggroupcollectiondefinition.md) object.|
|[Delete deviceManagementConfigurationSettingGroupCollectionDefinition](../api/intune-mam-devicemanagementconfigurationsettinggroupcollectiondefinition-delete.md)|None|Deletes a [deviceManagementConfigurationSettingGroupCollectionDefinition](../resources/intune-mam-devicemanagementconfigurationsettinggroupcollectiondefinition.md).|
|[Update deviceManagementConfigurationSettingGroupCollectionDefinition](../api/intune-mam-devicemanagementconfigurationsettinggroupcollectiondefinition-update.md)|[deviceManagementConfigurationSettingGroupCollectionDefinition](../resources/intune-mam-devicemanagementconfigurationsettinggroupcollectiondefinition.md)|Update the properties of a [deviceManagementConfigurationSettingGroupCollectionDefinition](../resources/intune-mam-devicemanagementconfigurationsettinggroupcollectiondefinition.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|applicability|[deviceManagementConfigurationSettingApplicability](../resources/intune-shared-devicemanagementconfigurationsettingapplicability.md)|Details which device setting is applicable on Inherited from [deviceManagementConfigurationSettingDefinition](../resources/intune-shared-devicemanagementconfigurationsettingdefinition.md)|
|accessTypes|[deviceManagementConfigurationSettingAccessTypes](../resources/intune-shared-devicemanagementconfigurationsettingaccesstypes.md)|Read/write access mode of the setting Inherited from [deviceManagementConfigurationSettingDefinition](../resources/intune-shared-devicemanagementconfigurationsettingdefinition.md). Possible values are: `none`, `add`, `copy`, `delete`, `get`, `replace`, `execute`.|
|keywords|String collection|Tokens which to search settings on Inherited from [deviceManagementConfigurationSettingDefinition](../resources/intune-shared-devicemanagementconfigurationsettingdefinition.md)|
|infoUrls|String collection|List of links more info for the setting can be found at Inherited from [deviceManagementConfigurationSettingDefinition](../resources/intune-shared-devicemanagementconfigurationsettingdefinition.md)|
|occurrence|[deviceManagementConfigurationSettingOccurrence](../resources/intune-shared-devicemanagementconfigurationsettingoccurrence.md)|Indicates whether the setting is required or not Inherited from [deviceManagementConfigurationSettingDefinition](../resources/intune-shared-devicemanagementconfigurationsettingdefinition.md)|
|baseUri|String|Base CSP Path Inherited from [deviceManagementConfigurationSettingDefinition](../resources/intune-shared-devicemanagementconfigurationsettingdefinition.md)|
|offsetUri|String|Offset CSP Path from Base Inherited from [deviceManagementConfigurationSettingDefinition](../resources/intune-shared-devicemanagementconfigurationsettingdefinition.md)|
|rootDefinitionId|String|Root setting definition if the setting is a child setting. Inherited from [deviceManagementConfigurationSettingDefinition](../resources/intune-shared-devicemanagementconfigurationsettingdefinition.md)|
|categoryId|String|Specifies the area group under which the setting is configured in a specified configuration service provider (CSP) Inherited from [deviceManagementConfigurationSettingDefinition](../resources/intune-shared-devicemanagementconfigurationsettingdefinition.md)|
|settingUsage|[deviceManagementConfigurationSettingUsage](../resources/intune-shared-devicemanagementconfigurationsettingusage.md)|Setting type, for example, configuration and compliance Inherited from [deviceManagementConfigurationSettingDefinition](../resources/intune-shared-devicemanagementconfigurationsettingdefinition.md). Possible values are: `none`, `configuration`, `compliance`.|
|uxBehavior|[deviceManagementConfigurationControlType](../resources/intune-shared-devicemanagementconfigurationcontroltype.md)|Setting control type representation in the UX Inherited from [deviceManagementConfigurationSettingDefinition](../resources/intune-shared-devicemanagementconfigurationsettingdefinition.md). Possible values are: `default`, `dropdown`, `smallTextBox`, `largeTextBox`, `toggle`, `multiheaderGrid`, `contextPane`.|
|visibility|[deviceManagementConfigurationSettingVisibility](../resources/intune-shared-devicemanagementconfigurationsettingvisibility.md)|Setting visibility scope to UX Inherited from [deviceManagementConfigurationSettingDefinition](../resources/intune-shared-devicemanagementconfigurationsettingdefinition.md). Possible values are: `none`, `settingsCatalog`, `template`.|
|referredSettingInformationList|[deviceManagementConfigurationReferredSettingInformation](../resources/intune-shared-devicemanagementconfigurationreferredsettinginformation.md) collection|List of referred setting information. Inherited from [deviceManagementConfigurationSettingDefinition](../resources/intune-shared-devicemanagementconfigurationsettingdefinition.md)|
|id|String|Identifier for item Inherited from [deviceManagementConfigurationSettingDefinition](../resources/intune-shared-devicemanagementconfigurationsettingdefinition.md)|
|description|String|Description of the item Inherited from [deviceManagementConfigurationSettingDefinition](../resources/intune-shared-devicemanagementconfigurationsettingdefinition.md)|
|helpText|String|Help text of the item Inherited from [deviceManagementConfigurationSettingDefinition](../resources/intune-shared-devicemanagementconfigurationsettingdefinition.md)|
|name|String|Name of the item Inherited from [deviceManagementConfigurationSettingDefinition](../resources/intune-shared-devicemanagementconfigurationsettingdefinition.md)|
|displayName|String|Display name of the item Inherited from [deviceManagementConfigurationSettingDefinition](../resources/intune-shared-devicemanagementconfigurationsettingdefinition.md)|
|version|String|Item Version Inherited from [deviceManagementConfigurationSettingDefinition](../resources/intune-shared-devicemanagementconfigurationsettingdefinition.md)|
|childIds|String collection|Dependent child settings to this group of settings Inherited from [deviceManagementConfigurationSettingGroupDefinition](../resources/intune-shared-devicemanagementconfigurationsettinggroupdefinition.md)|
|dependentOn|[deviceManagementConfigurationDependentOn](../resources/intune-shared-devicemanagementconfigurationdependenton.md) collection|List of Dependencies for the setting group Inherited from [deviceManagementConfigurationSettingGroupDefinition](../resources/intune-shared-devicemanagementconfigurationsettinggroupdefinition.md)|
|dependedOnBy|[deviceManagementConfigurationSettingDependedOnBy](../resources/intune-shared-devicemanagementconfigurationsettingdependedonby.md) collection|List of child settings that depend on this setting Inherited from [deviceManagementConfigurationSettingGroupDefinition](../resources/intune-shared-devicemanagementconfigurationsettinggroupdefinition.md)|
|maximumCount|Int32|Maximum number of setting group count in the collection|
|minimumCount|Int32|Minimum number of setting group count in the collection|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingGroupCollectionDefinition"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementConfigurationSettingGroupCollectionDefinition",
  "applicability": {
    "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingApplicability",
    "description": "String",
    "platform": "String",
    "deviceMode": "String",
    "technologies": "String"
  },
  "accessTypes": "String",
  "keywords": [
    "String"
  ],
  "infoUrls": [
    "String"
  ],
  "occurrence": {
    "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingOccurrence",
    "minDeviceOccurrence": 1024,
    "maxDeviceOccurrence": 1024
  },
  "baseUri": "String",
  "offsetUri": "String",
  "rootDefinitionId": "String",
  "categoryId": "String",
  "settingUsage": "String",
  "uxBehavior": "String",
  "visibility": "String",
  "referredSettingInformationList": [
    {
      "@odata.type": "microsoft.graph.deviceManagementConfigurationReferredSettingInformation",
      "settingDefinitionId": "String"
    }
  ],
  "id": "String (identifier)",
  "description": "String",
  "helpText": "String",
  "name": "String",
  "displayName": "String",
  "version": "String",
  "childIds": [
    "String"
  ],
  "dependentOn": [
    {
      "@odata.type": "microsoft.graph.deviceManagementConfigurationDependentOn",
      "dependentOn": "String",
      "parentSettingId": "String"
    }
  ],
  "dependedOnBy": [
    {
      "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingDependedOnBy",
      "dependedOnBy": "String",
      "required": true
    }
  ],
  "maximumCount": 1024,
  "minimumCount": 1024
}
```
