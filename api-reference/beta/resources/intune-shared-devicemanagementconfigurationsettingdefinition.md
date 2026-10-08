---
title: "deviceManagementConfigurationSettingDefinition resource type"
description: "Not yet documented"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceManagementConfigurationSettingDefinition resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Not yet documented

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceManagementConfigurationSettingDefinitions](../api/intune-mam-devicemanagementconfigurationsettingdefinition-list.md)|[deviceManagementConfigurationSettingDefinition](../resources/intune-shared-devicemanagementconfigurationsettingdefinition.md) collection|List properties and relationships of the [deviceManagementConfigurationSettingDefinition](../resources/intune-shared-devicemanagementconfigurationsettingdefinition.md) objects.|
|[Get deviceManagementConfigurationSettingDefinition](../api/intune-mam-devicemanagementconfigurationsettingdefinition-get.md)|[deviceManagementConfigurationSettingDefinition](../resources/intune-shared-devicemanagementconfigurationsettingdefinition.md)|Read properties and relationships of the [deviceManagementConfigurationSettingDefinition](../resources/intune-shared-devicemanagementconfigurationsettingdefinition.md) object.|
|[Create deviceManagementConfigurationSettingDefinition](../api/intune-mam-devicemanagementconfigurationsettingdefinition-create.md)|[deviceManagementConfigurationSettingDefinition](../resources/intune-shared-devicemanagementconfigurationsettingdefinition.md)|Create a new [deviceManagementConfigurationSettingDefinition](../resources/intune-shared-devicemanagementconfigurationsettingdefinition.md) object.|
|[Delete deviceManagementConfigurationSettingDefinition](../api/intune-mam-devicemanagementconfigurationsettingdefinition-delete.md)|None|Deletes a [deviceManagementConfigurationSettingDefinition](../resources/intune-shared-devicemanagementconfigurationsettingdefinition.md).|
|[Update deviceManagementConfigurationSettingDefinition](../api/intune-mam-devicemanagementconfigurationsettingdefinition-update.md)|[deviceManagementConfigurationSettingDefinition](../resources/intune-shared-devicemanagementconfigurationsettingdefinition.md)|Update the properties of a [deviceManagementConfigurationSettingDefinition](../resources/intune-shared-devicemanagementconfigurationsettingdefinition.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|applicability|[deviceManagementConfigurationSettingApplicability](../resources/intune-shared-devicemanagementconfigurationsettingapplicability.md)|Details which device setting is applicable on|
|accessTypes|[deviceManagementConfigurationSettingAccessTypes](../resources/intune-shared-devicemanagementconfigurationsettingaccesstypes.md)|Read/write access mode of the setting. The possible values are: `none`, `add`, `copy`, `delete`, `get`, `replace`, `execute`.|
|keywords|String collection|Tokens which to search settings on|
|infoUrls|String collection|List of links more info for the setting can be found at|
|occurrence|[deviceManagementConfigurationSettingOccurrence](../resources/intune-shared-devicemanagementconfigurationsettingoccurrence.md)|Indicates whether the setting is required or not|
|baseUri|String|Base CSP Path|
|offsetUri|String|Offset CSP Path from Base|
|rootDefinitionId|String|Root setting definition if the setting is a child setting.|
|categoryId|String|Specifies the area group under which the setting is configured in a specified configuration service provider (CSP)|
|settingUsage|[deviceManagementConfigurationSettingUsage](../resources/intune-shared-devicemanagementconfigurationsettingusage.md)|Setting type, for example, configuration and compliance. The possible values are: `none`, `configuration`, `compliance`.|
|uxBehavior|[deviceManagementConfigurationControlType](../resources/intune-shared-devicemanagementconfigurationcontroltype.md)|Setting control type representation in the UX. The possible values are: `default`, `dropdown`, `smallTextBox`, `largeTextBox`, `toggle`, `multiheaderGrid`, `contextPane`.|
|visibility|[deviceManagementConfigurationSettingVisibility](../resources/intune-shared-devicemanagementconfigurationsettingvisibility.md)|Setting visibility scope to UX. The possible values are: `none`, `settingsCatalog`, `template`.|
|referredSettingInformationList|[deviceManagementConfigurationReferredSettingInformation](../resources/intune-shared-devicemanagementconfigurationreferredsettinginformation.md) collection|List of referred setting information.|
|id|String|Identifier for item|
|description|String|Description of the item|
|helpText|String|Help text of the item|
|name|String|Name of the item|
|displayName|String|Display name of the item|
|version|String|Item Version|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingDefinition"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementConfigurationSettingDefinition",
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
  "version": "String"
}
```